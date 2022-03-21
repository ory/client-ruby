=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.143
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module OryClient
  class NormalizedProjectRevisionThirdPartyProvider
    attr_accessor :apple_private_key

    # Apple Private Key Identifier  Sign In with Apple Private Key Identifier needed for generating a JWT token for client secret
    attr_accessor :apple_private_key_id

    # Apple Developer Team ID  Apple Developer Team ID needed for generating a JWT token for client secret
    attr_accessor :apple_team_id

    # AuthURL is the authorize url, typically something like: https://example.org/oauth2/auth Should only be used when the OAuth2 / OpenID Connect server is not supporting OpenID Connect Discovery and when `provider` is set to `generic`.
    attr_accessor :auth_url

    # Tenant is the Azure AD Tenant to use for authentication, and must be set when `provider` is set to `microsoft`.  Can be either `common`, `organizations`, `consumers` for a multitenant application or a specific tenant like `8eaef023-2b34-4da1-9baa-8bc8c9d6a490` or `contoso.onmicrosoft.com`.
    attr_accessor :azure_tenant

    # ClientID is the application's Client ID.
    attr_accessor :client_id

    attr_accessor :client_secret

    # The Project's Revision Creation Date
    attr_accessor :created_at

    attr_accessor :id

    # IssuerURL is the OpenID Connect Server URL. You can leave this empty if `provider` is not set to `generic`. If set, neither `auth_url` nor `token_url` are required.
    attr_accessor :issuer_url

    # Label represents an optional label which can be used in the UI generation.
    attr_accessor :label

    # Mapper specifies the JSONNet code snippet which uses the OpenID Connect Provider's data (e.g. GitHub or Google profile information) to hydrate the identity's data.  It can be either a URL (file://, http(s)://, base64://) or an inline JSONNet code snippet.
    attr_accessor :mapper_url

    attr_accessor :project_revision_id

    # Provider is either \"generic\" for a generic OAuth 2.0 / OpenID Connect Provider or one of: generic google github gitlab microsoft discord slack facebook vk yandex apple
    attr_accessor :provider

    # ID is the provider's ID
    attr_accessor :provider_id

    attr_accessor :requested_claims

    attr_accessor :scope

    # TokenURL is the token url, typically something like: https://example.org/oauth2/token  Should only be used when the OAuth2 / OpenID Connect server is not supporting OpenID Connect Discovery and when `provider` is set to `generic`.
    attr_accessor :token_url

    # Last Time Project's Revision was Updated
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'apple_private_key' => :'apple_private_key',
        :'apple_private_key_id' => :'apple_private_key_id',
        :'apple_team_id' => :'apple_team_id',
        :'auth_url' => :'auth_url',
        :'azure_tenant' => :'azure_tenant',
        :'client_id' => :'client_id',
        :'client_secret' => :'client_secret',
        :'created_at' => :'created_at',
        :'id' => :'id',
        :'issuer_url' => :'issuer_url',
        :'label' => :'label',
        :'mapper_url' => :'mapper_url',
        :'project_revision_id' => :'project_revision_id',
        :'provider' => :'provider',
        :'provider_id' => :'provider_id',
        :'requested_claims' => :'requested_claims',
        :'scope' => :'scope',
        :'token_url' => :'token_url',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'apple_private_key' => :'String',
        :'apple_private_key_id' => :'String',
        :'apple_team_id' => :'String',
        :'auth_url' => :'String',
        :'azure_tenant' => :'String',
        :'client_id' => :'String',
        :'client_secret' => :'String',
        :'created_at' => :'Time',
        :'id' => :'String',
        :'issuer_url' => :'String',
        :'label' => :'String',
        :'mapper_url' => :'String',
        :'project_revision_id' => :'String',
        :'provider' => :'String',
        :'provider_id' => :'String',
        :'requested_claims' => :'Object',
        :'scope' => :'Array<String>',
        :'token_url' => :'String',
        :'updated_at' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::NormalizedProjectRevisionThirdPartyProvider` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::NormalizedProjectRevisionThirdPartyProvider`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'apple_private_key')
        self.apple_private_key = attributes[:'apple_private_key']
      end

      if attributes.key?(:'apple_private_key_id')
        self.apple_private_key_id = attributes[:'apple_private_key_id']
      end

      if attributes.key?(:'apple_team_id')
        self.apple_team_id = attributes[:'apple_team_id']
      end

      if attributes.key?(:'auth_url')
        self.auth_url = attributes[:'auth_url']
      end

      if attributes.key?(:'azure_tenant')
        self.azure_tenant = attributes[:'azure_tenant']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'issuer_url')
        self.issuer_url = attributes[:'issuer_url']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'mapper_url')
        self.mapper_url = attributes[:'mapper_url']
      end

      if attributes.key?(:'project_revision_id')
        self.project_revision_id = attributes[:'project_revision_id']
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
      end

      if attributes.key?(:'requested_claims')
        self.requested_claims = attributes[:'requested_claims']
      end

      if attributes.key?(:'scope')
        if (value = attributes[:'scope']).is_a?(Array)
          self.scope = value
        end
      end

      if attributes.key?(:'token_url')
        self.token_url = attributes[:'token_url']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          apple_private_key == o.apple_private_key &&
          apple_private_key_id == o.apple_private_key_id &&
          apple_team_id == o.apple_team_id &&
          auth_url == o.auth_url &&
          azure_tenant == o.azure_tenant &&
          client_id == o.client_id &&
          client_secret == o.client_secret &&
          created_at == o.created_at &&
          id == o.id &&
          issuer_url == o.issuer_url &&
          label == o.label &&
          mapper_url == o.mapper_url &&
          project_revision_id == o.project_revision_id &&
          provider == o.provider &&
          provider_id == o.provider_id &&
          requested_claims == o.requested_claims &&
          scope == o.scope &&
          token_url == o.token_url &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [apple_private_key, apple_private_key_id, apple_team_id, auth_url, azure_tenant, client_id, client_secret, created_at, id, issuer_url, label, mapper_url, project_revision_id, provider, provider_id, requested_claims, scope, token_url, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
