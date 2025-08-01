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
  class RegistrationFlow
    # Active, if set, contains the registration method that is being used. It is initially not set. password CredentialsTypePassword oidc CredentialsTypeOIDC totp CredentialsTypeTOTP lookup_secret CredentialsTypeLookup webauthn CredentialsTypeWebAuthn code CredentialsTypeCodeAuth passkey CredentialsTypePasskey profile CredentialsTypeProfile saml CredentialsTypeSAML link_recovery CredentialsTypeRecoveryLink  CredentialsTypeRecoveryLink is a special credential type linked to the link strategy (recovery flow).  It is not used within the credentials object itself. code_recovery CredentialsTypeRecoveryCode
    attr_accessor :active

    # ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated.
    attr_accessor :expires_at

    # ID represents the flow's unique ID. When performing the registration flow, this represents the id in the registration ui's query parameter: http://<selfservice.flows.registration.ui_url>/?flow=<id>
    attr_accessor :id

    # IssuedAt is the time (UTC) when the flow occurred.
    attr_accessor :issued_at

    # Ory OAuth 2.0 Login Challenge.  This value is set using the `login_challenge` query parameter of the registration and login endpoints. If set will cooperate with Ory OAuth2 and OpenID to act as an OAuth2 server / OpenID Provider.
    attr_accessor :oauth2_login_challenge

    attr_accessor :oauth2_login_request

    attr_accessor :organization_id

    # RequestURL is the initial URL that was requested from Ory Kratos. It can be used to forward information contained in the URL's path or query for example.
    attr_accessor :request_url

    # ReturnTo contains the requested return_to URL.
    attr_accessor :return_to

    # SessionTokenExchangeCode holds the secret code that the client can use to retrieve a session token after the flow has been completed. This is only set if the client has requested a session token exchange code, and if the flow is of type \"api\", and only on creating the flow.
    attr_accessor :session_token_exchange_code

    # State represents the state of this request:  choose_method: ask the user to choose a method (e.g. registration with email) sent_email: the email has been sent to the user passed_challenge: the request was successful and the registration challenge was passed.
    attr_accessor :state

    # TransientPayload is used to pass data from the registration to a webhook
    attr_accessor :transient_payload

    # The flow type can either be `api` or `browser`.
    attr_accessor :type

    attr_accessor :ui

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'expires_at' => :'expires_at',
        :'id' => :'id',
        :'issued_at' => :'issued_at',
        :'oauth2_login_challenge' => :'oauth2_login_challenge',
        :'oauth2_login_request' => :'oauth2_login_request',
        :'organization_id' => :'organization_id',
        :'request_url' => :'request_url',
        :'return_to' => :'return_to',
        :'session_token_exchange_code' => :'session_token_exchange_code',
        :'state' => :'state',
        :'transient_payload' => :'transient_payload',
        :'type' => :'type',
        :'ui' => :'ui'
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
        :'active' => :'String',
        :'expires_at' => :'Time',
        :'id' => :'String',
        :'issued_at' => :'Time',
        :'oauth2_login_challenge' => :'String',
        :'oauth2_login_request' => :'OAuth2LoginRequest',
        :'organization_id' => :'String',
        :'request_url' => :'String',
        :'return_to' => :'String',
        :'session_token_exchange_code' => :'String',
        :'state' => :'Object',
        :'transient_payload' => :'Object',
        :'type' => :'String',
        :'ui' => :'UiContainer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'organization_id',
        :'state',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::RegistrationFlow` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::RegistrationFlow`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      else
        self.expires_at = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'issued_at')
        self.issued_at = attributes[:'issued_at']
      else
        self.issued_at = nil
      end

      if attributes.key?(:'oauth2_login_challenge')
        self.oauth2_login_challenge = attributes[:'oauth2_login_challenge']
      end

      if attributes.key?(:'oauth2_login_request')
        self.oauth2_login_request = attributes[:'oauth2_login_request']
      end

      if attributes.key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.key?(:'request_url')
        self.request_url = attributes[:'request_url']
      else
        self.request_url = nil
      end

      if attributes.key?(:'return_to')
        self.return_to = attributes[:'return_to']
      end

      if attributes.key?(:'session_token_exchange_code')
        self.session_token_exchange_code = attributes[:'session_token_exchange_code']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      else
        self.state = nil
      end

      if attributes.key?(:'transient_payload')
        self.transient_payload = attributes[:'transient_payload']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'ui')
        self.ui = attributes[:'ui']
      else
        self.ui = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @expires_at.nil?
        invalid_properties.push('invalid value for "expires_at", expires_at cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @issued_at.nil?
        invalid_properties.push('invalid value for "issued_at", issued_at cannot be nil.')
      end

      if @request_url.nil?
        invalid_properties.push('invalid value for "request_url", request_url cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @ui.nil?
        invalid_properties.push('invalid value for "ui", ui cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      active_validator = EnumAttributeValidator.new('String', ["password", "oidc", "totp", "lookup_secret", "webauthn", "code", "passkey", "profile", "saml", "link_recovery", "code_recovery"])
      return false unless active_validator.valid?(@active)
      return false if @expires_at.nil?
      return false if @id.nil?
      return false if @issued_at.nil?
      return false if @request_url.nil?
      return false if @type.nil?
      return false if @ui.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active)
      validator = EnumAttributeValidator.new('String', ["password", "oidc", "totp", "lookup_secret", "webauthn", "code", "passkey", "profile", "saml", "link_recovery", "code_recovery"])
      unless validator.valid?(active)
        fail ArgumentError, "invalid value for \"active\", must be one of #{validator.allowable_values}."
      end
      @active = active
    end

    # Custom attribute writer method with validation
    # @param [Object] expires_at Value to be assigned
    def expires_at=(expires_at)
      if expires_at.nil?
        fail ArgumentError, 'expires_at cannot be nil'
      end

      @expires_at = expires_at
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] issued_at Value to be assigned
    def issued_at=(issued_at)
      if issued_at.nil?
        fail ArgumentError, 'issued_at cannot be nil'
      end

      @issued_at = issued_at
    end

    # Custom attribute writer method with validation
    # @param [Object] request_url Value to be assigned
    def request_url=(request_url)
      if request_url.nil?
        fail ArgumentError, 'request_url cannot be nil'
      end

      @request_url = request_url
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      if type.nil?
        fail ArgumentError, 'type cannot be nil'
      end

      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] ui Value to be assigned
    def ui=(ui)
      if ui.nil?
        fail ArgumentError, 'ui cannot be nil'
      end

      @ui = ui
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          expires_at == o.expires_at &&
          id == o.id &&
          issued_at == o.issued_at &&
          oauth2_login_challenge == o.oauth2_login_challenge &&
          oauth2_login_request == o.oauth2_login_request &&
          organization_id == o.organization_id &&
          request_url == o.request_url &&
          return_to == o.return_to &&
          session_token_exchange_code == o.session_token_exchange_code &&
          state == o.state &&
          transient_payload == o.transient_payload &&
          type == o.type &&
          ui == o.ui
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, expires_at, id, issued_at, oauth2_login_challenge, oauth2_login_request, organization_id, request_url, return_to, session_token_exchange_code, state, transient_payload, type, ui].hash
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
