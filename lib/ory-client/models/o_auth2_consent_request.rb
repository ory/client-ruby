=begin
#Ory APIs

## Introduction Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.  ## SDKs This document describes the APIs available in the Ory Network. The APIs are available as SDKs for the following languages:  | Language       | Download SDK                                                     | Documentation                                                                        | | -------------- | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------ | | Dart           | [pub.dev](https://pub.dev/packages/ory_client)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/dart/README.md)       | | .NET           | [nuget.org](https://www.nuget.org/packages/Ory.Client/)          | [README](https://github.com/ory/sdk/blob/master/clients/client/dotnet/README.md)     | | Elixir         | [hex.pm](https://hex.pm/packages/ory_client)                     | [README](https://github.com/ory/sdk/blob/master/clients/client/elixir/README.md)     | | Go             | [github.com](https://github.com/ory/client-go)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/go/README.md)         | | Java           | [maven.org](https://search.maven.org/artifact/sh.ory/ory-client) | [README](https://github.com/ory/sdk/blob/master/clients/client/java/README.md)       | | JavaScript     | [npmjs.com](https://www.npmjs.com/package/@ory/client)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript/README.md) | | JavaScript (With fetch) | [npmjs.com](https://www.npmjs.com/package/@ory/client-fetch)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript-fetch/README.md) |  | PHP            | [packagist.org](https://packagist.org/packages/ory/client)       | [README](https://github.com/ory/sdk/blob/master/clients/client/php/README.md)        | | Python         | [pypi.org](https://pypi.org/project/ory-client/)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/python/README.md)     | | Ruby           | [rubygems.org](https://rubygems.org/gems/ory-client)             | [README](https://github.com/ory/sdk/blob/master/clients/client/ruby/README.md)       | | Rust           | [crates.io](https://crates.io/crates/ory-client)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/rust/README.md)       | 

The version of the OpenAPI document: v1.18.4
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module OryClient
  class OAuth2ConsentRequest
    # ACR represents the Authentication AuthorizationContext Class Reference value for this authentication session. You can use it to express that, for example, a user authenticated using two factor authentication.
    attr_accessor :acr

    attr_accessor :amr

    # Challenge is used to retrieve/accept/deny the consent request.
    attr_accessor :challenge

    attr_accessor :client

    # ConsentRequestID is the ID of the consent request.
    attr_accessor :consent_request_id

    attr_accessor :context

    # LoginChallenge is the login challenge this consent challenge belongs to. It can be used to associate a login and consent request in the login & consent app.
    attr_accessor :login_challenge

    # LoginSessionID is the login session ID. If the user-agent reuses a login session (via cookie / remember flag) this ID will remain the same. If the user-agent did not have an existing authentication session (e.g. remember is false) this will be a new random value. This value is used as the \"sid\" parameter in the ID Token and in OIDC Front-/Back- channel logout. It's value can generally be used to associate consecutive login requests by a certain user.
    attr_accessor :login_session_id

    attr_accessor :oidc_context

    # RequestURL is the original OAuth 2.0 Authorization URL requested by the OAuth 2.0 client. It is the URL which initiates the OAuth 2.0 Authorization Code or OAuth 2.0 Implicit flow. This URL is typically not needed, but might come in handy if you want to deal with additional request parameters.
    attr_accessor :request_url

    attr_accessor :requested_access_token_audience

    attr_accessor :requested_scope

    # Skip, if true, implies that the client has requested the same scopes from the same user previously. If true, you must not ask the user to grant the requested scopes. You must however either allow or deny the consent request using the usual API call.
    attr_accessor :skip

    # Subject is the user ID of the end-user that authenticated. Now, that end user needs to grant or deny the scope requested by the OAuth 2.0 client.
    attr_accessor :subject

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'acr' => :'acr',
        :'amr' => :'amr',
        :'challenge' => :'challenge',
        :'client' => :'client',
        :'consent_request_id' => :'consent_request_id',
        :'context' => :'context',
        :'login_challenge' => :'login_challenge',
        :'login_session_id' => :'login_session_id',
        :'oidc_context' => :'oidc_context',
        :'request_url' => :'request_url',
        :'requested_access_token_audience' => :'requested_access_token_audience',
        :'requested_scope' => :'requested_scope',
        :'skip' => :'skip',
        :'subject' => :'subject'
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
        :'acr' => :'String',
        :'amr' => :'Array<String>',
        :'challenge' => :'String',
        :'client' => :'OAuth2Client',
        :'consent_request_id' => :'String',
        :'context' => :'Object',
        :'login_challenge' => :'String',
        :'login_session_id' => :'String',
        :'oidc_context' => :'OAuth2ConsentRequestOpenIDConnectContext',
        :'request_url' => :'String',
        :'requested_access_token_audience' => :'Array<String>',
        :'requested_scope' => :'Array<String>',
        :'skip' => :'Boolean',
        :'subject' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::OAuth2ConsentRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::OAuth2ConsentRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'acr')
        self.acr = attributes[:'acr']
      end

      if attributes.key?(:'amr')
        if (value = attributes[:'amr']).is_a?(Array)
          self.amr = value
        end
      end

      if attributes.key?(:'challenge')
        self.challenge = attributes[:'challenge']
      else
        self.challenge = nil
      end

      if attributes.key?(:'client')
        self.client = attributes[:'client']
      end

      if attributes.key?(:'consent_request_id')
        self.consent_request_id = attributes[:'consent_request_id']
      end

      if attributes.key?(:'context')
        self.context = attributes[:'context']
      end

      if attributes.key?(:'login_challenge')
        self.login_challenge = attributes[:'login_challenge']
      end

      if attributes.key?(:'login_session_id')
        self.login_session_id = attributes[:'login_session_id']
      end

      if attributes.key?(:'oidc_context')
        self.oidc_context = attributes[:'oidc_context']
      end

      if attributes.key?(:'request_url')
        self.request_url = attributes[:'request_url']
      end

      if attributes.key?(:'requested_access_token_audience')
        if (value = attributes[:'requested_access_token_audience']).is_a?(Array)
          self.requested_access_token_audience = value
        end
      end

      if attributes.key?(:'requested_scope')
        if (value = attributes[:'requested_scope']).is_a?(Array)
          self.requested_scope = value
        end
      end

      if attributes.key?(:'skip')
        self.skip = attributes[:'skip']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @challenge.nil?
        invalid_properties.push('invalid value for "challenge", challenge cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @challenge.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] challenge Value to be assigned
    def challenge=(challenge)
      if challenge.nil?
        fail ArgumentError, 'challenge cannot be nil'
      end

      @challenge = challenge
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acr == o.acr &&
          amr == o.amr &&
          challenge == o.challenge &&
          client == o.client &&
          consent_request_id == o.consent_request_id &&
          context == o.context &&
          login_challenge == o.login_challenge &&
          login_session_id == o.login_session_id &&
          oidc_context == o.oidc_context &&
          request_url == o.request_url &&
          requested_access_token_audience == o.requested_access_token_audience &&
          requested_scope == o.requested_scope &&
          skip == o.skip &&
          subject == o.subject
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [acr, amr, challenge, client, consent_request_id, context, login_challenge, login_session_id, oidc_context, request_url, requested_access_token_audience, requested_scope, skip, subject].hash
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
