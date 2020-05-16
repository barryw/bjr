# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobApiController, type: :controller do
  describe 'POST #run_now' do
    it 'receives a 409 when trying to run a job that is already running' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user, running: true)
      post :run_now, params: { id: job.id }
      expect(response).to have_http_status(:conflict)
    end

    it 'receives a 200 when queuing a job to run now and it is not already running' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      post :run_now, params: { id: job.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST #create' do
    it 'returns http failure' do
      post :create, params: { 'name': 'foo' }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http failure from duplicated name' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      post :create, params: { 'name': job.name, 'cron': '0 * * * *', command: 'ls -l' }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http conflict when it fails to create a job' do
      user = create(:admin1)
      authenticated_header(user)
      expect(Job).to receive(:create!).and_raise('The database is misbehaving.')
      post :create, params: { 'name': 'I will fail', 'cron': '0 * * * *', command: 'ls -l' }
      expect(response).to have_http_status(:conflict)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(409)
      expect(json['is_error']).to be true
    end

    it 'returns http success' do
      authenticated_header(create(:admin1))
      post :create, params: { 'name': 'job', 'cron': '0 10 * * *', command: 'ls -ltr', timezone: 'EST' }
      expect(response).to have_http_status(:success)
    end

    it 'fails properly on bad timezones' do
      authenticated_header(create(:admin1))
      post :create, params: { 'name': 'job', 'cron': '0 10 * * *', command: 'ls -ltr', timezone: 'EDT' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns http success and tags a job' do
      authenticated_header(create(:admin1))
      post :create, params: { 'name': 'job', 'cron': '0 10 * * *', command: 'ls -ltr', timezone: 'EST', tags: 'customer1,job1' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(201)
      expect(json['object']['tags'].length).to eq(2)
      expect(json['object']['tags']).to include('customer1')
      expect(json['object']['tags']).to include('job1')
    end

    it 'returns http success and creates jobs that run in the specified timezone' do
      Time.zone = 'Samoa'
      today = Time.current.in_time_zone('Samoa').midnight
      travel_to today - 2.minutes
      admin = create(:admin1)
      authenticated_header(admin)
      post :create, params: { name: 'job1', cron: '0 0 * * *', command: 'ls -ltr', timezone: 'Samoa' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object']['next_run']).to eq(today.as_json)
      travel_back
      Time.zone = 'UTC'
    end
  end

  describe 'PUT #update' do
    it 'returns http failure' do
      put :update, params: { 'name': 'foo', 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http failure from duplicate job name' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      job2 = create(:job2, user: user)

      put :update, params: { id: job.id, name: job2.name }
      expect(response.status).to eq(403)
    end

    it 'returns http success' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      put :update, params: { id: job.id, enabled: true }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object']['enabled']).to eq(true)
    end

    it "returns http success when it updates the job's tags" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user, tag_list: 'tag1')
      put :update, params: { id: job.id, enabled: true, tags: 'tag2' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object']['enabled']).to eq(true)
      expect(json['object']['tags']).to include('tag2')
    end

    it 'returns http conflict when it fails to update a job' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      allow_any_instance_of(Job).to receive(:save!).and_raise('The database is misbehaving.')
      put :update, params: { id: job.id, 'name': 'I will fail', 'cron': '0 * * * *', command: 'ps ax', timezone: 'UTC' }
      expect(response).to have_http_status(:conflict)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(409)
      expect(json['is_error']).to be true
    end

    it 'can enable a disabled job' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user, enabled: false)
      put :update, params: { id: job.id, enabled: true }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object']['enabled']).to eq(true)
    end

    it 'can disable an enabled job' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user, enabled: true)
      put :update, params: { id: job.id, enabled: false }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object']['enabled']).to eq(false)
    end

    it 'can disable a job by passing in an int' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user, enabled: true)
      put :update, params: { id: job.id, enabled: 0 }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object']['enabled']).to eq(false)
    end

    it 'can disable a job by passing in a string' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user, enabled: true)
      put :update, params: { id: job.id, enabled: 'false' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object']['enabled']).to eq(false)
    end
  end

  describe 'GET #index' do
    it 'returns http failure' do
      get :index
      expect(response).not_to have_http_status(:success)
    end

    it 'properly times out our JWT' do
      user = create(:admin1)
      authenticated_header(user)
      travel_to Time.current + 3601.seconds
      get :index
      expect(response).not_to have_http_status(:success)
      travel_back
    end

    it 'allows our JWT to stay live for the default duration' do
      user = create(:admin1)
      authenticated_header(user)
      travel_to Time.current + 3590.seconds
      get :index
      expect(response).to have_http_status(:success)
      travel_back
    end

    it 'returns http success' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1')
      create(:job1, user: user, name: 'job2')
      authenticated_header(user)
      get :index
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['status_code']).to eq(200)
      expect(json['is_error']).to be false
      expect(json['object'].length).to eq(2)
    end

    it 'returns http success and gets a tagged job' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', tag_list: 'tag1')
      create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['tags']).to include('tag1')
    end

    it 'returns http success and gets a tagged job on all tags' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', tag_list: 'tag1')
      create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1', incexc: 'all' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['tags']).to include('tag1')
    end

    it 'returns http success and gets a job tagged with multiple tags' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag2')
      create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1, tag2', incexc: 'all' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['tags']).to include('tag1')
      expect(json['object'][0]['tags']).to include('tag2')
    end

    it 'returns http success and does not get a job tagged with multiple tags' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag3')
      create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1, tag2', incexc: 'all' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['object'].length).to eq(0)
    end

    it 'returns http success and gets several jobs on different tags' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag2')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1, tag2', incexc: 'any' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(2)
      expect(json['object'][0]['id']).to eq(job1.id)
      expect(json['object'][1]['id']).to eq(job2.id)
      # TODO
    end

    it 'returns http success gets a job from excluded tags' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag3')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag1')
      authenticated_header(user)
      get :index, params: { tags: 'tag3', incexc: 'exclude' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job2.id)
    end

    it 'returns http success gets a job due to execute within a timeframe' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', cron: '0 0 * * *')
      authenticated_header(user)
      get :index, params: { start_date: 'yesterday', end_date: 'tomorrow' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job1.id)
    end

    it 'returns http success gets a job due to execute within a timeframe and tagged' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', cron: '0 0 * * *', tag_list: 'tag1')
      create(:job1, user: user, name: 'job2', cron: '0 0 * * *', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { start_date: 'yesterday', end_date: 'tomorrow', tags: 'tag1' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job1.id)
    end

    it 'returns http success does not get a job because it falls outside the occurrence check' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', cron: '0 0 * * *')
      create(:job1, user: user, name: 'job2', cron: '0 0 * * *')
      authenticated_header(user)
      get :index, params: { start_date: 'today at 2pm', end_date: 'today at 3pm' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(0)
    end

    it 'returns http success looking for enabled jobs' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', enabled: true)
      create(:job1, user: user, name: 'job2', enabled: false)
      authenticated_header(user)
      get :index, params: { enabled: true }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job1.id)
    end

    it 'returns http success looking for enabled jobs that are tagged and match our occurrence check' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', enabled: false, tag_list: 'tag1', cron: '0 0 * * *')
      job2 = create(:job1, user: user, name: 'job2', enabled: true, tag_list: 'tag1', cron: '0 0 * * *')
      authenticated_header(user)
      get :index, params: { enabled: true, tags: 'tag1', start_date: 'yesterday', end_date: 'tomorrow' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job2.id)
    end

    it 'returns http success looking for running jobs that are tagged and match our occurrence check' do
      user = create(:admin1)
      create(:job1, user: user, name: 'job1', running: false, tag_list: 'tag1', cron: '0 0 * * *')
      job2 = create(:job1, user: user, name: 'job2', running: true, tag_list: 'tag1', cron: '0 0 * * *')
      authenticated_header(user)
      get :index, params: { running: true, tags: 'tag1', start_date: 'yesterday', end_date: 'tomorrow' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job2.id)
    end

    it 'finds jobs by name' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'barrys-job')
      authenticated_header(user)
      get :index, params: { name: 'barry' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job1.id)
    end

    it 'tries to find a job by name and fails' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'barrys-job')
      authenticated_header(user)
      get :index, params: { name: 'jimbob' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['object'].length).to eq(0)
    end

    it 'can not get jobs for other users' do
      user1 = create(:admin1)
      user2 = create(:admin2)
      job1 = create(:job1, user: user1, name: 'barrys-job')
      job2 = create(:job1, user: user2, name: 'barrys-job')
      authenticated_header(user1)
      get :index, params: { name: 'barry' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job1.id)
    end

    it 'can search on timezone' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'Job in Eastern timezone', timezone: 'America/New_York')
      job2 = create(:job1, user: user, name: 'Job in UTC', timezone: 'UTC')
      authenticated_header(user)
      get :index, params: { search_timezone: 'UTC' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job2.id)
    end

    it 'can search on the command using a LIKE expression' do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'Sleep command job', command: 'sleep 20')
      job2 = create(:job1, user: user, name: 'Curl command job', command: 'curl https://www.example.com')
      authenticated_header(user)
      get :index, params: { command: 'sleep' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('jobarray')
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job1.id)
    end
  end

  describe 'GET #show' do
    it 'returns http failure' do
      get :show, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure because the job doesn't exist" do
      authenticated_header(create(:admin1))
      get :show, params: { 'id': 1 }
      expect(response.status).to eq(404)
      json = JSON.parse(response.body)
      expect(json['message']).to eq(I18n.t('jobs.errors.not_found'))
      expect(json['is_error']).to be true
    end

    it 'returns http success' do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      get :show, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object_type']).to eq('job')
      expect(json['status_code']).to eq(200)
      expect(json['is_error']).to be false
      expect(json['object']['id']).to eq(job.id)
      expect(json['object']['name']).to eq(job.name)
      expect(json['object']['command']).to eq(job.command)
      expect(json['object']['next_run']).not_to be_nil
    end
  end

  describe 'DELETE #destroy' do
    it 'returns http failure' do
      delete :destroy, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http success' do
      user = create(:admin1)
      job = create(:job1, user: user)
      authenticated_header(user)
      delete :destroy, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
    end

    it 'cannot delete a running job' do
      user = create(:admin1)
      job = create(:job1, user: user, running: true)
      authenticated_header(user)
      delete :destroy, params: { 'id': job.id }
      expect(response).to have_http_status(:conflict)
    end
  end

  describe 'GET #occurrences' do
    it 'returns http failure' do
      get :occurrences, params: { 'id': 1, 'end_date': Time.current }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http success for getting job occurrences' do
      user = create(:admin1)
      job1 = create(:job1, user: user, enabled: true, cron: '*/5 * * * *')
      authenticated_header(user)
      get :occurrences, params: { 'id': job1.id, 'end_date': Time.current + 1.minutes }
      expect(response).to have_http_status(:success)
    end

    it "returns http failure because we didn't specify an end date" do
      user = create(:admin1)
      job1 = create(:job1, user: user, enabled: true, cron: '0 0 * * *')
      authenticated_header(user)
      get :occurrences, params: { 'id': job1.id, 'end_date': '' }
      expect(response).not_to have_http_status(:success)
      expect(response.status).to eq(403)
      json = JSON.parse(response.body)
      expect(json['message']).to eq(I18n.t('jobs.errors.end_date_required'))
      expect(json['is_error']).to be true
      expect(json['status_code']).to eq(403)
    end
  end

  describe 'GET #runs' do
    it 'returns http failure' do
      get :runs, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http success and return 0 runs matching a bad start date' do
      user = create(:admin1)
      job = create(:job1, user: user)
      create(:successful_job_run, job: job, start_time: Time.current - 11.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 10.hours }
      json = JSON.parse(response.body)
      expect(json['object'].length).to eq(0)
    end

    it 'returns http success while trying to get runs that started after a date' do
      user = create(:admin1)
      job = create(:job1, user: user)
      create(:successful_job_run, job: job, start_time: Time.current - 11.hours)
      create(:successful_job_run, job: job, start_time: Time.current - 13.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 12.hours }
      json = JSON.parse(response.body)
      expect(json['object'].length).to eq(1)
    end

    it 'returns http success while trying to get runs that ended before a date' do
      user = create(:admin1)
      job = create(:job1, user: user)
      create(:successful_job_run, job: job, end_time: Time.current - 11.hours, start_time: Time.current - 12.hours)
      create(:successful_job_run, job: job, end_time: Time.current - 13.hours, start_time: Time.current - 12.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'end_date': Time.current - 12.hours }
      json = JSON.parse(response.body)
      expect(json['object'].length).to eq(1)
    end

    it 'returns http success while trying to get runs that started after a date and finished before a date' do
      user = create(:admin1)
      job = create(:job1, user: user)
      jr1 = create(:successful_job_run, job: job, start_time: Time.current - 3.hours, end_time: Time.current - 2.hours)
      jr2 = create(:successful_job_run, job: job, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 4.hours, 'end_date': Time.current }
      json = JSON.parse(response.body)
      expect(json['object'].length).to eq(2)
      expect(json['object'][0]['id']).to eq(jr1.id)
      expect(json['object'][1]['id']).to eq(jr2.id)
    end

    it 'returns http success while trying to get runs that succeeded' do
      user = create(:admin1)
      job = create(:job1, user: user)
      run1 = create(:successful_job_run, job: job, success: true, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      create(:successful_job_run, job: job, success: false, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 3.hours, 'end_date': Time.current, 'succeeded': true }
      json = JSON.parse(response.body)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(run1.id)
    end

    it 'returns http success while trying to get runs that failed' do
      user = create(:admin1)
      job = create(:job1, user: user)
      create(:successful_job_run, job: job, success: true, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      run2 = create(:failed_job_run, job: job, success: false, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 2.hours, 'end_date': Time.current, 'succeeded': false }
      json = JSON.parse(response.body)
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(run2.id)
    end
  end
end
