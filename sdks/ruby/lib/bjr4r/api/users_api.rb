=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'cgi'

module BJR
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a user
    # Create a new user. Only root users are allowed to create new users.
    # @param [Hash] opts the optional parameters
    # @option opts [UserNewIn] :user_new_in 
    # @return [SingleUserMessage]
    def create_user(opts = {})
      data, _status_code, _headers = create_user_with_http_info(opts)
      data
    end

    # Creates a user
    # Create a new user. Only root users are allowed to create new users.
    # @param [Hash] opts the optional parameters
    # @option opts [UserNewIn] :user_new_in 
    # @return [Array<(SingleUserMessage, Integer, Hash)>] SingleUserMessage data, response status code and response headers
    def create_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user ...'
      end
      # resource path
      local_var_path = '/user_api'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'user_new_in'])

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUserMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a user
    # Deletes a user. Only root users can delete other users.
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [SingleUserMessage]
    def delete_user(id, opts = {})
      data, _status_code, _headers = delete_user_with_http_info(id, opts)
      data
    end

    # Deletes a user
    # Deletes a user. Only root users can delete other users.
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUserMessage, Integer, Hash)>] SingleUserMessage data, response status code and response headers
    def delete_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/user_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleUserMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.delete_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a single user
    # Retrieve a single user. If you're a non-root user, then you can only retrieve your own user.
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [SingleUserMessage]
    def get_user(id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(id, opts)
      data
    end

    # Retrieve a single user
    # Retrieve a single user. If you&#39;re a non-root user, then you can only retrieve your own user.
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUserMessage, Integer, Hash)>] SingleUserMessage data, response status code and response headers
    def get_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/user_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleUserMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves users
    # Get a list of users
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [UserArrayMessage]
    def get_users(opts = {})
      data, _status_code, _headers = get_users_with_http_info(opts)
      data
    end

    # Retrieves users
    # Get a list of users
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<(UserArrayMessage, Integer, Hash)>] UserArrayMessage data, response status code and response headers
    def get_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_users ...'
      end
      # resource path
      local_var_path = '/user_api'

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
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserArrayMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.get_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a single user
    # Update a single user. If you're a non-root users, then you can only update your own user.
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [UserUpdateIn] :user_update_in 
    # @return [SingleUserMessage]
    def update_user(id, opts = {})
      data, _status_code, _headers = update_user_with_http_info(id, opts)
      data
    end

    # Update a single user
    # Update a single user. If you&#39;re a non-root users, then you can only update your own user.
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [UserUpdateIn] :user_update_in 
    # @return [Array<(SingleUserMessage, Integer, Hash)>] SingleUserMessage data, response status code and response headers
    def update_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.update_user"
      end
      # resource path
      local_var_path = '/user_api/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'user_update_in'])

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUserMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
