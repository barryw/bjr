=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'cgi'

module BJR
  class JobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a job
    # Creates a job
    # @param [Hash] opts the optional parameters
    # @option opts [JobIn] :job_in 
    # @return [SingleJobMessage]
    def create_job(opts = {})
      data, _status_code, _headers = create_job_with_http_info(opts)
      data
    end

    # Creates a job
    # Creates a job
    # @param [Hash] opts the optional parameters
    # @option opts [JobIn] :job_in 
    # @return [Array<(SingleJobMessage, Integer, Hash)>] SingleJobMessage data, response status code and response headers
    def create_job_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.create_job ...'
      end
      # resource path
      local_var_path = '/job_api'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'job_in'])

      # return_type
      return_type = opts[:debug_return_type] || 'SingleJobMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.create_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#create_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a job
    # Deletes a job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [SingleJobMessage]
    def delete_job(id, opts = {})
      data, _status_code, _headers = delete_job_with_http_info(id, opts)
      data
    end

    # Deletes a job
    # Deletes a job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleJobMessage, Integer, Hash)>] SingleJobMessage data, response status code and response headers
    def delete_job_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.delete_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.delete_job"
      end
      # resource path
      local_var_path = '/job_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleJobMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.delete_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#delete_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a single job
    # Retrieves a single job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [SingleJobMessage]
    def get_job(id, opts = {})
      data, _status_code, _headers = get_job_with_http_info(id, opts)
      data
    end

    # Retrieves a single job
    # Retrieves a single job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleJobMessage, Integer, Hash)>] SingleJobMessage data, response status code and response headers
    def get_job_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.get_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.get_job"
      end
      # resource path
      local_var_path = '/job_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleJobMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.get_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#get_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the runs for a job
    # Retrieve the runs for a job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @option opts [Boolean] :succeeded 
    # @option opts [String] :start_date 
    # @option opts [String] :end_date 
    # @option opts [String] :timezone 
    # @return [JobRunArrayMessage]
    def get_job_runs(id, opts = {})
      data, _status_code, _headers = get_job_runs_with_http_info(id, opts)
      data
    end

    # Retrieve the runs for a job
    # Retrieve the runs for a job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @option opts [Boolean] :succeeded 
    # @option opts [String] :start_date 
    # @option opts [String] :end_date 
    # @option opts [String] :timezone 
    # @return [Array<(JobRunArrayMessage, Integer, Hash)>] JobRunArrayMessage data, response status code and response headers
    def get_job_runs_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.get_job_runs ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.get_job_runs"
      end
      # resource path
      local_var_path = '/job_api/{id}/runs'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'succeeded'] = opts[:'succeeded'] if !opts[:'succeeded'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'timezone'] = opts[:'timezone'] if !opts[:'timezone'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JobRunArrayMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.get_job_runs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#get_job_runs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves jobs
    # Retrieves jobs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expression A search expression to filter jobs.
    # @option opts [String] :timezone 
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [JobArrayMessage]
    def get_jobs(opts = {})
      data, _status_code, _headers = get_jobs_with_http_info(opts)
      data
    end

    # Retrieves jobs
    # Retrieves jobs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expression A search expression to filter jobs.
    # @option opts [String] :timezone 
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<(JobArrayMessage, Integer, Hash)>] JobArrayMessage data, response status code and response headers
    def get_jobs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.get_jobs ...'
      end
      # resource path
      local_var_path = '/job_api'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expression'] = opts[:'expression'] if !opts[:'expression'].nil?
      query_params[:'timezone'] = opts[:'timezone'] if !opts[:'timezone'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JobArrayMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.get_jobs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#get_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upcoming job occurrences
    # Retrieves a list of upcoming occurrences for a job
    # @param id [Integer] The id of the job to retrieve occurrences for
    # @param end_date [String] The date to retrieve occurrences up to
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @option opts [String] :timezone 
    # @return [OccurrenceMessage]
    def job_occurrences(id, end_date, opts = {})
      data, _status_code, _headers = job_occurrences_with_http_info(id, end_date, opts)
      data
    end

    # Upcoming job occurrences
    # Retrieves a list of upcoming occurrences for a job
    # @param id [Integer] The id of the job to retrieve occurrences for
    # @param end_date [String] The date to retrieve occurrences up to
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @option opts [String] :timezone 
    # @return [Array<(OccurrenceMessage, Integer, Hash)>] OccurrenceMessage data, response status code and response headers
    def job_occurrences_with_http_info(id, end_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_occurrences ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_occurrences"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling JobsApi.job_occurrences"
      end
      # resource path
      local_var_path = '/job_api/{id}/occurrences/{end_date}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'end_date' + '}', CGI.escape(end_date.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'timezone'] = opts[:'timezone'] if !opts[:'timezone'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OccurrenceMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.job_occurrences",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_occurrences\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Run a job now
    # Queues a job to run now
    # @param id [Integer] The id of the job to execute now
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def run_job_now(id, opts = {})
      run_job_now_with_http_info(id, opts)
      nil
    end

    # Run a job now
    # Queues a job to run now
    # @param id [Integer] The id of the job to execute now
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def run_job_now_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.run_job_now ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.run_job_now"
      end
      # resource path
      local_var_path = '/job_api/{id}/run_now'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.run_job_now",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#run_job_now\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a single job
    # Updates a single job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [JobIn] :job_in 
    # @return [SingleJobMessage]
    def update_job(id, opts = {})
      data, _status_code, _headers = update_job_with_http_info(id, opts)
      data
    end

    # Updates a single job
    # Updates a single job
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [JobIn] :job_in 
    # @return [Array<(SingleJobMessage, Integer, Hash)>] SingleJobMessage data, response status code and response headers
    def update_job_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.update_job ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.update_job"
      end
      # resource path
      local_var_path = '/job_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'job_in'])

      # return_type
      return_type = opts[:debug_return_type] || 'SingleJobMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JobsApi.update_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#update_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
