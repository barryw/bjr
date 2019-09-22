require 'rails_helper'

RSpec.describe JobApiController, type: :controller do
  describe "POST #create" do
    it "returns http failure" do
      post :create, params: { 'name': 'foo' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure from duplicated name" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      post :create, params: { 'name': job.name, 'cron': '0 * * * *', command: 'ls -l' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      authenticated_header(create(:admin1))
      post :create, params: { 'name': 'job', 'cron': '0 10 * * *', command: 'ls -ltr', timezone: 'EST' }
      expect(response).to have_http_status(:success)
    end

    it "returns http success and tags a job" do
      authenticated_header(create(:admin1))
      post :create, params: { 'name': 'job', 'cron': '0 10 * * *', command: 'ls -ltr', timezone: 'EST', tags: "customer1,job1" }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(201)
      expect(json['object']['tags'].length).to eq(2)
      expect(json['object']['tags']).to include({ 'name' => 'customer1' })
      expect(json['object']['tags']).to include({ 'name' => 'job1' })
    end
  end

  describe "POST #enable" do
    it "returns http success when we enable a job" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, enabled: false, user: user)
      post :enable, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
      job.reload
      expect(job.enabled).to be true
    end
  end

  describe "POST #disable" do
    it "returns http success when we disable a job" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, enabled: true, user: user)
      post :disable, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
      job.reload
      expect(job.enabled).to be false
    end
  end

  describe "PUT #update" do
    it "returns http failure" do
      put :update, params: { 'name': 'foo', 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure from duplicate job name" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      job2 = create(:job2, user: user)

      put :update, params: { id: job.id, name: job2.name }
      expect(response.status).to eq(403)
    end

    it "returns http success" do
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
      expect(json['object']['tags']).to include({ 'name' => 'tag2' })
    end
  end

  describe "GET #index" do
    it "returns http failure" do
      get :index
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1')
      job2 = create(:job1, user: user, name: 'job2')
      authenticated_header(user)
      get :index
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(2)
    end

    it "returns http success and gets a tagged job" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', tag_list: 'tag1')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['tags']).to include({ 'name' => 'tag1' })
    end

    it "returns http success and gets a tagged job on all tags" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', tag_list: 'tag1')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1', incexc: 'all' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['tags']).to include({ 'name' => 'tag1' })
    end

    it "returns http success and gets a job tagged with multiple tags" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag2')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1, tag2', incexc: 'all' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['tags']).to include({ 'name' => 'tag1' })
      expect(json[0]['tags']).to include({ 'name' => 'tag2' })
    end

    it "returns http success and does not get a job tagged with multiple tags" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag3')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1, tag2', incexc: 'all' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(0)
    end

    it "returns http success and gets several jobs on different tags" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag2')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag2')
      authenticated_header(user)
      get :index, params: { tags: 'tag1, tag2', incexc: 'any' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(2)
      # TODO
    end

    it "returns http success gets a job from excluded tags" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1', tag_list: 'tag1, tag3')
      job2 = create(:job1, user: user, name: 'job2', tag_list: 'tag1')
      authenticated_header(user)
      get :index, params: { tags: 'tag3', incexc: 'exclude' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['id']).to eq(job2.id)
    end
  end

  describe "GET #show" do
    it "returns http failure" do
      get :show, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure because the job doesn't exist" do
      authenticated_header(create(:admin1))
      get :show, params: { 'id': 1 }
      expect(response.status).to eq(404)
      json = JSON.parse(response.body)
      expect(json['error']).to eq(I18n.t('jobs.errors.not_found'))
    end

    it "returns http success" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      get :show, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['id']).to equal(job.id)
      expect(json['name']).to eq(job.name)
      expect(json['command']).to eq(job.command)
      expect(json['next_run']).not_to be_nil
    end
  end

  describe "DELETE #destroy" do
    it "returns http failure" do
      delete :destroy, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      job = create(:job1, user: user)
      authenticated_header(user)
      delete :destroy, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #enabled" do
    it "returns http failure" do
      get :enabled
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success for getting enabled jobs" do
      user = create(:admin1)
      job1 = create(:job1, user: user, enabled: true)
      job2 = create(:job2, user: user, enabled: false)
      authenticated_header(user)
      get :enabled
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['id']).to eq(job1.id)
    end

    it "returns http success for getting enabled jobs" do
      user = create(:admin1)
      job1 = create(:job1, user: user, enabled: true)
      job2 = create(:job2, user: user, enabled: false)
      authenticated_header(user)
      get :disabled
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['id']).to eq(job2.id)
    end
  end

  describe "GET #disabled" do
    it "returns http failure" do
      get :disabled
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success for getting disabled jobs" do
      user = create(:admin1)
      job1 = create(:job1, user: user, enabled: true)
      job2 = create(:job2, user: user, enabled: false)
      authenticated_header(user)
      get :disabled
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['id']).to eq(job2.id)
    end

    it "returns http success for getting disabled jobs" do
      user = create(:admin1)
      job1 = create(:job1, user: user, enabled: true)
      job2 = create(:job2, user: user, enabled: false)
      authenticated_header(user)
      get :disabled
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['id']).to eq(job2.id)
    end
  end

  describe "GET #occurrences" do
    it "returns http failure" do
      get :occurrences, params: { 'id': 1, 'end_date': Time.current }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success for getting job occurrences" do
      user = create(:admin1)
      job1 = create(:job1, user: user, enabled: true, cron: '0 0 * * *')
      authenticated_header(user)
      get :occurrences, params: { 'id': job1.id, 'end_date': Time.current + 1.hour }
      expect(response).to have_http_status(:success)
      # TODO
      # json = JSON.parse(response.body)
      # expect(json.length).to eq(1)
    end
  end

  describe "GET #runs" do
    it "returns http failure" do
      get :runs, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success and return 0 runs matching a bad start date" do
      user = create(:admin1)
      job = create(:job1, user: user)
      run1 = create(:job_run, job: job, start_time: Time.current - 11.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 10.hours }
      json = JSON.parse(response.body)
      expect(json.length).to eq(0)
    end

    it "returns http success while trying to get runs that started after a date" do
      user = create(:admin1)
      job = create(:job1, user: user)
      run1 = create(:job_run, job: job, start_time: Time.current - 11.hours)
      run2 = create(:job_run, job: job, start_time: Time.current - 13.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 12.hours }
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
    end

    it "returns http success while trying to get runs that ended before a date" do
      user = create(:admin1)
      job = create(:job1, user: user)
      run1 = create(:job_run, job: job, end_time: Time.current - 11.hours, start_time: Time.current - 12.hours)
      run2 = create(:job_run, job: job, end_time: Time.current - 13.hours, start_time: Time.current - 12.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'end_date': Time.current - 12.hours }
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
    end

    it "returns http success while trying to get runs that started after a date and finished before a date" do
      user = create(:admin1)
      job = create(:job1, user: user)
      run1 = create(:job_run, job: job, start_time: Time.current - 3.hours, end_time: Time.current - 2.hours)
      run2 = create(:job_run, job: job, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 2.hours, 'end_date': Time.current - 1.hours }
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
    end

    it "returns http success while trying to get runs that succeeded" do
      user = create(:admin1)
      job = create(:job1, user: user)
      run1 = create(:job_run, job: job, success: true, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      run2 = create(:job_run, job: job, success: false, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 2.hours, 'end_date': Time.current - 1.hours, 'succeeded': true }
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['id']).to eq(run1.id)
    end

    it "returns http success while trying to get runs that failed" do
      user = create(:admin1)
      job = create(:job1, user: user)
      run1 = create(:job_run, job: job, success: true, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      run2 = create(:job_run, job: job, success: false, start_time: Time.current - 2.hours, end_time: Time.current - 1.hours)
      authenticated_header(user)
      get :runs, params: { 'id': job.id, 'start_date': Time.current - 2.hours, 'end_date': Time.current - 1.hours, 'succeeded': false }
      json = JSON.parse(response.body)
      expect(json.length).to eq(1)
      expect(json[0]['id']).to eq(run2.id)
    end
  end
end
