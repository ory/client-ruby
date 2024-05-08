=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.11.7
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module OryClient
  # InputAttributes represents the attributes of an input node
  class UiNodeInputAttributes
    # The autocomplete attribute for the input. email InputAttributeAutocompleteEmail tel InputAttributeAutocompleteTel url InputAttributeAutocompleteUrl current-password InputAttributeAutocompleteCurrentPassword new-password InputAttributeAutocompleteNewPassword one-time-code InputAttributeAutocompleteOneTimeCode
    attr_accessor :autocomplete

    # Sets the input's disabled field to true or false.
    attr_accessor :disabled

    attr_accessor :label

    # The input's element name.
    attr_accessor :name

    # NodeType represents this node's types. It is a mirror of `node.type` and is primarily used to allow compatibility with OpenAPI 3.0.  In this struct it technically always is \"input\". text Text input Input img Image a Anchor script Script
    attr_accessor :node_type

    # OnClick may contain javascript which should be executed on click. This is primarily used for WebAuthn.
    attr_accessor :onclick

    # OnLoad may contain javascript which should be executed on load. This is primarily used for WebAuthn.
    attr_accessor :onload

    # The input's pattern.
    attr_accessor :pattern

    # Mark this input field as required.
    attr_accessor :required

    # The input's element type. text InputAttributeTypeText password InputAttributeTypePassword number InputAttributeTypeNumber checkbox InputAttributeTypeCheckbox hidden InputAttributeTypeHidden email InputAttributeTypeEmail tel InputAttributeTypeTel submit InputAttributeTypeSubmit button InputAttributeTypeButton datetime-local InputAttributeTypeDateTimeLocal date InputAttributeTypeDate url InputAttributeTypeURI
    attr_accessor :type

    # The input's value.
    attr_accessor :value

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
        :'autocomplete' => :'autocomplete',
        :'disabled' => :'disabled',
        :'label' => :'label',
        :'name' => :'name',
        :'node_type' => :'node_type',
        :'onclick' => :'onclick',
        :'onload' => :'onload',
        :'pattern' => :'pattern',
        :'required' => :'required',
        :'type' => :'type',
        :'value' => :'value'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'autocomplete' => :'String',
        :'disabled' => :'Boolean',
        :'label' => :'UiText',
        :'name' => :'String',
        :'node_type' => :'String',
        :'onclick' => :'String',
        :'onload' => :'String',
        :'pattern' => :'String',
        :'required' => :'Boolean',
        :'type' => :'String',
        :'value' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'value'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::UiNodeInputAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::UiNodeInputAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'autocomplete')
        self.autocomplete = attributes[:'autocomplete']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      else
        self.disabled = nil
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'node_type')
        self.node_type = attributes[:'node_type']
      else
        self.node_type = nil
      end

      if attributes.key?(:'onclick')
        self.onclick = attributes[:'onclick']
      end

      if attributes.key?(:'onload')
        self.onload = attributes[:'onload']
      end

      if attributes.key?(:'pattern')
        self.pattern = attributes[:'pattern']
      end

      if attributes.key?(:'required')
        self.required = attributes[:'required']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @disabled.nil?
        invalid_properties.push('invalid value for "disabled", disabled cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @node_type.nil?
        invalid_properties.push('invalid value for "node_type", node_type cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      autocomplete_validator = EnumAttributeValidator.new('String', ["email", "tel", "url", "current-password", "new-password", "one-time-code"])
      return false unless autocomplete_validator.valid?(@autocomplete)
      return false if @disabled.nil?
      return false if @name.nil?
      return false if @node_type.nil?
      node_type_validator = EnumAttributeValidator.new('String', ["text", "input", "img", "a", "script"])
      return false unless node_type_validator.valid?(@node_type)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["text", "password", "number", "checkbox", "hidden", "email", "tel", "submit", "button", "datetime-local", "date", "url"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] autocomplete Object to be assigned
    def autocomplete=(autocomplete)
      validator = EnumAttributeValidator.new('String', ["email", "tel", "url", "current-password", "new-password", "one-time-code"])
      unless validator.valid?(autocomplete)
        fail ArgumentError, "invalid value for \"autocomplete\", must be one of #{validator.allowable_values}."
      end
      @autocomplete = autocomplete
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] node_type Object to be assigned
    def node_type=(node_type)
      validator = EnumAttributeValidator.new('String', ["text", "input", "img", "a", "script"])
      unless validator.valid?(node_type)
        fail ArgumentError, "invalid value for \"node_type\", must be one of #{validator.allowable_values}."
      end
      @node_type = node_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["text", "password", "number", "checkbox", "hidden", "email", "tel", "submit", "button", "datetime-local", "date", "url"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          autocomplete == o.autocomplete &&
          disabled == o.disabled &&
          label == o.label &&
          name == o.name &&
          node_type == o.node_type &&
          onclick == o.onclick &&
          onload == o.onload &&
          pattern == o.pattern &&
          required == o.required &&
          type == o.type &&
          value == o.value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [autocomplete, disabled, label, name, node_type, onclick, onload, pattern, required, type, value].hash
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
