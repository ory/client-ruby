=begin
#Ory APIs

## Introduction Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.  ## SDKs This document describes the APIs available in the Ory Network. The APIs are available as SDKs for the following languages:  | Language       | Download SDK                                                     | Documentation                                                                        | | -------------- | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------ | | Dart           | [pub.dev](https://pub.dev/packages/ory_client)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/dart/README.md)       | | .NET           | [nuget.org](https://www.nuget.org/packages/Ory.Client/)          | [README](https://github.com/ory/sdk/blob/master/clients/client/dotnet/README.md)     | | Elixir         | [hex.pm](https://hex.pm/packages/ory_client)                     | [README](https://github.com/ory/sdk/blob/master/clients/client/elixir/README.md)     | | Go             | [github.com](https://github.com/ory/client-go)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/go/README.md)         | | Java           | [maven.org](https://search.maven.org/artifact/sh.ory/ory-client) | [README](https://github.com/ory/sdk/blob/master/clients/client/java/README.md)       | | JavaScript     | [npmjs.com](https://www.npmjs.com/package/@ory/client)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript/README.md) | | JavaScript (With fetch) | [npmjs.com](https://www.npmjs.com/package/@ory/client-fetch)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript-fetch/README.md) |  | PHP            | [packagist.org](https://packagist.org/packages/ory/client)       | [README](https://github.com/ory/sdk/blob/master/clients/client/php/README.md)        | | Python         | [pypi.org](https://pypi.org/project/ory-client/)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/python/README.md)     | | Ruby           | [rubygems.org](https://rubygems.org/gems/ory-client)             | [README](https://github.com/ory/sdk/blob/master/clients/client/ruby/README.md)       | | Rust           | [crates.io](https://crates.io/crates/ory-client)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/rust/README.md)       | 

The version of the OpenAPI document: v1.21.1
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module OryClient
  # Includes links to several endpoints (for example `/oauth2/token`) and exposes information on supported signature algorithms among others.
  class OidcConfiguration
    # OAuth 2.0 Authorization Endpoint URL
    attr_accessor :authorization_endpoint

    # OpenID Connect Back-Channel Logout Session Required  Boolean value specifying whether the OP can pass a sid (session ID) Claim in the Logout Token to identify the RP session with the OP. If supported, the sid Claim is also included in ID Tokens issued by the OP
    attr_accessor :backchannel_logout_session_supported

    # OpenID Connect Back-Channel Logout Supported  Boolean value specifying whether the OP supports back-channel logout, with true indicating support.
    attr_accessor :backchannel_logout_supported

    # OpenID Connect Claims Parameter Parameter Supported  Boolean value specifying whether the OP supports use of the claims parameter, with true indicating support.
    attr_accessor :claims_parameter_supported

    # OpenID Connect Supported Claims  JSON array containing a list of the Claim Names of the Claims that the OpenID Provider MAY be able to supply values for. Note that for privacy or other reasons, this might not be an exhaustive list.
    attr_accessor :claims_supported

    # OAuth 2.0 PKCE Supported Code Challenge Methods  JSON array containing a list of Proof Key for Code Exchange (PKCE) [RFC7636] code challenge methods supported by this authorization server.
    attr_accessor :code_challenge_methods_supported

    # OpenID Connect Verifiable Credentials Endpoint  Contains the URL of the Verifiable Credentials Endpoint.
    attr_accessor :credentials_endpoint_draft_00

    # OpenID Connect Verifiable Credentials Supported  JSON array containing a list of the Verifiable Credentials supported by this authorization server.
    attr_accessor :credentials_supported_draft_00

    # OAuth 2.0 Device Authorization Endpoint URL
    attr_accessor :device_authorization_endpoint

    # OpenID Connect End-Session Endpoint  URL at the OP to which an RP can perform a redirect to request that the End-User be logged out at the OP.
    attr_accessor :end_session_endpoint

    # OpenID Connect Front-Channel Logout Session Required  Boolean value specifying whether the OP can pass iss (issuer) and sid (session ID) query parameters to identify the RP session with the OP when the frontchannel_logout_uri is used. If supported, the sid Claim is also included in ID Tokens issued by the OP.
    attr_accessor :frontchannel_logout_session_supported

    # OpenID Connect Front-Channel Logout Supported  Boolean value specifying whether the OP supports HTTP-based logout, with true indicating support.
    attr_accessor :frontchannel_logout_supported

    # OAuth 2.0 Supported Grant Types  JSON array containing a list of the OAuth 2.0 Grant Type values that this OP supports.
    attr_accessor :grant_types_supported

    # OpenID Connect Default ID Token Signing Algorithms  Algorithm used to sign OpenID Connect ID Tokens.
    attr_accessor :id_token_signed_response_alg

    # OpenID Connect Supported ID Token Signing Algorithms  JSON array containing a list of the JWS signing algorithms (alg values) supported by the OP for the ID Token to encode the Claims in a JWT.
    attr_accessor :id_token_signing_alg_values_supported

    # OpenID Connect Issuer URL  An URL using the https scheme with no query or fragment component that the OP asserts as its IssuerURL Identifier. If IssuerURL discovery is supported , this value MUST be identical to the issuer value returned by WebFinger. This also MUST be identical to the iss Claim value in ID Tokens issued from this IssuerURL.
    attr_accessor :issuer

    # OpenID Connect Well-Known JSON Web Keys URL  URL of the OP's JSON Web Key Set [JWK] document. This contains the signing key(s) the RP uses to validate signatures from the OP. The JWK Set MAY also contain the Server's encryption key(s), which are used by RPs to encrypt requests to the Server. When both signing and encryption keys are made available, a use (Key Use) parameter value is REQUIRED for all keys in the referenced JWK Set to indicate each key's intended usage. Although some algorithms allow the same key to be used for both signatures and encryption, doing so is NOT RECOMMENDED, as it is less secure. The JWK x5c parameter MAY be used to provide X.509 representations of keys provided. When used, the bare key values MUST still be present and MUST match those in the certificate.
    attr_accessor :jwks_uri

    # OpenID Connect Dynamic Client Registration Endpoint URL
    attr_accessor :registration_endpoint

    # OpenID Connect Supported Request Object Signing Algorithms  JSON array containing a list of the JWS signing algorithms (alg values) supported by the OP for Request Objects, which are described in Section 6.1 of OpenID Connect Core 1.0 [OpenID.Core]. These algorithms are used both when the Request Object is passed by value (using the request parameter) and when it is passed by reference (using the request_uri parameter).
    attr_accessor :request_object_signing_alg_values_supported

    # OpenID Connect Request Parameter Supported  Boolean value specifying whether the OP supports use of the request parameter, with true indicating support.
    attr_accessor :request_parameter_supported

    # OpenID Connect Request URI Parameter Supported  Boolean value specifying whether the OP supports use of the request_uri parameter, with true indicating support.
    attr_accessor :request_uri_parameter_supported

    # OpenID Connect Requires Request URI Registration  Boolean value specifying whether the OP requires any request_uri values used to be pre-registered using the request_uris registration parameter.
    attr_accessor :require_request_uri_registration

    # OAuth 2.0 Supported Response Modes  JSON array containing a list of the OAuth 2.0 response_mode values that this OP supports.
    attr_accessor :response_modes_supported

    # OAuth 2.0 Supported Response Types  JSON array containing a list of the OAuth 2.0 response_type values that this OP supports. Dynamic OpenID Providers MUST support the code, id_token, and the token id_token Response Type values.
    attr_accessor :response_types_supported

    # OAuth 2.0 Token Revocation URL  URL of the authorization server's OAuth 2.0 revocation endpoint.
    attr_accessor :revocation_endpoint

    # OAuth 2.0 Supported Scope Values  JSON array containing a list of the OAuth 2.0 [RFC6749] scope values that this server supports. The server MUST support the openid scope value. Servers MAY choose not to advertise some supported scope values even when this parameter is used
    attr_accessor :scopes_supported

    # OpenID Connect Supported Subject Types  JSON array containing a list of the Subject Identifier types that this OP supports. Valid types include pairwise and public.
    attr_accessor :subject_types_supported

    # OAuth 2.0 Token Endpoint URL
    attr_accessor :token_endpoint

    # OAuth 2.0 Supported Client Authentication Methods  JSON array containing a list of Client Authentication methods supported by this Token Endpoint. The options are client_secret_post, client_secret_basic, client_secret_jwt, and private_key_jwt, as described in Section 9 of OpenID Connect Core 1.0
    attr_accessor :token_endpoint_auth_methods_supported

    # OpenID Connect Userinfo URL  URL of the OP's UserInfo Endpoint.
    attr_accessor :userinfo_endpoint

    # OpenID Connect User Userinfo Signing Algorithm  Algorithm used to sign OpenID Connect Userinfo Responses.
    attr_accessor :userinfo_signed_response_alg

    # OpenID Connect Supported Userinfo Signing Algorithm  JSON array containing a list of the JWS [JWS] signing algorithms (alg values) [JWA] supported by the UserInfo Endpoint to encode the Claims in a JWT [JWT].
    attr_accessor :userinfo_signing_alg_values_supported

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authorization_endpoint' => :'authorization_endpoint',
        :'backchannel_logout_session_supported' => :'backchannel_logout_session_supported',
        :'backchannel_logout_supported' => :'backchannel_logout_supported',
        :'claims_parameter_supported' => :'claims_parameter_supported',
        :'claims_supported' => :'claims_supported',
        :'code_challenge_methods_supported' => :'code_challenge_methods_supported',
        :'credentials_endpoint_draft_00' => :'credentials_endpoint_draft_00',
        :'credentials_supported_draft_00' => :'credentials_supported_draft_00',
        :'device_authorization_endpoint' => :'device_authorization_endpoint',
        :'end_session_endpoint' => :'end_session_endpoint',
        :'frontchannel_logout_session_supported' => :'frontchannel_logout_session_supported',
        :'frontchannel_logout_supported' => :'frontchannel_logout_supported',
        :'grant_types_supported' => :'grant_types_supported',
        :'id_token_signed_response_alg' => :'id_token_signed_response_alg',
        :'id_token_signing_alg_values_supported' => :'id_token_signing_alg_values_supported',
        :'issuer' => :'issuer',
        :'jwks_uri' => :'jwks_uri',
        :'registration_endpoint' => :'registration_endpoint',
        :'request_object_signing_alg_values_supported' => :'request_object_signing_alg_values_supported',
        :'request_parameter_supported' => :'request_parameter_supported',
        :'request_uri_parameter_supported' => :'request_uri_parameter_supported',
        :'require_request_uri_registration' => :'require_request_uri_registration',
        :'response_modes_supported' => :'response_modes_supported',
        :'response_types_supported' => :'response_types_supported',
        :'revocation_endpoint' => :'revocation_endpoint',
        :'scopes_supported' => :'scopes_supported',
        :'subject_types_supported' => :'subject_types_supported',
        :'token_endpoint' => :'token_endpoint',
        :'token_endpoint_auth_methods_supported' => :'token_endpoint_auth_methods_supported',
        :'userinfo_endpoint' => :'userinfo_endpoint',
        :'userinfo_signed_response_alg' => :'userinfo_signed_response_alg',
        :'userinfo_signing_alg_values_supported' => :'userinfo_signing_alg_values_supported'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authorization_endpoint' => :'String',
        :'backchannel_logout_session_supported' => :'Boolean',
        :'backchannel_logout_supported' => :'Boolean',
        :'claims_parameter_supported' => :'Boolean',
        :'claims_supported' => :'Array<String>',
        :'code_challenge_methods_supported' => :'Array<String>',
        :'credentials_endpoint_draft_00' => :'String',
        :'credentials_supported_draft_00' => :'Array<CredentialSupportedDraft00>',
        :'device_authorization_endpoint' => :'String',
        :'end_session_endpoint' => :'String',
        :'frontchannel_logout_session_supported' => :'Boolean',
        :'frontchannel_logout_supported' => :'Boolean',
        :'grant_types_supported' => :'Array<String>',
        :'id_token_signed_response_alg' => :'Array<String>',
        :'id_token_signing_alg_values_supported' => :'Array<String>',
        :'issuer' => :'String',
        :'jwks_uri' => :'String',
        :'registration_endpoint' => :'String',
        :'request_object_signing_alg_values_supported' => :'Array<String>',
        :'request_parameter_supported' => :'Boolean',
        :'request_uri_parameter_supported' => :'Boolean',
        :'require_request_uri_registration' => :'Boolean',
        :'response_modes_supported' => :'Array<String>',
        :'response_types_supported' => :'Array<String>',
        :'revocation_endpoint' => :'String',
        :'scopes_supported' => :'Array<String>',
        :'subject_types_supported' => :'Array<String>',
        :'token_endpoint' => :'String',
        :'token_endpoint_auth_methods_supported' => :'Array<String>',
        :'userinfo_endpoint' => :'String',
        :'userinfo_signed_response_alg' => :'Array<String>',
        :'userinfo_signing_alg_values_supported' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::OidcConfiguration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::OidcConfiguration`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authorization_endpoint')
        self.authorization_endpoint = attributes[:'authorization_endpoint']
      else
        self.authorization_endpoint = nil
      end

      if attributes.key?(:'backchannel_logout_session_supported')
        self.backchannel_logout_session_supported = attributes[:'backchannel_logout_session_supported']
      end

      if attributes.key?(:'backchannel_logout_supported')
        self.backchannel_logout_supported = attributes[:'backchannel_logout_supported']
      end

      if attributes.key?(:'claims_parameter_supported')
        self.claims_parameter_supported = attributes[:'claims_parameter_supported']
      end

      if attributes.key?(:'claims_supported')
        if (value = attributes[:'claims_supported']).is_a?(Array)
          self.claims_supported = value
        end
      end

      if attributes.key?(:'code_challenge_methods_supported')
        if (value = attributes[:'code_challenge_methods_supported']).is_a?(Array)
          self.code_challenge_methods_supported = value
        end
      end

      if attributes.key?(:'credentials_endpoint_draft_00')
        self.credentials_endpoint_draft_00 = attributes[:'credentials_endpoint_draft_00']
      end

      if attributes.key?(:'credentials_supported_draft_00')
        if (value = attributes[:'credentials_supported_draft_00']).is_a?(Array)
          self.credentials_supported_draft_00 = value
        end
      end

      if attributes.key?(:'device_authorization_endpoint')
        self.device_authorization_endpoint = attributes[:'device_authorization_endpoint']
      else
        self.device_authorization_endpoint = nil
      end

      if attributes.key?(:'end_session_endpoint')
        self.end_session_endpoint = attributes[:'end_session_endpoint']
      end

      if attributes.key?(:'frontchannel_logout_session_supported')
        self.frontchannel_logout_session_supported = attributes[:'frontchannel_logout_session_supported']
      end

      if attributes.key?(:'frontchannel_logout_supported')
        self.frontchannel_logout_supported = attributes[:'frontchannel_logout_supported']
      end

      if attributes.key?(:'grant_types_supported')
        if (value = attributes[:'grant_types_supported']).is_a?(Array)
          self.grant_types_supported = value
        end
      end

      if attributes.key?(:'id_token_signed_response_alg')
        if (value = attributes[:'id_token_signed_response_alg']).is_a?(Array)
          self.id_token_signed_response_alg = value
        end
      else
        self.id_token_signed_response_alg = nil
      end

      if attributes.key?(:'id_token_signing_alg_values_supported')
        if (value = attributes[:'id_token_signing_alg_values_supported']).is_a?(Array)
          self.id_token_signing_alg_values_supported = value
        end
      else
        self.id_token_signing_alg_values_supported = nil
      end

      if attributes.key?(:'issuer')
        self.issuer = attributes[:'issuer']
      else
        self.issuer = nil
      end

      if attributes.key?(:'jwks_uri')
        self.jwks_uri = attributes[:'jwks_uri']
      else
        self.jwks_uri = nil
      end

      if attributes.key?(:'registration_endpoint')
        self.registration_endpoint = attributes[:'registration_endpoint']
      end

      if attributes.key?(:'request_object_signing_alg_values_supported')
        if (value = attributes[:'request_object_signing_alg_values_supported']).is_a?(Array)
          self.request_object_signing_alg_values_supported = value
        end
      end

      if attributes.key?(:'request_parameter_supported')
        self.request_parameter_supported = attributes[:'request_parameter_supported']
      end

      if attributes.key?(:'request_uri_parameter_supported')
        self.request_uri_parameter_supported = attributes[:'request_uri_parameter_supported']
      end

      if attributes.key?(:'require_request_uri_registration')
        self.require_request_uri_registration = attributes[:'require_request_uri_registration']
      end

      if attributes.key?(:'response_modes_supported')
        if (value = attributes[:'response_modes_supported']).is_a?(Array)
          self.response_modes_supported = value
        end
      end

      if attributes.key?(:'response_types_supported')
        if (value = attributes[:'response_types_supported']).is_a?(Array)
          self.response_types_supported = value
        end
      else
        self.response_types_supported = nil
      end

      if attributes.key?(:'revocation_endpoint')
        self.revocation_endpoint = attributes[:'revocation_endpoint']
      end

      if attributes.key?(:'scopes_supported')
        if (value = attributes[:'scopes_supported']).is_a?(Array)
          self.scopes_supported = value
        end
      end

      if attributes.key?(:'subject_types_supported')
        if (value = attributes[:'subject_types_supported']).is_a?(Array)
          self.subject_types_supported = value
        end
      else
        self.subject_types_supported = nil
      end

      if attributes.key?(:'token_endpoint')
        self.token_endpoint = attributes[:'token_endpoint']
      else
        self.token_endpoint = nil
      end

      if attributes.key?(:'token_endpoint_auth_methods_supported')
        if (value = attributes[:'token_endpoint_auth_methods_supported']).is_a?(Array)
          self.token_endpoint_auth_methods_supported = value
        end
      end

      if attributes.key?(:'userinfo_endpoint')
        self.userinfo_endpoint = attributes[:'userinfo_endpoint']
      end

      if attributes.key?(:'userinfo_signed_response_alg')
        if (value = attributes[:'userinfo_signed_response_alg']).is_a?(Array)
          self.userinfo_signed_response_alg = value
        end
      else
        self.userinfo_signed_response_alg = nil
      end

      if attributes.key?(:'userinfo_signing_alg_values_supported')
        if (value = attributes[:'userinfo_signing_alg_values_supported']).is_a?(Array)
          self.userinfo_signing_alg_values_supported = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @authorization_endpoint.nil?
        invalid_properties.push('invalid value for "authorization_endpoint", authorization_endpoint cannot be nil.')
      end

      if @device_authorization_endpoint.nil?
        invalid_properties.push('invalid value for "device_authorization_endpoint", device_authorization_endpoint cannot be nil.')
      end

      if @id_token_signed_response_alg.nil?
        invalid_properties.push('invalid value for "id_token_signed_response_alg", id_token_signed_response_alg cannot be nil.')
      end

      if @id_token_signing_alg_values_supported.nil?
        invalid_properties.push('invalid value for "id_token_signing_alg_values_supported", id_token_signing_alg_values_supported cannot be nil.')
      end

      if @issuer.nil?
        invalid_properties.push('invalid value for "issuer", issuer cannot be nil.')
      end

      if @jwks_uri.nil?
        invalid_properties.push('invalid value for "jwks_uri", jwks_uri cannot be nil.')
      end

      if @response_types_supported.nil?
        invalid_properties.push('invalid value for "response_types_supported", response_types_supported cannot be nil.')
      end

      if @subject_types_supported.nil?
        invalid_properties.push('invalid value for "subject_types_supported", subject_types_supported cannot be nil.')
      end

      if @token_endpoint.nil?
        invalid_properties.push('invalid value for "token_endpoint", token_endpoint cannot be nil.')
      end

      if @userinfo_signed_response_alg.nil?
        invalid_properties.push('invalid value for "userinfo_signed_response_alg", userinfo_signed_response_alg cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @authorization_endpoint.nil?
      return false if @device_authorization_endpoint.nil?
      return false if @id_token_signed_response_alg.nil?
      return false if @id_token_signing_alg_values_supported.nil?
      return false if @issuer.nil?
      return false if @jwks_uri.nil?
      return false if @response_types_supported.nil?
      return false if @subject_types_supported.nil?
      return false if @token_endpoint.nil?
      return false if @userinfo_signed_response_alg.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_endpoint Value to be assigned
    def authorization_endpoint=(authorization_endpoint)
      if authorization_endpoint.nil?
        fail ArgumentError, 'authorization_endpoint cannot be nil'
      end

      @authorization_endpoint = authorization_endpoint
    end

    # Custom attribute writer method with validation
    # @param [Object] device_authorization_endpoint Value to be assigned
    def device_authorization_endpoint=(device_authorization_endpoint)
      if device_authorization_endpoint.nil?
        fail ArgumentError, 'device_authorization_endpoint cannot be nil'
      end

      @device_authorization_endpoint = device_authorization_endpoint
    end

    # Custom attribute writer method with validation
    # @param [Object] id_token_signed_response_alg Value to be assigned
    def id_token_signed_response_alg=(id_token_signed_response_alg)
      if id_token_signed_response_alg.nil?
        fail ArgumentError, 'id_token_signed_response_alg cannot be nil'
      end

      @id_token_signed_response_alg = id_token_signed_response_alg
    end

    # Custom attribute writer method with validation
    # @param [Object] id_token_signing_alg_values_supported Value to be assigned
    def id_token_signing_alg_values_supported=(id_token_signing_alg_values_supported)
      if id_token_signing_alg_values_supported.nil?
        fail ArgumentError, 'id_token_signing_alg_values_supported cannot be nil'
      end

      @id_token_signing_alg_values_supported = id_token_signing_alg_values_supported
    end

    # Custom attribute writer method with validation
    # @param [Object] issuer Value to be assigned
    def issuer=(issuer)
      if issuer.nil?
        fail ArgumentError, 'issuer cannot be nil'
      end

      @issuer = issuer
    end

    # Custom attribute writer method with validation
    # @param [Object] jwks_uri Value to be assigned
    def jwks_uri=(jwks_uri)
      if jwks_uri.nil?
        fail ArgumentError, 'jwks_uri cannot be nil'
      end

      @jwks_uri = jwks_uri
    end

    # Custom attribute writer method with validation
    # @param [Object] response_types_supported Value to be assigned
    def response_types_supported=(response_types_supported)
      if response_types_supported.nil?
        fail ArgumentError, 'response_types_supported cannot be nil'
      end

      @response_types_supported = response_types_supported
    end

    # Custom attribute writer method with validation
    # @param [Object] subject_types_supported Value to be assigned
    def subject_types_supported=(subject_types_supported)
      if subject_types_supported.nil?
        fail ArgumentError, 'subject_types_supported cannot be nil'
      end

      @subject_types_supported = subject_types_supported
    end

    # Custom attribute writer method with validation
    # @param [Object] token_endpoint Value to be assigned
    def token_endpoint=(token_endpoint)
      if token_endpoint.nil?
        fail ArgumentError, 'token_endpoint cannot be nil'
      end

      @token_endpoint = token_endpoint
    end

    # Custom attribute writer method with validation
    # @param [Object] userinfo_signed_response_alg Value to be assigned
    def userinfo_signed_response_alg=(userinfo_signed_response_alg)
      if userinfo_signed_response_alg.nil?
        fail ArgumentError, 'userinfo_signed_response_alg cannot be nil'
      end

      @userinfo_signed_response_alg = userinfo_signed_response_alg
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authorization_endpoint == o.authorization_endpoint &&
          backchannel_logout_session_supported == o.backchannel_logout_session_supported &&
          backchannel_logout_supported == o.backchannel_logout_supported &&
          claims_parameter_supported == o.claims_parameter_supported &&
          claims_supported == o.claims_supported &&
          code_challenge_methods_supported == o.code_challenge_methods_supported &&
          credentials_endpoint_draft_00 == o.credentials_endpoint_draft_00 &&
          credentials_supported_draft_00 == o.credentials_supported_draft_00 &&
          device_authorization_endpoint == o.device_authorization_endpoint &&
          end_session_endpoint == o.end_session_endpoint &&
          frontchannel_logout_session_supported == o.frontchannel_logout_session_supported &&
          frontchannel_logout_supported == o.frontchannel_logout_supported &&
          grant_types_supported == o.grant_types_supported &&
          id_token_signed_response_alg == o.id_token_signed_response_alg &&
          id_token_signing_alg_values_supported == o.id_token_signing_alg_values_supported &&
          issuer == o.issuer &&
          jwks_uri == o.jwks_uri &&
          registration_endpoint == o.registration_endpoint &&
          request_object_signing_alg_values_supported == o.request_object_signing_alg_values_supported &&
          request_parameter_supported == o.request_parameter_supported &&
          request_uri_parameter_supported == o.request_uri_parameter_supported &&
          require_request_uri_registration == o.require_request_uri_registration &&
          response_modes_supported == o.response_modes_supported &&
          response_types_supported == o.response_types_supported &&
          revocation_endpoint == o.revocation_endpoint &&
          scopes_supported == o.scopes_supported &&
          subject_types_supported == o.subject_types_supported &&
          token_endpoint == o.token_endpoint &&
          token_endpoint_auth_methods_supported == o.token_endpoint_auth_methods_supported &&
          userinfo_endpoint == o.userinfo_endpoint &&
          userinfo_signed_response_alg == o.userinfo_signed_response_alg &&
          userinfo_signing_alg_values_supported == o.userinfo_signing_alg_values_supported
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authorization_endpoint, backchannel_logout_session_supported, backchannel_logout_supported, claims_parameter_supported, claims_supported, code_challenge_methods_supported, credentials_endpoint_draft_00, credentials_supported_draft_00, device_authorization_endpoint, end_session_endpoint, frontchannel_logout_session_supported, frontchannel_logout_supported, grant_types_supported, id_token_signed_response_alg, id_token_signing_alg_values_supported, issuer, jwks_uri, registration_endpoint, request_object_signing_alg_values_supported, request_parameter_supported, request_uri_parameter_supported, require_request_uri_registration, response_modes_supported, response_types_supported, revocation_endpoint, scopes_supported, subject_types_supported, token_endpoint, token_endpoint_auth_methods_supported, userinfo_endpoint, userinfo_signed_response_alg, userinfo_signing_alg_values_supported].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OryClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
