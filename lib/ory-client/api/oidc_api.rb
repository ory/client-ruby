=begin
#Ory APIs

## Introduction Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.  ## SDKs This document describes the APIs available in the Ory Network. The APIs are available as SDKs for the following languages:  | Language       | Download SDK                                                     | Documentation                                                                        | | -------------- | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------ | | Dart           | [pub.dev](https://pub.dev/packages/ory_client)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/dart/README.md)       | | .NET           | [nuget.org](https://www.nuget.org/packages/Ory.Client/)          | [README](https://github.com/ory/sdk/blob/master/clients/client/dotnet/README.md)     | | Elixir         | [hex.pm](https://hex.pm/packages/ory_client)                     | [README](https://github.com/ory/sdk/blob/master/clients/client/elixir/README.md)     | | Go             | [github.com](https://github.com/ory/client-go)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/go/README.md)         | | Java           | [maven.org](https://search.maven.org/artifact/sh.ory/ory-client) | [README](https://github.com/ory/sdk/blob/master/clients/client/java/README.md)       | | JavaScript     | [npmjs.com](https://www.npmjs.com/package/@ory/client)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript/README.md) | | JavaScript (With fetch) | [npmjs.com](https://www.npmjs.com/package/@ory/client-fetch)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript-fetch/README.md) |  | PHP            | [packagist.org](https://packagist.org/packages/ory/client)       | [README](https://github.com/ory/sdk/blob/master/clients/client/php/README.md)        | | Python         | [pypi.org](https://pypi.org/project/ory-client/)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/python/README.md)     | | Ruby           | [rubygems.org](https://rubygems.org/gems/ory-client)             | [README](https://github.com/ory/sdk/blob/master/clients/client/ruby/README.md)       | | Rust           | [crates.io](https://crates.io/crates/ory-client)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/rust/README.md)       | 

The version of the OpenAPI document: v1.21.1
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module OryClient
  class OidcApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Register OAuth2 Client using OpenID Dynamic Client Registration
    # This endpoint behaves like the administrative counterpart (`createOAuth2Client`) but is capable of facing the public internet directly and can be used in self-service. It implements the OpenID Connect Dynamic Client Registration Protocol. This feature needs to be enabled in the configuration. This endpoint is disabled by default. It can be enabled by an administrator.  Please note that using this endpoint you are not able to choose the `client_secret` nor the `client_id` as those values will be server generated when specifying `token_endpoint_auth_method` as `client_secret_basic` or `client_secret_post`.  The `client_secret` will be returned in the response and you will not be able to retrieve it later on. Write the secret down and keep it somewhere safe.
    # @param o_auth2_client [OAuth2Client] Dynamic Client Registration Request Body
    # @param [Hash] opts the optional parameters
    # @return [OAuth2Client]
    def create_oidc_dynamic_client(o_auth2_client, opts = {})
      data, _status_code, _headers = create_oidc_dynamic_client_with_http_info(o_auth2_client, opts)
      data
    end

    # Register OAuth2 Client using OpenID Dynamic Client Registration
    # This endpoint behaves like the administrative counterpart (&#x60;createOAuth2Client&#x60;) but is capable of facing the public internet directly and can be used in self-service. It implements the OpenID Connect Dynamic Client Registration Protocol. This feature needs to be enabled in the configuration. This endpoint is disabled by default. It can be enabled by an administrator.  Please note that using this endpoint you are not able to choose the &#x60;client_secret&#x60; nor the &#x60;client_id&#x60; as those values will be server generated when specifying &#x60;token_endpoint_auth_method&#x60; as &#x60;client_secret_basic&#x60; or &#x60;client_secret_post&#x60;.  The &#x60;client_secret&#x60; will be returned in the response and you will not be able to retrieve it later on. Write the secret down and keep it somewhere safe.
    # @param o_auth2_client [OAuth2Client] Dynamic Client Registration Request Body
    # @param [Hash] opts the optional parameters
    # @return [Array<(OAuth2Client, Integer, Hash)>] OAuth2Client data, response status code and response headers
    def create_oidc_dynamic_client_with_http_info(o_auth2_client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.create_oidc_dynamic_client ...'
      end
      # verify the required parameter 'o_auth2_client' is set
      if @api_client.config.client_side_validation && o_auth2_client.nil?
        fail ArgumentError, "Missing the required parameter 'o_auth2_client' when calling OidcApi.create_oidc_dynamic_client"
      end
      # resource path
      local_var_path = '/oauth2/register'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(o_auth2_client)

      # return_type
      return_type = opts[:debug_return_type] || 'OAuth2Client'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OidcApi.create_oidc_dynamic_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#create_oidc_dynamic_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Issues a Verifiable Credential
    # This endpoint creates a verifiable credential that attests that the user authenticated with the provided access token owns a certain public/private key pair.  More information can be found at https://openid.net/specs/openid-connect-userinfo-vc-1_0.html.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateVerifiableCredentialRequestBody] :create_verifiable_credential_request_body 
    # @return [VerifiableCredentialResponse]
    def create_verifiable_credential(opts = {})
      data, _status_code, _headers = create_verifiable_credential_with_http_info(opts)
      data
    end

    # Issues a Verifiable Credential
    # This endpoint creates a verifiable credential that attests that the user authenticated with the provided access token owns a certain public/private key pair.  More information can be found at https://openid.net/specs/openid-connect-userinfo-vc-1_0.html.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateVerifiableCredentialRequestBody] :create_verifiable_credential_request_body 
    # @return [Array<(VerifiableCredentialResponse, Integer, Hash)>] VerifiableCredentialResponse data, response status code and response headers
    def create_verifiable_credential_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.create_verifiable_credential ...'
      end
      # resource path
      local_var_path = '/credentials'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_verifiable_credential_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'VerifiableCredentialResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OidcApi.create_verifiable_credential",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#create_verifiable_credential\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete OAuth 2.0 Client using the OpenID Dynamic Client Registration Management Protocol
    # This endpoint behaves like the administrative counterpart (`deleteOAuth2Client`) but is capable of facing the public internet directly and can be used in self-service. It implements the OpenID Connect Dynamic Client Registration Protocol. This feature needs to be enabled in the configuration. This endpoint is disabled by default. It can be enabled by an administrator.  To use this endpoint, you will need to present the client's authentication credentials. If the OAuth2 Client uses the Token Endpoint Authentication Method `client_secret_post`, you need to present the client secret in the URL query. If it uses `client_secret_basic`, present the Client ID and the Client Secret in the Authorization header.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
    # @param id [String] The id of the OAuth 2.0 Client.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_oidc_dynamic_client(id, opts = {})
      delete_oidc_dynamic_client_with_http_info(id, opts)
      nil
    end

    # Delete OAuth 2.0 Client using the OpenID Dynamic Client Registration Management Protocol
    # This endpoint behaves like the administrative counterpart (&#x60;deleteOAuth2Client&#x60;) but is capable of facing the public internet directly and can be used in self-service. It implements the OpenID Connect Dynamic Client Registration Protocol. This feature needs to be enabled in the configuration. This endpoint is disabled by default. It can be enabled by an administrator.  To use this endpoint, you will need to present the client&#39;s authentication credentials. If the OAuth2 Client uses the Token Endpoint Authentication Method &#x60;client_secret_post&#x60;, you need to present the client secret in the URL query. If it uses &#x60;client_secret_basic&#x60;, present the Client ID and the Client Secret in the Authorization header.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
    # @param id [String] The id of the OAuth 2.0 Client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_oidc_dynamic_client_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.delete_oidc_dynamic_client ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OidcApi.delete_oidc_dynamic_client"
      end
      # resource path
      local_var_path = '/oauth2/register/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer']

      new_options = opts.merge(
        :operation => :"OidcApi.delete_oidc_dynamic_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#delete_oidc_dynamic_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # OpenID Connect Discovery
    # A mechanism for an OpenID Connect Relying Party to discover the End-User's OpenID Provider and obtain information needed to interact with it, including its OAuth 2.0 endpoint locations.  Popular libraries for OpenID Connect clients include oidc-client-js (JavaScript), go-oidc (Golang), and others. For a full list of clients go here: https://openid.net/developers/certified/
    # @param [Hash] opts the optional parameters
    # @return [OidcConfiguration]
    def discover_oidc_configuration(opts = {})
      data, _status_code, _headers = discover_oidc_configuration_with_http_info(opts)
      data
    end

    # OpenID Connect Discovery
    # A mechanism for an OpenID Connect Relying Party to discover the End-User&#39;s OpenID Provider and obtain information needed to interact with it, including its OAuth 2.0 endpoint locations.  Popular libraries for OpenID Connect clients include oidc-client-js (JavaScript), go-oidc (Golang), and others. For a full list of clients go here: https://openid.net/developers/certified/
    # @param [Hash] opts the optional parameters
    # @return [Array<(OidcConfiguration, Integer, Hash)>] OidcConfiguration data, response status code and response headers
    def discover_oidc_configuration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.discover_oidc_configuration ...'
      end
      # resource path
      local_var_path = '/.well-known/openid-configuration'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OidcConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OidcApi.discover_oidc_configuration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#discover_oidc_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get OAuth2 Client using OpenID Dynamic Client Registration
    # This endpoint behaves like the administrative counterpart (`getOAuth2Client`) but is capable of facing the public internet directly and can be used in self-service. It implements the OpenID Connect Dynamic Client Registration Protocol.  To use this endpoint, you will need to present the client's authentication credentials. If the OAuth2 Client uses the Token Endpoint Authentication Method `client_secret_post`, you need to present the client secret in the URL query. If it uses `client_secret_basic`, present the Client ID and the Client Secret in the Authorization header.
    # @param id [String] The id of the OAuth 2.0 Client.
    # @param [Hash] opts the optional parameters
    # @return [OAuth2Client]
    def get_oidc_dynamic_client(id, opts = {})
      data, _status_code, _headers = get_oidc_dynamic_client_with_http_info(id, opts)
      data
    end

    # Get OAuth2 Client using OpenID Dynamic Client Registration
    # This endpoint behaves like the administrative counterpart (&#x60;getOAuth2Client&#x60;) but is capable of facing the public internet directly and can be used in self-service. It implements the OpenID Connect Dynamic Client Registration Protocol.  To use this endpoint, you will need to present the client&#39;s authentication credentials. If the OAuth2 Client uses the Token Endpoint Authentication Method &#x60;client_secret_post&#x60;, you need to present the client secret in the URL query. If it uses &#x60;client_secret_basic&#x60;, present the Client ID and the Client Secret in the Authorization header.
    # @param id [String] The id of the OAuth 2.0 Client.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OAuth2Client, Integer, Hash)>] OAuth2Client data, response status code and response headers
    def get_oidc_dynamic_client_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.get_oidc_dynamic_client ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OidcApi.get_oidc_dynamic_client"
      end
      # resource path
      local_var_path = '/oauth2/register/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OAuth2Client'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer']

      new_options = opts.merge(
        :operation => :"OidcApi.get_oidc_dynamic_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#get_oidc_dynamic_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # OpenID Connect Userinfo
    # This endpoint returns the payload of the ID Token, including `session.id_token` values, of the provided OAuth 2.0 Access Token's consent request.  In the case of authentication error, a WWW-Authenticate header might be set in the response with more information about the error. See [the spec](https://datatracker.ietf.org/doc/html/rfc6750#section-3) for more details about header format.
    # @param [Hash] opts the optional parameters
    # @return [OidcUserInfo]
    def get_oidc_user_info(opts = {})
      data, _status_code, _headers = get_oidc_user_info_with_http_info(opts)
      data
    end

    # OpenID Connect Userinfo
    # This endpoint returns the payload of the ID Token, including &#x60;session.id_token&#x60; values, of the provided OAuth 2.0 Access Token&#39;s consent request.  In the case of authentication error, a WWW-Authenticate header might be set in the response with more information about the error. See [the spec](https://datatracker.ietf.org/doc/html/rfc6750#section-3) for more details about header format.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OidcUserInfo, Integer, Hash)>] OidcUserInfo data, response status code and response headers
    def get_oidc_user_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.get_oidc_user_info ...'
      end
      # resource path
      local_var_path = '/userinfo'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OidcUserInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2']

      new_options = opts.merge(
        :operation => :"OidcApi.get_oidc_user_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#get_oidc_user_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # OpenID Connect Front- and Back-channel Enabled Logout
    # This endpoint initiates and completes user logout at the Ory OAuth2 & OpenID provider and initiates OpenID Connect Front- / Back-channel logout:  https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html  Back-channel logout is performed asynchronously and does not affect logout flow.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def revoke_oidc_session(opts = {})
      revoke_oidc_session_with_http_info(opts)
      nil
    end

    # OpenID Connect Front- and Back-channel Enabled Logout
    # This endpoint initiates and completes user logout at the Ory OAuth2 &amp; OpenID provider and initiates OpenID Connect Front- / Back-channel logout:  https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html  Back-channel logout is performed asynchronously and does not affect logout flow.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def revoke_oidc_session_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.revoke_oidc_session ...'
      end
      # resource path
      local_var_path = '/oauth2/sessions/logout'

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
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OidcApi.revoke_oidc_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#revoke_oidc_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set OAuth2 Client using OpenID Dynamic Client Registration
    # This endpoint behaves like the administrative counterpart (`setOAuth2Client`) but is capable of facing the public internet directly to be used by third parties. It implements the OpenID Connect Dynamic Client Registration Protocol.  This feature is disabled per default. It can be enabled by a system administrator.  If you pass `client_secret` the secret is used, otherwise the existing secret is used. If set, the secret is echoed in the response. It is not possible to retrieve it later on.  To use this endpoint, you will need to present the client's authentication credentials. If the OAuth2 Client uses the Token Endpoint Authentication Method `client_secret_post`, you need to present the client secret in the URL query. If it uses `client_secret_basic`, present the Client ID and the Client Secret in the Authorization header.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
    # @param id [String] OAuth 2.0 Client ID
    # @param o_auth2_client [OAuth2Client] OAuth 2.0 Client Request Body
    # @param [Hash] opts the optional parameters
    # @return [OAuth2Client]
    def set_oidc_dynamic_client(id, o_auth2_client, opts = {})
      data, _status_code, _headers = set_oidc_dynamic_client_with_http_info(id, o_auth2_client, opts)
      data
    end

    # Set OAuth2 Client using OpenID Dynamic Client Registration
    # This endpoint behaves like the administrative counterpart (&#x60;setOAuth2Client&#x60;) but is capable of facing the public internet directly to be used by third parties. It implements the OpenID Connect Dynamic Client Registration Protocol.  This feature is disabled per default. It can be enabled by a system administrator.  If you pass &#x60;client_secret&#x60; the secret is used, otherwise the existing secret is used. If set, the secret is echoed in the response. It is not possible to retrieve it later on.  To use this endpoint, you will need to present the client&#39;s authentication credentials. If the OAuth2 Client uses the Token Endpoint Authentication Method &#x60;client_secret_post&#x60;, you need to present the client secret in the URL query. If it uses &#x60;client_secret_basic&#x60;, present the Client ID and the Client Secret in the Authorization header.  OAuth 2.0 clients are used to perform OAuth 2.0 and OpenID Connect flows. Usually, OAuth 2.0 clients are generated for applications which want to consume your OAuth 2.0 or OpenID Connect capabilities.
    # @param id [String] OAuth 2.0 Client ID
    # @param o_auth2_client [OAuth2Client] OAuth 2.0 Client Request Body
    # @param [Hash] opts the optional parameters
    # @return [Array<(OAuth2Client, Integer, Hash)>] OAuth2Client data, response status code and response headers
    def set_oidc_dynamic_client_with_http_info(id, o_auth2_client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OidcApi.set_oidc_dynamic_client ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OidcApi.set_oidc_dynamic_client"
      end
      # verify the required parameter 'o_auth2_client' is set
      if @api_client.config.client_side_validation && o_auth2_client.nil?
        fail ArgumentError, "Missing the required parameter 'o_auth2_client' when calling OidcApi.set_oidc_dynamic_client"
      end
      # resource path
      local_var_path = '/oauth2/register/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(o_auth2_client)

      # return_type
      return_type = opts[:debug_return_type] || 'OAuth2Client'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer']

      new_options = opts.merge(
        :operation => :"OidcApi.set_oidc_dynamic_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OidcApi#set_oidc_dynamic_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
