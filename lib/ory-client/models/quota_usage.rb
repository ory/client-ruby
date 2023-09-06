=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.2.0
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OryClient
  class QuotaUsage
    attr_accessor :additional_price

    attr_accessor :can_use_more

    #  region_eu RegionEU region_us RegionUS region_apac RegionAPAC region_global RegionGlobal production_projects ProductionProjects daily_active_users DailyActiveUsers custom_domains CustomDomains sla SLA collaborator_seats CollaboratorSeats edge_cache EdgeCache branding_themes BrandingThemes zendesk_support ZendeskSupport project_metrics ProjectMetrics rate_limit_tier RateLimitTier session_rate_limit_tier RateLimitTierSessions identities_list_rate_limit_tier RateLimitTierIdentitiesList
    attr_accessor :feature

    attr_accessor :feature_available

    attr_accessor :included

    attr_accessor :used

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
        :'additional_price' => :'additional_price',
        :'can_use_more' => :'can_use_more',
        :'feature' => :'feature',
        :'feature_available' => :'feature_available',
        :'included' => :'included',
        :'used' => :'used'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'additional_price' => :'Integer',
        :'can_use_more' => :'Boolean',
        :'feature' => :'String',
        :'feature_available' => :'Boolean',
        :'included' => :'Integer',
        :'used' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::QuotaUsage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::QuotaUsage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'additional_price')
        self.additional_price = attributes[:'additional_price']
      end

      if attributes.key?(:'can_use_more')
        self.can_use_more = attributes[:'can_use_more']
      end

      if attributes.key?(:'feature')
        self.feature = attributes[:'feature']
      end

      if attributes.key?(:'feature_available')
        self.feature_available = attributes[:'feature_available']
      end

      if attributes.key?(:'included')
        self.included = attributes[:'included']
      end

      if attributes.key?(:'used')
        self.used = attributes[:'used']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @additional_price.nil?
        invalid_properties.push('invalid value for "additional_price", additional_price cannot be nil.')
      end

      if @can_use_more.nil?
        invalid_properties.push('invalid value for "can_use_more", can_use_more cannot be nil.')
      end

      if @feature.nil?
        invalid_properties.push('invalid value for "feature", feature cannot be nil.')
      end

      if @feature_available.nil?
        invalid_properties.push('invalid value for "feature_available", feature_available cannot be nil.')
      end

      if @included.nil?
        invalid_properties.push('invalid value for "included", included cannot be nil.')
      end

      if @used.nil?
        invalid_properties.push('invalid value for "used", used cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @additional_price.nil?
      return false if @can_use_more.nil?
      return false if @feature.nil?
      feature_validator = EnumAttributeValidator.new('String', ["region_eu", "region_us", "region_apac", "region_global", "production_projects", "daily_active_users", "custom_domains", "sla", "collaborator_seats", "edge_cache", "branding_themes", "zendesk_support", "project_metrics", "rate_limit_tier", "session_rate_limit_tier", "identities_list_rate_limit_tier"])
      return false unless feature_validator.valid?(@feature)
      return false if @feature_available.nil?
      return false if @included.nil?
      return false if @used.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] feature Object to be assigned
    def feature=(feature)
      validator = EnumAttributeValidator.new('String', ["region_eu", "region_us", "region_apac", "region_global", "production_projects", "daily_active_users", "custom_domains", "sla", "collaborator_seats", "edge_cache", "branding_themes", "zendesk_support", "project_metrics", "rate_limit_tier", "session_rate_limit_tier", "identities_list_rate_limit_tier"])
      unless validator.valid?(feature)
        fail ArgumentError, "invalid value for \"feature\", must be one of #{validator.allowable_values}."
      end
      @feature = feature
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_price == o.additional_price &&
          can_use_more == o.can_use_more &&
          feature == o.feature &&
          feature_available == o.feature_available &&
          included == o.included &&
          used == o.used
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [additional_price, can_use_more, feature, feature_available, included, used].hash
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
