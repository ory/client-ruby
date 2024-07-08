=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.13.3
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OryClient
  class WorkspaceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new workspace
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWorkspaceBody] :create_workspace_body 
    # @return [Workspace]
    def create_workspace(opts = {})
      data, _status_code, _headers = create_workspace_with_http_info(opts)
      data
    end

    # Create a new workspace
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWorkspaceBody] :create_workspace_body 
    # @return [Array<(Workspace, Integer, Hash)>] Workspace data, response status code and response headers
    def create_workspace_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.create_workspace ...'
      end
      # resource path
      local_var_path = '/workspaces'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_workspace_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Workspace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryWorkspaceApiKey']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.create_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#create_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a workspace
    # Any workspace member can access this endpoint.
    # @param workspace [String] 
    # @param [Hash] opts the optional parameters
    # @return [Workspace]
    def get_workspace(workspace, opts = {})
      data, _status_code, _headers = get_workspace_with_http_info(workspace, opts)
      data
    end

    # Get a workspace
    # Any workspace member can access this endpoint.
    # @param workspace [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Workspace, Integer, Hash)>] Workspace data, response status code and response headers
    def get_workspace_with_http_info(workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.get_workspace ...'
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling WorkspaceApi.get_workspace"
      end
      # resource path
      local_var_path = '/workspaces/{workspace}'.sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

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
      return_type = opts[:debug_return_type] || 'Workspace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryWorkspaceApiKey']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.get_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#get_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all projects of a workspace
    # Any workspace member can access this endpoint.
    # @param workspace [String] 
    # @param [Hash] opts the optional parameters
    # @return [ListWorkspaceProjects]
    def list_workspace_projects(workspace, opts = {})
      data, _status_code, _headers = list_workspace_projects_with_http_info(workspace, opts)
      data
    end

    # List all projects of a workspace
    # Any workspace member can access this endpoint.
    # @param workspace [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListWorkspaceProjects, Integer, Hash)>] ListWorkspaceProjects data, response status code and response headers
    def list_workspace_projects_with_http_info(workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.list_workspace_projects ...'
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling WorkspaceApi.list_workspace_projects"
      end
      # resource path
      local_var_path = '/workspaces/{workspace}/projects'.sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

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
      return_type = opts[:debug_return_type] || 'ListWorkspaceProjects'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryWorkspaceApiKey']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.list_workspace_projects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#list_workspace_projects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List workspaces the user is a member of
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (default to 250)
    # @option opts [String] :page_token Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
    # @return [ListWorkspaces]
    def list_workspaces(opts = {})
      data, _status_code, _headers = list_workspaces_with_http_info(opts)
      data
    end

    # List workspaces the user is a member of
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (default to 250)
    # @option opts [String] :page_token Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
    # @return [Array<(ListWorkspaces, Integer, Hash)>] ListWorkspaces data, response status code and response headers
    def list_workspaces_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.list_workspaces ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WorkspaceApi.list_workspaces, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling WorkspaceApi.list_workspaces, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/workspaces'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListWorkspaces'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryWorkspaceApiKey']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.list_workspaces",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#list_workspaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an workspace
    # Workspace members with the role `OWNER` can access this endpoint.
    # @param workspace [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWorkspaceBody] :update_workspace_body 
    # @return [Workspace]
    def update_workspace(workspace, opts = {})
      data, _status_code, _headers = update_workspace_with_http_info(workspace, opts)
      data
    end

    # Update an workspace
    # Workspace members with the role &#x60;OWNER&#x60; can access this endpoint.
    # @param workspace [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWorkspaceBody] :update_workspace_body 
    # @return [Array<(Workspace, Integer, Hash)>] Workspace data, response status code and response headers
    def update_workspace_with_http_info(workspace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.update_workspace ...'
      end
      # verify the required parameter 'workspace' is set
      if @api_client.config.client_side_validation && workspace.nil?
        fail ArgumentError, "Missing the required parameter 'workspace' when calling WorkspaceApi.update_workspace"
      end
      # resource path
      local_var_path = '/workspaces/{workspace}'.sub('{' + 'workspace' + '}', CGI.escape(workspace.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_workspace_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Workspace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryWorkspaceApiKey']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.update_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#update_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
