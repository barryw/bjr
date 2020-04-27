=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1-SNAPSHOT

=end

require 'cgi'

module BJR
  class StaticApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get tags
    # Retrieves the list of tags that are currently in use for the authenticated user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [TagMessage]
    def get_tags(opts = {})
      data, _status_code, _headers = get_tags_with_http_info(opts)
      data
    end

    # Get tags
    # Retrieves the list of tags that are currently in use for the authenticated user.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page 
    # @option opts [Integer] :page 
    # @return [Array<(TagMessage, Integer, Hash)>] TagMessage data, response status code and response headers
    def get_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StaticApi.get_tags ...'
      end
      # resource path
      local_var_path = '/tags'

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
      return_type = opts[:return_type] || 'TagMessage' 

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
        @api_client.config.logger.debug "API called: StaticApi#get_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get timezones
    # Get the list of acceptable timezone names.
    # @param [Hash] opts the optional parameters
    # @return [TimezoneMessage]
    def get_timezones(opts = {})
      data, _status_code, _headers = get_timezones_with_http_info(opts)
      data
    end

    # Get timezones
    # Get the list of acceptable timezone names.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TimezoneMessage, Integer, Hash)>] TimezoneMessage data, response status code and response headers
    def get_timezones_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StaticApi.get_timezones ...'
      end
      # resource path
      local_var_path = '/timezones'

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
      return_type = opts[:return_type] || 'TimezoneMessage' 

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
        @api_client.config.logger.debug "API called: StaticApi#get_timezones\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Server version
    # The BJR server version
    # @param [Hash] opts the optional parameters
    # @return [ServerVersion]
    def get_version(opts = {})
      data, _status_code, _headers = get_version_with_http_info(opts)
      data
    end

    # Server version
    # The BJR server version
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServerVersion, Integer, Hash)>] ServerVersion data, response status code and response headers
    def get_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StaticApi.get_version ...'
      end
      # resource path
      local_var_path = '/version'

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
      return_type = opts[:return_type] || 'ServerVersion' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: StaticApi#get_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
