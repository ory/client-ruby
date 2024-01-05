=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.4.9
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module OryClient
  class JwkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create JSON Web Key
    # This endpoint is capable of generating JSON Web Key Sets for you. There a different strategies available, such as symmetric cryptographic keys (HS256, HS512) and asymetric cryptographic keys (RS256, ECDSA). If the specified JSON Web Key Set does not exist, it will be created.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set ID
    # @param create_json_web_key_set [CreateJsonWebKeySet] 
    # @param [Hash] opts the optional parameters
    # @return [JsonWebKeySet]
    def create_json_web_key_set(set, create_json_web_key_set, opts = {})
      data, _status_code, _headers = create_json_web_key_set_with_http_info(set, create_json_web_key_set, opts)
      data
    end

    # Create JSON Web Key
    # This endpoint is capable of generating JSON Web Key Sets for you. There a different strategies available, such as symmetric cryptographic keys (HS256, HS512) and asymetric cryptographic keys (RS256, ECDSA). If the specified JSON Web Key Set does not exist, it will be created.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set ID
    # @param create_json_web_key_set [CreateJsonWebKeySet] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JsonWebKeySet, Integer, Hash)>] JsonWebKeySet data, response status code and response headers
    def create_json_web_key_set_with_http_info(set, create_json_web_key_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JwkApi.create_json_web_key_set ...'
      end
      # verify the required parameter 'set' is set
      if @api_client.config.client_side_validation && set.nil?
        fail ArgumentError, "Missing the required parameter 'set' when calling JwkApi.create_json_web_key_set"
      end
      # verify the required parameter 'create_json_web_key_set' is set
      if @api_client.config.client_side_validation && create_json_web_key_set.nil?
        fail ArgumentError, "Missing the required parameter 'create_json_web_key_set' when calling JwkApi.create_json_web_key_set"
      end
      # resource path
      local_var_path = '/admin/keys/{set}'.sub('{' + 'set' + '}', CGI.escape(set.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_json_web_key_set)

      # return_type
      return_type = opts[:debug_return_type] || 'JsonWebKeySet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"JwkApi.create_json_web_key_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JwkApi#create_json_web_key_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete JSON Web Key
    # Use this endpoint to delete a single JSON Web Key.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set
    # @param kid [String] The JSON Web Key ID (kid)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_json_web_key(set, kid, opts = {})
      delete_json_web_key_with_http_info(set, kid, opts)
      nil
    end

    # Delete JSON Web Key
    # Use this endpoint to delete a single JSON Web Key.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set
    # @param kid [String] The JSON Web Key ID (kid)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_json_web_key_with_http_info(set, kid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JwkApi.delete_json_web_key ...'
      end
      # verify the required parameter 'set' is set
      if @api_client.config.client_side_validation && set.nil?
        fail ArgumentError, "Missing the required parameter 'set' when calling JwkApi.delete_json_web_key"
      end
      # verify the required parameter 'kid' is set
      if @api_client.config.client_side_validation && kid.nil?
        fail ArgumentError, "Missing the required parameter 'kid' when calling JwkApi.delete_json_web_key"
      end
      # resource path
      local_var_path = '/admin/keys/{set}/{kid}'.sub('{' + 'set' + '}', CGI.escape(set.to_s)).sub('{' + 'kid' + '}', CGI.escape(kid.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"JwkApi.delete_json_web_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JwkApi#delete_json_web_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete JSON Web Key Set
    # Use this endpoint to delete a complete JSON Web Key Set and all the keys in that set.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_json_web_key_set(set, opts = {})
      delete_json_web_key_set_with_http_info(set, opts)
      nil
    end

    # Delete JSON Web Key Set
    # Use this endpoint to delete a complete JSON Web Key Set and all the keys in that set.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_json_web_key_set_with_http_info(set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JwkApi.delete_json_web_key_set ...'
      end
      # verify the required parameter 'set' is set
      if @api_client.config.client_side_validation && set.nil?
        fail ArgumentError, "Missing the required parameter 'set' when calling JwkApi.delete_json_web_key_set"
      end
      # resource path
      local_var_path = '/admin/keys/{set}'.sub('{' + 'set' + '}', CGI.escape(set.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"JwkApi.delete_json_web_key_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JwkApi#delete_json_web_key_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get JSON Web Key
    # This endpoint returns a singular JSON Web Key contained in a set. It is identified by the set and the specific key ID (kid).
    # @param set [String] JSON Web Key Set ID
    # @param kid [String] JSON Web Key ID
    # @param [Hash] opts the optional parameters
    # @return [JsonWebKeySet]
    def get_json_web_key(set, kid, opts = {})
      data, _status_code, _headers = get_json_web_key_with_http_info(set, kid, opts)
      data
    end

    # Get JSON Web Key
    # This endpoint returns a singular JSON Web Key contained in a set. It is identified by the set and the specific key ID (kid).
    # @param set [String] JSON Web Key Set ID
    # @param kid [String] JSON Web Key ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(JsonWebKeySet, Integer, Hash)>] JsonWebKeySet data, response status code and response headers
    def get_json_web_key_with_http_info(set, kid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JwkApi.get_json_web_key ...'
      end
      # verify the required parameter 'set' is set
      if @api_client.config.client_side_validation && set.nil?
        fail ArgumentError, "Missing the required parameter 'set' when calling JwkApi.get_json_web_key"
      end
      # verify the required parameter 'kid' is set
      if @api_client.config.client_side_validation && kid.nil?
        fail ArgumentError, "Missing the required parameter 'kid' when calling JwkApi.get_json_web_key"
      end
      # resource path
      local_var_path = '/admin/keys/{set}/{kid}'.sub('{' + 'set' + '}', CGI.escape(set.to_s)).sub('{' + 'kid' + '}', CGI.escape(kid.to_s))

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
      return_type = opts[:debug_return_type] || 'JsonWebKeySet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"JwkApi.get_json_web_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JwkApi#get_json_web_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a JSON Web Key Set
    # This endpoint can be used to retrieve JWK Sets stored in ORY Hydra.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] JSON Web Key Set ID
    # @param [Hash] opts the optional parameters
    # @return [JsonWebKeySet]
    def get_json_web_key_set(set, opts = {})
      data, _status_code, _headers = get_json_web_key_set_with_http_info(set, opts)
      data
    end

    # Retrieve a JSON Web Key Set
    # This endpoint can be used to retrieve JWK Sets stored in ORY Hydra.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] JSON Web Key Set ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(JsonWebKeySet, Integer, Hash)>] JsonWebKeySet data, response status code and response headers
    def get_json_web_key_set_with_http_info(set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JwkApi.get_json_web_key_set ...'
      end
      # verify the required parameter 'set' is set
      if @api_client.config.client_side_validation && set.nil?
        fail ArgumentError, "Missing the required parameter 'set' when calling JwkApi.get_json_web_key_set"
      end
      # resource path
      local_var_path = '/admin/keys/{set}'.sub('{' + 'set' + '}', CGI.escape(set.to_s))

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
      return_type = opts[:debug_return_type] || 'JsonWebKeySet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"JwkApi.get_json_web_key_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JwkApi#get_json_web_key_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set JSON Web Key
    # Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set ID
    # @param kid [String] JSON Web Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [JsonWebKey] :json_web_key 
    # @return [JsonWebKey]
    def set_json_web_key(set, kid, opts = {})
      data, _status_code, _headers = set_json_web_key_with_http_info(set, kid, opts)
      data
    end

    # Set JSON Web Key
    # Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set ID
    # @param kid [String] JSON Web Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [JsonWebKey] :json_web_key 
    # @return [Array<(JsonWebKey, Integer, Hash)>] JsonWebKey data, response status code and response headers
    def set_json_web_key_with_http_info(set, kid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JwkApi.set_json_web_key ...'
      end
      # verify the required parameter 'set' is set
      if @api_client.config.client_side_validation && set.nil?
        fail ArgumentError, "Missing the required parameter 'set' when calling JwkApi.set_json_web_key"
      end
      # verify the required parameter 'kid' is set
      if @api_client.config.client_side_validation && kid.nil?
        fail ArgumentError, "Missing the required parameter 'kid' when calling JwkApi.set_json_web_key"
      end
      # resource path
      local_var_path = '/admin/keys/{set}/{kid}'.sub('{' + 'set' + '}', CGI.escape(set.to_s)).sub('{' + 'kid' + '}', CGI.escape(kid.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'json_web_key'])

      # return_type
      return_type = opts[:debug_return_type] || 'JsonWebKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"JwkApi.set_json_web_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JwkApi#set_json_web_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a JSON Web Key Set
    # Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set ID
    # @param [Hash] opts the optional parameters
    # @option opts [JsonWebKeySet] :json_web_key_set 
    # @return [JsonWebKeySet]
    def set_json_web_key_set(set, opts = {})
      data, _status_code, _headers = set_json_web_key_set_with_http_info(set, opts)
      data
    end

    # Update a JSON Web Key Set
    # Use this method if you do not want to let Hydra generate the JWKs for you, but instead save your own.  A JSON Web Key (JWK) is a JavaScript Object Notation (JSON) data structure that represents a cryptographic key. A JWK Set is a JSON data structure that represents a set of JWKs. A JSON Web Key is identified by its set and key id. ORY Hydra uses this functionality to store cryptographic keys used for TLS and JSON Web Tokens (such as OpenID Connect ID tokens), and allows storing user-defined keys as well.
    # @param set [String] The JSON Web Key Set ID
    # @param [Hash] opts the optional parameters
    # @option opts [JsonWebKeySet] :json_web_key_set 
    # @return [Array<(JsonWebKeySet, Integer, Hash)>] JsonWebKeySet data, response status code and response headers
    def set_json_web_key_set_with_http_info(set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JwkApi.set_json_web_key_set ...'
      end
      # verify the required parameter 'set' is set
      if @api_client.config.client_side_validation && set.nil?
        fail ArgumentError, "Missing the required parameter 'set' when calling JwkApi.set_json_web_key_set"
      end
      # resource path
      local_var_path = '/admin/keys/{set}'.sub('{' + 'set' + '}', CGI.escape(set.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'json_web_key_set'])

      # return_type
      return_type = opts[:debug_return_type] || 'JsonWebKeySet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"JwkApi.set_json_web_key_set",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JwkApi#set_json_web_key_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
