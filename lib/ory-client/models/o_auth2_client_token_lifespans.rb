=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.13.2
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OryClient
  # Lifespans of different token types issued for this OAuth 2.0 Client.
  class OAuth2ClientTokenLifespans
    attr_accessor :authorization_code_grant_access_token_lifespan

    attr_accessor :authorization_code_grant_id_token_lifespan

    attr_accessor :authorization_code_grant_refresh_token_lifespan

    attr_accessor :client_credentials_grant_access_token_lifespan

    attr_accessor :implicit_grant_access_token_lifespan

    attr_accessor :implicit_grant_id_token_lifespan

    attr_accessor :jwt_bearer_grant_access_token_lifespan

    attr_accessor :refresh_token_grant_access_token_lifespan

    attr_accessor :refresh_token_grant_id_token_lifespan

    attr_accessor :refresh_token_grant_refresh_token_lifespan

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authorization_code_grant_access_token_lifespan' => :'authorization_code_grant_access_token_lifespan',
        :'authorization_code_grant_id_token_lifespan' => :'authorization_code_grant_id_token_lifespan',
        :'authorization_code_grant_refresh_token_lifespan' => :'authorization_code_grant_refresh_token_lifespan',
        :'client_credentials_grant_access_token_lifespan' => :'client_credentials_grant_access_token_lifespan',
        :'implicit_grant_access_token_lifespan' => :'implicit_grant_access_token_lifespan',
        :'implicit_grant_id_token_lifespan' => :'implicit_grant_id_token_lifespan',
        :'jwt_bearer_grant_access_token_lifespan' => :'jwt_bearer_grant_access_token_lifespan',
        :'refresh_token_grant_access_token_lifespan' => :'refresh_token_grant_access_token_lifespan',
        :'refresh_token_grant_id_token_lifespan' => :'refresh_token_grant_id_token_lifespan',
        :'refresh_token_grant_refresh_token_lifespan' => :'refresh_token_grant_refresh_token_lifespan'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authorization_code_grant_access_token_lifespan' => :'String',
        :'authorization_code_grant_id_token_lifespan' => :'String',
        :'authorization_code_grant_refresh_token_lifespan' => :'String',
        :'client_credentials_grant_access_token_lifespan' => :'String',
        :'implicit_grant_access_token_lifespan' => :'String',
        :'implicit_grant_id_token_lifespan' => :'String',
        :'jwt_bearer_grant_access_token_lifespan' => :'String',
        :'refresh_token_grant_access_token_lifespan' => :'String',
        :'refresh_token_grant_id_token_lifespan' => :'String',
        :'refresh_token_grant_refresh_token_lifespan' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'authorization_code_grant_access_token_lifespan',
        :'authorization_code_grant_id_token_lifespan',
        :'authorization_code_grant_refresh_token_lifespan',
        :'client_credentials_grant_access_token_lifespan',
        :'implicit_grant_access_token_lifespan',
        :'implicit_grant_id_token_lifespan',
        :'jwt_bearer_grant_access_token_lifespan',
        :'refresh_token_grant_access_token_lifespan',
        :'refresh_token_grant_id_token_lifespan',
        :'refresh_token_grant_refresh_token_lifespan'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::OAuth2ClientTokenLifespans` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::OAuth2ClientTokenLifespans`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authorization_code_grant_access_token_lifespan')
        self.authorization_code_grant_access_token_lifespan = attributes[:'authorization_code_grant_access_token_lifespan']
      end

      if attributes.key?(:'authorization_code_grant_id_token_lifespan')
        self.authorization_code_grant_id_token_lifespan = attributes[:'authorization_code_grant_id_token_lifespan']
      end

      if attributes.key?(:'authorization_code_grant_refresh_token_lifespan')
        self.authorization_code_grant_refresh_token_lifespan = attributes[:'authorization_code_grant_refresh_token_lifespan']
      end

      if attributes.key?(:'client_credentials_grant_access_token_lifespan')
        self.client_credentials_grant_access_token_lifespan = attributes[:'client_credentials_grant_access_token_lifespan']
      end

      if attributes.key?(:'implicit_grant_access_token_lifespan')
        self.implicit_grant_access_token_lifespan = attributes[:'implicit_grant_access_token_lifespan']
      end

      if attributes.key?(:'implicit_grant_id_token_lifespan')
        self.implicit_grant_id_token_lifespan = attributes[:'implicit_grant_id_token_lifespan']
      end

      if attributes.key?(:'jwt_bearer_grant_access_token_lifespan')
        self.jwt_bearer_grant_access_token_lifespan = attributes[:'jwt_bearer_grant_access_token_lifespan']
      end

      if attributes.key?(:'refresh_token_grant_access_token_lifespan')
        self.refresh_token_grant_access_token_lifespan = attributes[:'refresh_token_grant_access_token_lifespan']
      end

      if attributes.key?(:'refresh_token_grant_id_token_lifespan')
        self.refresh_token_grant_id_token_lifespan = attributes[:'refresh_token_grant_id_token_lifespan']
      end

      if attributes.key?(:'refresh_token_grant_refresh_token_lifespan')
        self.refresh_token_grant_refresh_token_lifespan = attributes[:'refresh_token_grant_refresh_token_lifespan']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@authorization_code_grant_access_token_lifespan.nil? && @authorization_code_grant_access_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"authorization_code_grant_access_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@authorization_code_grant_id_token_lifespan.nil? && @authorization_code_grant_id_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"authorization_code_grant_id_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@authorization_code_grant_refresh_token_lifespan.nil? && @authorization_code_grant_refresh_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"authorization_code_grant_refresh_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@client_credentials_grant_access_token_lifespan.nil? && @client_credentials_grant_access_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"client_credentials_grant_access_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@implicit_grant_access_token_lifespan.nil? && @implicit_grant_access_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"implicit_grant_access_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@implicit_grant_id_token_lifespan.nil? && @implicit_grant_id_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"implicit_grant_id_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@jwt_bearer_grant_access_token_lifespan.nil? && @jwt_bearer_grant_access_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"jwt_bearer_grant_access_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@refresh_token_grant_access_token_lifespan.nil? && @refresh_token_grant_access_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"refresh_token_grant_access_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@refresh_token_grant_id_token_lifespan.nil? && @refresh_token_grant_id_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"refresh_token_grant_id_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !@refresh_token_grant_refresh_token_lifespan.nil? && @refresh_token_grant_refresh_token_lifespan !~ pattern
        invalid_properties.push("invalid value for \"refresh_token_grant_refresh_token_lifespan\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@authorization_code_grant_access_token_lifespan.nil? && @authorization_code_grant_access_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@authorization_code_grant_id_token_lifespan.nil? && @authorization_code_grant_id_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@authorization_code_grant_refresh_token_lifespan.nil? && @authorization_code_grant_refresh_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@client_credentials_grant_access_token_lifespan.nil? && @client_credentials_grant_access_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@implicit_grant_access_token_lifespan.nil? && @implicit_grant_access_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@implicit_grant_id_token_lifespan.nil? && @implicit_grant_id_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@jwt_bearer_grant_access_token_lifespan.nil? && @jwt_bearer_grant_access_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@refresh_token_grant_access_token_lifespan.nil? && @refresh_token_grant_access_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@refresh_token_grant_id_token_lifespan.nil? && @refresh_token_grant_id_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      return false if !@refresh_token_grant_refresh_token_lifespan.nil? && @refresh_token_grant_refresh_token_lifespan !~ Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_code_grant_access_token_lifespan Value to be assigned
    def authorization_code_grant_access_token_lifespan=(authorization_code_grant_access_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !authorization_code_grant_access_token_lifespan.nil? && authorization_code_grant_access_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"authorization_code_grant_access_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @authorization_code_grant_access_token_lifespan = authorization_code_grant_access_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_code_grant_id_token_lifespan Value to be assigned
    def authorization_code_grant_id_token_lifespan=(authorization_code_grant_id_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !authorization_code_grant_id_token_lifespan.nil? && authorization_code_grant_id_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"authorization_code_grant_id_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @authorization_code_grant_id_token_lifespan = authorization_code_grant_id_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_code_grant_refresh_token_lifespan Value to be assigned
    def authorization_code_grant_refresh_token_lifespan=(authorization_code_grant_refresh_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !authorization_code_grant_refresh_token_lifespan.nil? && authorization_code_grant_refresh_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"authorization_code_grant_refresh_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @authorization_code_grant_refresh_token_lifespan = authorization_code_grant_refresh_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] client_credentials_grant_access_token_lifespan Value to be assigned
    def client_credentials_grant_access_token_lifespan=(client_credentials_grant_access_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !client_credentials_grant_access_token_lifespan.nil? && client_credentials_grant_access_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"client_credentials_grant_access_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @client_credentials_grant_access_token_lifespan = client_credentials_grant_access_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] implicit_grant_access_token_lifespan Value to be assigned
    def implicit_grant_access_token_lifespan=(implicit_grant_access_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !implicit_grant_access_token_lifespan.nil? && implicit_grant_access_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"implicit_grant_access_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @implicit_grant_access_token_lifespan = implicit_grant_access_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] implicit_grant_id_token_lifespan Value to be assigned
    def implicit_grant_id_token_lifespan=(implicit_grant_id_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !implicit_grant_id_token_lifespan.nil? && implicit_grant_id_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"implicit_grant_id_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @implicit_grant_id_token_lifespan = implicit_grant_id_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] jwt_bearer_grant_access_token_lifespan Value to be assigned
    def jwt_bearer_grant_access_token_lifespan=(jwt_bearer_grant_access_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !jwt_bearer_grant_access_token_lifespan.nil? && jwt_bearer_grant_access_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"jwt_bearer_grant_access_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @jwt_bearer_grant_access_token_lifespan = jwt_bearer_grant_access_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] refresh_token_grant_access_token_lifespan Value to be assigned
    def refresh_token_grant_access_token_lifespan=(refresh_token_grant_access_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !refresh_token_grant_access_token_lifespan.nil? && refresh_token_grant_access_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"refresh_token_grant_access_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @refresh_token_grant_access_token_lifespan = refresh_token_grant_access_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] refresh_token_grant_id_token_lifespan Value to be assigned
    def refresh_token_grant_id_token_lifespan=(refresh_token_grant_id_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !refresh_token_grant_id_token_lifespan.nil? && refresh_token_grant_id_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"refresh_token_grant_id_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @refresh_token_grant_id_token_lifespan = refresh_token_grant_id_token_lifespan
    end

    # Custom attribute writer method with validation
    # @param [Object] refresh_token_grant_refresh_token_lifespan Value to be assigned
    def refresh_token_grant_refresh_token_lifespan=(refresh_token_grant_refresh_token_lifespan)
      pattern = Regexp.new(/^[0-9]+(ns|us|ms|s|m|h)$/)
      if !refresh_token_grant_refresh_token_lifespan.nil? && refresh_token_grant_refresh_token_lifespan !~ pattern
        fail ArgumentError, "invalid value for \"refresh_token_grant_refresh_token_lifespan\", must conform to the pattern #{pattern}."
      end

      @refresh_token_grant_refresh_token_lifespan = refresh_token_grant_refresh_token_lifespan
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authorization_code_grant_access_token_lifespan == o.authorization_code_grant_access_token_lifespan &&
          authorization_code_grant_id_token_lifespan == o.authorization_code_grant_id_token_lifespan &&
          authorization_code_grant_refresh_token_lifespan == o.authorization_code_grant_refresh_token_lifespan &&
          client_credentials_grant_access_token_lifespan == o.client_credentials_grant_access_token_lifespan &&
          implicit_grant_access_token_lifespan == o.implicit_grant_access_token_lifespan &&
          implicit_grant_id_token_lifespan == o.implicit_grant_id_token_lifespan &&
          jwt_bearer_grant_access_token_lifespan == o.jwt_bearer_grant_access_token_lifespan &&
          refresh_token_grant_access_token_lifespan == o.refresh_token_grant_access_token_lifespan &&
          refresh_token_grant_id_token_lifespan == o.refresh_token_grant_id_token_lifespan &&
          refresh_token_grant_refresh_token_lifespan == o.refresh_token_grant_refresh_token_lifespan
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authorization_code_grant_access_token_lifespan, authorization_code_grant_id_token_lifespan, authorization_code_grant_refresh_token_lifespan, client_credentials_grant_access_token_lifespan, implicit_grant_access_token_lifespan, implicit_grant_id_token_lifespan, jwt_bearer_grant_access_token_lifespan, refresh_token_grant_access_token_lifespan, refresh_token_grant_id_token_lifespan, refresh_token_grant_refresh_token_lifespan].hash
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
