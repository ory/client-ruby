=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.2.0-alpha.20
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module OryClient
  class AdminApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # UpdateLifespans an existing OAuth 2.0 client's token lifespan configuration. This client configuration takes precedence over the instance-wide token lifespan configuration.
    # @param id [String] The id of the OAuth 2.0 Client.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOAuth2ClientLifespans] :update_o_auth2_client_lifespans 
    # @return [OAuth2Client]
    def update_o_auth2_client_lifespans(id, opts = {})
      data, _status_code, _headers = update_o_auth2_client_lifespans_with_http_info(id, opts)
      data
    end

    # UpdateLifespans an existing OAuth 2.0 client&#39;s token lifespan configuration. This client configuration takes precedence over the instance-wide token lifespan configuration.
    # @param id [String] The id of the OAuth 2.0 Client.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateOAuth2ClientLifespans] :update_o_auth2_client_lifespans 
    # @return [Array<(OAuth2Client, Integer, Hash)>] OAuth2Client data, response status code and response headers
    def update_o_auth2_client_lifespans_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdminApi.update_o_auth2_client_lifespans ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdminApi.update_o_auth2_client_lifespans"
      end
      # resource path
      local_var_path = '/admin/clients/{id}/lifespans'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_o_auth2_client_lifespans'])

      # return_type
      return_type = opts[:debug_return_type] || 'OAuth2Client'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AdminApi.update_o_auth2_client_lifespans",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#update_o_auth2_client_lifespans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
