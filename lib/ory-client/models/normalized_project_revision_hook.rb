=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.2.0-alpha.27
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OryClient
  class NormalizedProjectRevisionHook
    # The Hooks Config Key
    attr_accessor :config_key

    # The Project's Revision Creation Date
    attr_accessor :created_at

    # The Hook Type
    attr_accessor :hook

    attr_accessor :id

    attr_accessor :project_revision_id

    # Last Time Project's Revision was Updated
    attr_accessor :updated_at

    # Whether to send the API Key in the HTTP Header or as a HTTP Cookie
    attr_accessor :web_hook_config_auth_api_key_in

    # The name of the api key
    attr_accessor :web_hook_config_auth_api_key_name

    # The value of the api key
    attr_accessor :web_hook_config_auth_api_key_value

    # The password to be sent in the HTTP Basic Auth Header
    attr_accessor :web_hook_config_auth_basic_auth_password

    # The username to be sent in the HTTP Basic Auth Header
    attr_accessor :web_hook_config_auth_basic_auth_user

    # HTTP Auth Method to use for the Web-Hook
    attr_accessor :web_hook_config_auth_type

    # URI pointing to the JsonNet template used for Web-Hook payload generation. Only used for those HTTP methods, which support HTTP body payloads.
    attr_accessor :web_hook_config_body

    # The HTTP method to use (GET, POST, etc) for the Web-Hook
    attr_accessor :web_hook_config_method

    # Whether to ignore the Web Hook response
    attr_accessor :web_hook_config_response_ignore

    # The URL the Web-Hook should call
    attr_accessor :web_hook_config_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'config_key' => :'config_key',
        :'created_at' => :'created_at',
        :'hook' => :'hook',
        :'id' => :'id',
        :'project_revision_id' => :'project_revision_id',
        :'updated_at' => :'updated_at',
        :'web_hook_config_auth_api_key_in' => :'web_hook_config_auth_api_key_in',
        :'web_hook_config_auth_api_key_name' => :'web_hook_config_auth_api_key_name',
        :'web_hook_config_auth_api_key_value' => :'web_hook_config_auth_api_key_value',
        :'web_hook_config_auth_basic_auth_password' => :'web_hook_config_auth_basic_auth_password',
        :'web_hook_config_auth_basic_auth_user' => :'web_hook_config_auth_basic_auth_user',
        :'web_hook_config_auth_type' => :'web_hook_config_auth_type',
        :'web_hook_config_body' => :'web_hook_config_body',
        :'web_hook_config_method' => :'web_hook_config_method',
        :'web_hook_config_response_ignore' => :'web_hook_config_response_ignore',
        :'web_hook_config_url' => :'web_hook_config_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'config_key' => :'String',
        :'created_at' => :'Time',
        :'hook' => :'String',
        :'id' => :'String',
        :'project_revision_id' => :'String',
        :'updated_at' => :'Time',
        :'web_hook_config_auth_api_key_in' => :'String',
        :'web_hook_config_auth_api_key_name' => :'String',
        :'web_hook_config_auth_api_key_value' => :'String',
        :'web_hook_config_auth_basic_auth_password' => :'String',
        :'web_hook_config_auth_basic_auth_user' => :'String',
        :'web_hook_config_auth_type' => :'String',
        :'web_hook_config_body' => :'String',
        :'web_hook_config_method' => :'String',
        :'web_hook_config_response_ignore' => :'Boolean',
        :'web_hook_config_url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::NormalizedProjectRevisionHook` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::NormalizedProjectRevisionHook`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'config_key')
        self.config_key = attributes[:'config_key']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'hook')
        self.hook = attributes[:'hook']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'project_revision_id')
        self.project_revision_id = attributes[:'project_revision_id']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'web_hook_config_auth_api_key_in')
        self.web_hook_config_auth_api_key_in = attributes[:'web_hook_config_auth_api_key_in']
      end

      if attributes.key?(:'web_hook_config_auth_api_key_name')
        self.web_hook_config_auth_api_key_name = attributes[:'web_hook_config_auth_api_key_name']
      end

      if attributes.key?(:'web_hook_config_auth_api_key_value')
        self.web_hook_config_auth_api_key_value = attributes[:'web_hook_config_auth_api_key_value']
      end

      if attributes.key?(:'web_hook_config_auth_basic_auth_password')
        self.web_hook_config_auth_basic_auth_password = attributes[:'web_hook_config_auth_basic_auth_password']
      end

      if attributes.key?(:'web_hook_config_auth_basic_auth_user')
        self.web_hook_config_auth_basic_auth_user = attributes[:'web_hook_config_auth_basic_auth_user']
      end

      if attributes.key?(:'web_hook_config_auth_type')
        self.web_hook_config_auth_type = attributes[:'web_hook_config_auth_type']
      end

      if attributes.key?(:'web_hook_config_body')
        self.web_hook_config_body = attributes[:'web_hook_config_body']
      end

      if attributes.key?(:'web_hook_config_method')
        self.web_hook_config_method = attributes[:'web_hook_config_method']
      end

      if attributes.key?(:'web_hook_config_response_ignore')
        self.web_hook_config_response_ignore = attributes[:'web_hook_config_response_ignore']
      end

      if attributes.key?(:'web_hook_config_url')
        self.web_hook_config_url = attributes[:'web_hook_config_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @config_key.nil?
        invalid_properties.push('invalid value for "config_key", config_key cannot be nil.')
      end

      if @hook.nil?
        invalid_properties.push('invalid value for "hook", hook cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @config_key.nil?
      return false if @hook.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          config_key == o.config_key &&
          created_at == o.created_at &&
          hook == o.hook &&
          id == o.id &&
          project_revision_id == o.project_revision_id &&
          updated_at == o.updated_at &&
          web_hook_config_auth_api_key_in == o.web_hook_config_auth_api_key_in &&
          web_hook_config_auth_api_key_name == o.web_hook_config_auth_api_key_name &&
          web_hook_config_auth_api_key_value == o.web_hook_config_auth_api_key_value &&
          web_hook_config_auth_basic_auth_password == o.web_hook_config_auth_basic_auth_password &&
          web_hook_config_auth_basic_auth_user == o.web_hook_config_auth_basic_auth_user &&
          web_hook_config_auth_type == o.web_hook_config_auth_type &&
          web_hook_config_body == o.web_hook_config_body &&
          web_hook_config_method == o.web_hook_config_method &&
          web_hook_config_response_ignore == o.web_hook_config_response_ignore &&
          web_hook_config_url == o.web_hook_config_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [config_key, created_at, hook, id, project_revision_id, updated_at, web_hook_config_auth_api_key_in, web_hook_config_auth_api_key_name, web_hook_config_auth_api_key_value, web_hook_config_auth_basic_auth_password, web_hook_config_auth_basic_auth_user, web_hook_config_auth_type, web_hook_config_body, web_hook_config_method, web_hook_config_response_ignore, web_hook_config_url].hash
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
      attributes = attributes.transform_keys(&:to_sym)
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
