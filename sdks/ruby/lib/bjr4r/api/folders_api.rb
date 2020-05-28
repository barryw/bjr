=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1-SNAPSHOT

=end

require 'cgi'

module BJR
  class FoldersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new Folder
    # Create a new Folder
    # @param name [String] 
    # @param expression [String] 
    # @param [Hash] opts the optional parameters
    # @return [SingleFolderMessage]
    def create_folder(name, expression, opts = {})
      data, _status_code, _headers = create_folder_with_http_info(name, expression, opts)
      data
    end

    # Create a new Folder
    # Create a new Folder
    # @param name [String] 
    # @param expression [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleFolderMessage, Integer, Hash)>] SingleFolderMessage data, response status code and response headers
    def create_folder_with_http_info(name, expression, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.create_folder ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling FoldersApi.create_folder"
      end
      # verify the required parameter 'expression' is set
      if @api_client.config.client_side_validation && expression.nil?
        fail ArgumentError, "Missing the required parameter 'expression' when calling FoldersApi.create_folder"
      end
      # resource path
      local_var_path = '/folder_api'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = name
      query_params[:'expression'] = expression

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'SingleFolderMessage' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing folder
    # Delete an existing folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [SingleFolderMessage]
    def delete_folder(id, opts = {})
      data, _status_code, _headers = delete_folder_with_http_info(id, opts)
      data
    end

    # Delete an existing folder
    # Delete an existing folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleFolderMessage, Integer, Hash)>] SingleFolderMessage data, response status code and response headers
    def delete_folder_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.delete_folder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FoldersApi.delete_folder"
      end
      # resource path
      local_var_path = '/folder_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'SingleFolderMessage' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a single folder
    # Return a single folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [SingleFolderMessage]
    def get_folder(id, opts = {})
      data, _status_code, _headers = get_folder_with_http_info(id, opts)
      data
    end

    # Return a single folder
    # Return a single folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleFolderMessage, Integer, Hash)>] SingleFolderMessage data, response status code and response headers
    def get_folder_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.get_folder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FoldersApi.get_folder"
      end
      # resource path
      local_var_path = '/folder_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'SingleFolderMessage' 

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
        @api_client.config.logger.debug "API called: FoldersApi#get_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return list of jobs in a folder
    # Return list of jobs in a folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [JobArrayMessage]
    def get_folder_jobs(id, opts = {})
      data, _status_code, _headers = get_folder_jobs_with_http_info(id, opts)
      data
    end

    # Return list of jobs in a folder
    # Return list of jobs in a folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<(JobArrayMessage, Integer, Hash)>] JobArrayMessage data, response status code and response headers
    def get_folder_jobs_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.get_folder_jobs ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FoldersApi.get_folder_jobs"
      end
      # resource path
      local_var_path = '/folder_api/{id}/jobs'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
        @api_client.config.logger.debug "API called: FoldersApi#get_folder_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return paginated list of all folders
    # Return paginated list of all folders
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [FolderArrayMessage]
    def get_folders(opts = {})
      data, _status_code, _headers = get_folders_with_http_info(opts)
      data
    end

    # Return paginated list of all folders
    # Return paginated list of all folders
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<(FolderArrayMessage, Integer, Hash)>] FolderArrayMessage data, response status code and response headers
    def get_folders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.get_folders ...'
      end
      # resource path
      local_var_path = '/folder_api'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'FolderArrayMessage' 

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
        @api_client.config.logger.debug "API called: FoldersApi#get_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing folder
    # Update an existing folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :expression 
    # @return [SingleFolderMessage]
    def update_folder(id, opts = {})
      data, _status_code, _headers = update_folder_with_http_info(id, opts)
      data
    end

    # Update an existing folder
    # Update an existing folder
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :expression 
    # @return [Array<(SingleFolderMessage, Integer, Hash)>] SingleFolderMessage data, response status code and response headers
    def update_folder_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FoldersApi.update_folder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FoldersApi.update_folder"
      end
      # resource path
      local_var_path = '/folder_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'expression'] = opts[:'expression'] if !opts[:'expression'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'SingleFolderMessage' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FoldersApi#update_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
