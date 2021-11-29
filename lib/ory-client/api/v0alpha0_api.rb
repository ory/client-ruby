=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.30
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module OryClient
  class V0alpha0Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Project
    # Creates a new project.
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectPatch] :project_patch 
    # @return [Project]
    def create_project(opts = {})
      data, _status_code, _headers = create_project_with_http_info(opts)
      data
    end

    # Create a Project
    # Creates a new project.
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectPatch] :project_patch 
    # @return [Array<(Project, Integer, Hash)>] Project data, response status code and response headers
    def create_project_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V0alpha0Api.create_project ...'
      end
      # resource path
      local_var_path = '/backoffice/public/projects'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'project_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'Project'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"V0alpha0Api.create_project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V0alpha0Api#create_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Project
    # Get a projects you have access to by its ID.
    # @param project_id [String] Project ID  The project&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [Project]
    def get_project(project_id, opts = {})
      data, _status_code, _headers = get_project_with_http_info(project_id, opts)
      data
    end

    # Get a Project
    # Get a projects you have access to by its ID.
    # @param project_id [String] Project ID  The project&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Project, Integer, Hash)>] Project data, response status code and response headers
    def get_project_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V0alpha0Api.get_project ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling V0alpha0Api.get_project"
      end
      # resource path
      local_var_path = '/backoffice/public/projects/{project_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Project'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"V0alpha0Api.get_project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V0alpha0Api#get_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List All Projects
    # Lists all projects you have access to.
    # @param [Hash] opts the optional parameters
    # @return [Array<Project>]
    def list_projects(opts = {})
      data, _status_code, _headers = list_projects_with_http_info(opts)
      data
    end

    # List All Projects
    # Lists all projects you have access to.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Project>, Integer, Hash)>] Array<Project> data, response status code and response headers
    def list_projects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V0alpha0Api.list_projects ...'
      end
      # resource path
      local_var_path = '/backoffice/public/projects'

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
      return_type = opts[:debug_return_type] || 'Array<Project>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"V0alpha0Api.list_projects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V0alpha0Api#list_projects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Project
    # Creates a new configuration revision for a project.
    # @param project_id [String] Project ID  The project&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectPatch] :project_patch 
    # @return [Project]
    def update_project(project_id, opts = {})
      data, _status_code, _headers = update_project_with_http_info(project_id, opts)
      data
    end

    # Update a Project
    # Creates a new configuration revision for a project.
    # @param project_id [String] Project ID  The project&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectPatch] :project_patch 
    # @return [Array<(Project, Integer, Hash)>] Project data, response status code and response headers
    def update_project_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V0alpha0Api.update_project ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling V0alpha0Api.update_project"
      end
      # resource path
      local_var_path = '/backoffice/public/projects/{project_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'project_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'Project'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"V0alpha0Api.update_project",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V0alpha0Api#update_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
