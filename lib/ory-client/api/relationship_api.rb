=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.13.4
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OryClient
  class RelationshipApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check the syntax of an OPL file
    # The OPL file is expected in the body of the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [CheckOplSyntaxResult]
    def check_opl_syntax(opts = {})
      data, _status_code, _headers = check_opl_syntax_with_http_info(opts)
      data
    end

    # Check the syntax of an OPL file
    # The OPL file is expected in the body of the request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [Array<(CheckOplSyntaxResult, Integer, Hash)>] CheckOplSyntaxResult data, response status code and response headers
    def check_opl_syntax_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelationshipApi.check_opl_syntax ...'
      end
      # resource path
      local_var_path = '/opl/syntax/check'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['text/plain'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'CheckOplSyntaxResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"RelationshipApi.check_opl_syntax",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelationshipApi#check_opl_syntax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Relationship
    # Use this endpoint to create a relationship.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRelationshipBody] :create_relationship_body 
    # @return [Relationship]
    def create_relationship(opts = {})
      data, _status_code, _headers = create_relationship_with_http_info(opts)
      data
    end

    # Create a Relationship
    # Use this endpoint to create a relationship.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRelationshipBody] :create_relationship_body 
    # @return [Array<(Relationship, Integer, Hash)>] Relationship data, response status code and response headers
    def create_relationship_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelationshipApi.create_relationship ...'
      end
      # resource path
      local_var_path = '/admin/relation-tuples'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_relationship_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Relationship'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"RelationshipApi.create_relationship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelationshipApi#create_relationship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Relationships
    # Use this endpoint to delete relationships
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @return [nil]
    def delete_relationships(opts = {})
      delete_relationships_with_http_info(opts)
      nil
    end

    # Delete Relationships
    # Use this endpoint to delete relationships
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_relationships_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelationshipApi.delete_relationships ...'
      end
      # resource path
      local_var_path = '/admin/relation-tuples'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'namespace'] = opts[:'namespace'] if !opts[:'namespace'].nil?
      query_params[:'object'] = opts[:'object'] if !opts[:'object'].nil?
      query_params[:'relation'] = opts[:'relation'] if !opts[:'relation'].nil?
      query_params[:'subject_id'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subject_set.namespace'] = opts[:'subject_set_namespace'] if !opts[:'subject_set_namespace'].nil?
      query_params[:'subject_set.object'] = opts[:'subject_set_object'] if !opts[:'subject_set_object'].nil?
      query_params[:'subject_set.relation'] = opts[:'subject_set_relation'] if !opts[:'subject_set_relation'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"RelationshipApi.delete_relationships",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelationshipApi#delete_relationships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query relationships
    # Get all relationships that match the query. Only the namespace field is required.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :page_size 
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @return [Relationships]
    def get_relationships(opts = {})
      data, _status_code, _headers = get_relationships_with_http_info(opts)
      data
    end

    # Query relationships
    # Get all relationships that match the query. Only the namespace field is required.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :page_size 
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @return [Array<(Relationships, Integer, Hash)>] Relationships data, response status code and response headers
    def get_relationships_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelationshipApi.get_relationships ...'
      end
      # resource path
      local_var_path = '/relation-tuples'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'namespace'] = opts[:'namespace'] if !opts[:'namespace'].nil?
      query_params[:'object'] = opts[:'object'] if !opts[:'object'].nil?
      query_params[:'relation'] = opts[:'relation'] if !opts[:'relation'].nil?
      query_params[:'subject_id'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subject_set.namespace'] = opts[:'subject_set_namespace'] if !opts[:'subject_set_namespace'].nil?
      query_params[:'subject_set.object'] = opts[:'subject_set_object'] if !opts[:'subject_set_object'].nil?
      query_params[:'subject_set.relation'] = opts[:'subject_set_relation'] if !opts[:'subject_set_relation'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Relationships'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"RelationshipApi.get_relationships",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelationshipApi#get_relationships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query namespaces
    # Get all namespaces
    # @param [Hash] opts the optional parameters
    # @return [RelationshipNamespaces]
    def list_relationship_namespaces(opts = {})
      data, _status_code, _headers = list_relationship_namespaces_with_http_info(opts)
      data
    end

    # Query namespaces
    # Get all namespaces
    # @param [Hash] opts the optional parameters
    # @return [Array<(RelationshipNamespaces, Integer, Hash)>] RelationshipNamespaces data, response status code and response headers
    def list_relationship_namespaces_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelationshipApi.list_relationship_namespaces ...'
      end
      # resource path
      local_var_path = '/namespaces'

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
      return_type = opts[:debug_return_type] || 'RelationshipNamespaces'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"RelationshipApi.list_relationship_namespaces",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelationshipApi#list_relationship_namespaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Multiple Relationships
    # Use this endpoint to patch one or more relationships.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<RelationshipPatch>] :relationship_patch 
    # @return [nil]
    def patch_relationships(opts = {})
      patch_relationships_with_http_info(opts)
      nil
    end

    # Patch Multiple Relationships
    # Use this endpoint to patch one or more relationships.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<RelationshipPatch>] :relationship_patch 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def patch_relationships_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelationshipApi.patch_relationships ...'
      end
      # resource path
      local_var_path = '/admin/relation-tuples'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'relationship_patch'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"RelationshipApi.patch_relationships",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelationshipApi#patch_relationships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
