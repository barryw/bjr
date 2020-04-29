=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1-SNAPSHOT

=end

require 'cgi'

module BJR
  class JobServerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Jobs Per Day
    # The number of jobs processed and failed by day
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :days The number of days to return (max 30)
    # @return [JobsPerDay]
    def jobs_per_day(opts = {})
      data, _status_code, _headers = jobs_per_day_with_http_info(opts)
      data
    end

    # Jobs Per Day
    # The number of jobs processed and failed by day
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :days The number of days to return (max 30)
    # @return [Array<(JobsPerDay, Integer, Hash)>] JobsPerDay data, response status code and response headers
    def jobs_per_day_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobServerApi.jobs_per_day ...'
      end
      # resource path
      local_var_path = '/job_server_api/job_runs_per_day'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'JobsPerDay' 

      # auth_names
      auth_names = opts[:auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobServerApi#jobs_per_day\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Most Recent Jobs
    # Get a list of the most recently run jobs
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of jobs to return (max 20)
    # @return [JobArrayMessage]
    def recent_jobs(opts = {})
      data, _status_code, _headers = recent_jobs_with_http_info(opts)
      data
    end

    # Most Recent Jobs
    # Get a list of the most recently run jobs
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The number of jobs to return (max 20)
    # @return [Array<(JobArrayMessage, Integer, Hash)>] JobArrayMessage data, response status code and response headers
    def recent_jobs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobServerApi.recent_jobs ...'
      end
      # resource path
      local_var_path = '/job_server_api/most_recent_jobs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'JobArrayMessage' 

      # auth_names
      auth_names = opts[:auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobServerApi#recent_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
