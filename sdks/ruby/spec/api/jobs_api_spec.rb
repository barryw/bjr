=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for BJR::JobsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'JobsApi' do
  before do
    # run before each test
    @api_instance = BJR::JobsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobsApi' do
    it 'should create an instance of JobsApi' do
      expect(@api_instance).to be_instance_of(BJR::JobsApi)
    end
  end

  # unit tests for create_job
  # Creates a job
  # Creates a job
  # @param [Hash] opts the optional parameters
  # @option opts [JobIn] :job_in 
  # @return [SingleJobMessage]
  describe 'create_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_job
  # Deletes a job
  # Deletes a job
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [SingleJobMessage]
  describe 'delete_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_job
  # Retrieves a single job
  # Retrieves a single job
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [SingleJobMessage]
  describe 'get_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_job_runs
  # Retrieve the runs for a job
  # Retrieve the runs for a job
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :per_page 
  # @option opts [Integer] :page 
  # @option opts [Boolean] :succeeded 
  # @option opts [String] :start_date 
  # @option opts [String] :end_date 
  # @option opts [String] :timezone 
  # @return [JobRunArrayMessage]
  describe 'get_job_runs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_jobs
  # Retrieves jobs
  # Retrieves jobs
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tags Specify a comma-separated list of tags to search jobs by.
  # @option opts [String] :incexc 
  # @option opts [String] :start_date Specify a start date to search jobs by.
  # @option opts [String] :end_date Specify an end date to search jobs by.
  # @option opts [Boolean] :enabled Search on whether a job is enabled or not.
  # @option opts [Boolean] :succeeded Search on whether a job&#39;s last run was successful or not.
  # @option opts [Boolean] :running Search on whether a job is currently running or not.
  # @option opts [String] :name Search on a job&#39;s name.
  # @option opts [String] :search_timezone Search for jobs in a timezone.
  # @option opts [String] :command Search for jobs by the command that they execute.
  # @option opts [String] :timezone 
  # @option opts [Integer] :per_page 
  # @option opts [Integer] :page 
  # @return [JobArrayMessage]
  describe 'get_jobs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_occurrences
  # Upcoming job occurrences
  # Retrieves a list of upcoming occurrences for a job
  # @param id The id of the job to retrieve occurrences for
  # @param end_date The date to retrieve occurrences up to
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :per_page 
  # @option opts [Integer] :page 
  # @option opts [String] :timezone 
  # @return [OccurrenceMessage]
  describe 'job_occurrences test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run_job_now
  # Run a job now
  # Queues a job to run now
  # @param id The id of the job to execute now
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'run_job_now test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_job
  # Updates a single job
  # Updates a single job
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [JobIn] :job_in 
  # @return [SingleJobMessage]
  describe 'update_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
