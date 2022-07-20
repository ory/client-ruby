=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.1.0-alpha.9
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OryClient
  class ReadApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relation Tuple
    # @option opts [String] :object Object of the Relation Tuple
    # @option opts [String] :relation Relation of the Relation Tuple
    # @option opts [String] :subject_id SubjectID of the Relation Tuple
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @option opts [Integer] :max_depth 
    # @return [GetCheckResponse]
    def get_check(opts = {})
      data, _status_code, _headers = get_check_with_http_info(opts)
      data
    end

    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relation Tuple
    # @option opts [String] :object Object of the Relation Tuple
    # @option opts [String] :relation Relation of the Relation Tuple
    # @option opts [String] :subject_id SubjectID of the Relation Tuple
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @option opts [Integer] :max_depth 
    # @return [Array<(GetCheckResponse, Integer, Hash)>] GetCheckResponse data, response status code and response headers
    def get_check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReadApi.get_check ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check/openapi'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'namespace'] = opts[:'namespace'] if !opts[:'namespace'].nil?
      query_params[:'object'] = opts[:'object'] if !opts[:'object'].nil?
      query_params[:'relation'] = opts[:'relation'] if !opts[:'relation'].nil?
      query_params[:'subject_id'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subject_set.namespace'] = opts[:'subject_set_namespace'] if !opts[:'subject_set_namespace'].nil?
      query_params[:'subject_set.object'] = opts[:'subject_set_object'] if !opts[:'subject_set_object'].nil?
      query_params[:'subject_set.relation'] = opts[:'subject_set_relation'] if !opts[:'subject_set_relation'].nil?
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"ReadApi.get_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReadApi#get_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @return [GetCheckResponse]
    def get_check_mirror_status(opts = {})
      data, _status_code, _headers = get_check_mirror_status_with_http_info(opts)
      data
    end

    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCheckResponse, Integer, Hash)>] GetCheckResponse data, response status code and response headers
    def get_check_mirror_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReadApi.get_check_mirror_status ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check'

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
      return_type = opts[:debug_return_type] || 'GetCheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"ReadApi.get_check_mirror_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReadApi#get_check_mirror_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expand a Relation Tuple
    # Use this endpoint to expand a relation tuple.
    # @param namespace [String] Namespace of the Subject Set
    # @param object [String] Object of the Subject Set
    # @param relation [String] Relation of the Subject Set
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @return [ExpandTree]
    def get_expand(namespace, object, relation, opts = {})
      data, _status_code, _headers = get_expand_with_http_info(namespace, object, relation, opts)
      data
    end

    # Expand a Relation Tuple
    # Use this endpoint to expand a relation tuple.
    # @param namespace [String] Namespace of the Subject Set
    # @param object [String] Object of the Subject Set
    # @param relation [String] Relation of the Subject Set
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @return [Array<(ExpandTree, Integer, Hash)>] ExpandTree data, response status code and response headers
    def get_expand_with_http_info(namespace, object, relation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReadApi.get_expand ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling ReadApi.get_expand"
      end
      # verify the required parameter 'object' is set
      if @api_client.config.client_side_validation && object.nil?
        fail ArgumentError, "Missing the required parameter 'object' when calling ReadApi.get_expand"
      end
      # verify the required parameter 'relation' is set
      if @api_client.config.client_side_validation && relation.nil?
        fail ArgumentError, "Missing the required parameter 'relation' when calling ReadApi.get_expand"
      end
      # resource path
      local_var_path = '/relation-tuples/expand'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'namespace'] = namespace
      query_params[:'object'] = object
      query_params[:'relation'] = relation
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExpandTree'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"ReadApi.get_expand",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReadApi#get_expand\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query relation tuples
    # Get all relation tuples that match the query. Only the namespace field is required.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :page_size 
    # @option opts [String] :namespace Namespace of the Relation Tuple
    # @option opts [String] :object Object of the Relation Tuple
    # @option opts [String] :relation Relation of the Relation Tuple
    # @option opts [String] :subject_id SubjectID of the Relation Tuple
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @return [GetRelationTuplesResponse]
    def get_relation_tuples(opts = {})
      data, _status_code, _headers = get_relation_tuples_with_http_info(opts)
      data
    end

    # Query relation tuples
    # Get all relation tuples that match the query. Only the namespace field is required.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :page_size 
    # @option opts [String] :namespace Namespace of the Relation Tuple
    # @option opts [String] :object Object of the Relation Tuple
    # @option opts [String] :relation Relation of the Relation Tuple
    # @option opts [String] :subject_id SubjectID of the Relation Tuple
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @return [Array<(GetRelationTuplesResponse, Integer, Hash)>] GetRelationTuplesResponse data, response status code and response headers
    def get_relation_tuples_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReadApi.get_relation_tuples ...'
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
      return_type = opts[:debug_return_type] || 'GetRelationTuplesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"ReadApi.get_relation_tuples",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReadApi#get_relation_tuples\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @option opts [RelationQuery] :relation_query 
    # @return [GetCheckResponse]
    def post_check(opts = {})
      data, _status_code, _headers = post_check_with_http_info(opts)
      data
    end

    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @option opts [RelationQuery] :relation_query 
    # @return [Array<(GetCheckResponse, Integer, Hash)>] GetCheckResponse data, response status code and response headers
    def post_check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReadApi.post_check ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check/openapi'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'relation_query'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetCheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"ReadApi.post_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReadApi#post_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @return [GetCheckResponse]
    def post_check_mirror_status(opts = {})
      data, _status_code, _headers = post_check_mirror_status_with_http_info(opts)
      data
    end

    # Check a relation tuple
    # To learn how relation tuples and the check works, head over to [the documentation](../concepts/relation-tuples.mdx).
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCheckResponse, Integer, Hash)>] GetCheckResponse data, response status code and response headers
    def post_check_mirror_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReadApi.post_check_mirror_status ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check'

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
      return_type = opts[:debug_return_type] || 'GetCheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"ReadApi.post_check_mirror_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReadApi#post_check_mirror_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
