=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.8.0
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module OryClient
  class ProjectBrandingTheme
    # AccentDefaultColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :accent_default_color

    # AccentDisabledColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :accent_disabled_color

    # AccentEmphasisColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :accent_emphasis_color

    # AccentMutedColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :accent_muted_color

    # AccentSubtleColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :accent_subtle_color

    # BackgroundCanvasColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :background_canvas_color

    # BackgroundSubtleColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :background_subtle_color

    # BackgroundSurfaceColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :background_surface_color

    # BorderDefaultColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :border_default_color

    # The Customization Creation Date.
    attr_accessor :created_at

    # ErrorDefaultColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :error_default_color

    # ErrorEmphasisColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :error_emphasis_color

    # ErrorMutedColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :error_muted_color

    # ErrorSubtleColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :error_subtle_color

    # Favicon Type The Favicon mime type.
    attr_accessor :favicon_type

    # Favicon URL Favicon can be an https:// or base64:// URL. If the URL is not allowed, the favicon will be stored inside the Ory Network storage bucket.
    attr_accessor :favicon_url

    # ForegroundDefaultColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :foreground_default_color

    # ForegroundDisabledColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :foreground_disabled_color

    # ForegroundMutedColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :foreground_muted_color

    # ForegroundOnAccentColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :foreground_on_accent_color

    # ForegroundOnDarkColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :foreground_on_dark_color

    # ForegroundOnDisabledColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :foreground_on_disabled_color

    # ForegroundSubtleColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :foreground_subtle_color

    # The customization theme ID.
    attr_accessor :id

    # InputBackgroundColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :input_background_color

    # InputDisabledColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :input_disabled_color

    # InputPlaceholderColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :input_placeholder_color

    # InputTextColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :input_text_color

    # Logo Type The Logo mime type.
    attr_accessor :logo_type

    # Logo URL Logo can be an https:// or base64:// URL. If the URL is not allowed, the logo will be stored inside the Ory Network storage bucket.
    attr_accessor :logo_url

    # The customization theme name.
    attr_accessor :name

    # Primary color is an hsla color value used to derive the other colors from for the Ory Account Experience theme.
    attr_accessor :primary_color

    # The ProjectBranding ID this customization is associated with.
    attr_accessor :project_branding_id

    # Secondary color is a hsla color code used to derive the other colors from for the Ory Account Experience theme.
    attr_accessor :secondary_color

    # SuccessEmphasisColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :success_emphasis_color

    # TextDefaultColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :text_default_color

    # TextDisabledColor is a hex color code used by the Ory Account Experience theme.
    attr_accessor :text_disabled_color

    # Last Time Branding was Updated.
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accent_default_color' => :'accent_default_color',
        :'accent_disabled_color' => :'accent_disabled_color',
        :'accent_emphasis_color' => :'accent_emphasis_color',
        :'accent_muted_color' => :'accent_muted_color',
        :'accent_subtle_color' => :'accent_subtle_color',
        :'background_canvas_color' => :'background_canvas_color',
        :'background_subtle_color' => :'background_subtle_color',
        :'background_surface_color' => :'background_surface_color',
        :'border_default_color' => :'border_default_color',
        :'created_at' => :'created_at',
        :'error_default_color' => :'error_default_color',
        :'error_emphasis_color' => :'error_emphasis_color',
        :'error_muted_color' => :'error_muted_color',
        :'error_subtle_color' => :'error_subtle_color',
        :'favicon_type' => :'favicon_type',
        :'favicon_url' => :'favicon_url',
        :'foreground_default_color' => :'foreground_default_color',
        :'foreground_disabled_color' => :'foreground_disabled_color',
        :'foreground_muted_color' => :'foreground_muted_color',
        :'foreground_on_accent_color' => :'foreground_on_accent_color',
        :'foreground_on_dark_color' => :'foreground_on_dark_color',
        :'foreground_on_disabled_color' => :'foreground_on_disabled_color',
        :'foreground_subtle_color' => :'foreground_subtle_color',
        :'id' => :'id',
        :'input_background_color' => :'input_background_color',
        :'input_disabled_color' => :'input_disabled_color',
        :'input_placeholder_color' => :'input_placeholder_color',
        :'input_text_color' => :'input_text_color',
        :'logo_type' => :'logo_type',
        :'logo_url' => :'logo_url',
        :'name' => :'name',
        :'primary_color' => :'primary_color',
        :'project_branding_id' => :'project_branding_id',
        :'secondary_color' => :'secondary_color',
        :'success_emphasis_color' => :'success_emphasis_color',
        :'text_default_color' => :'text_default_color',
        :'text_disabled_color' => :'text_disabled_color',
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
        :'accent_default_color' => :'String',
        :'accent_disabled_color' => :'String',
        :'accent_emphasis_color' => :'String',
        :'accent_muted_color' => :'String',
        :'accent_subtle_color' => :'String',
        :'background_canvas_color' => :'String',
        :'background_subtle_color' => :'String',
        :'background_surface_color' => :'String',
        :'border_default_color' => :'String',
        :'created_at' => :'Time',
        :'error_default_color' => :'String',
        :'error_emphasis_color' => :'String',
        :'error_muted_color' => :'String',
        :'error_subtle_color' => :'String',
        :'favicon_type' => :'String',
        :'favicon_url' => :'String',
        :'foreground_default_color' => :'String',
        :'foreground_disabled_color' => :'String',
        :'foreground_muted_color' => :'String',
        :'foreground_on_accent_color' => :'String',
        :'foreground_on_dark_color' => :'String',
        :'foreground_on_disabled_color' => :'String',
        :'foreground_subtle_color' => :'String',
        :'id' => :'String',
        :'input_background_color' => :'String',
        :'input_disabled_color' => :'String',
        :'input_placeholder_color' => :'String',
        :'input_text_color' => :'String',
        :'logo_type' => :'String',
        :'logo_url' => :'String',
        :'name' => :'String',
        :'primary_color' => :'String',
        :'project_branding_id' => :'String',
        :'secondary_color' => :'String',
        :'success_emphasis_color' => :'String',
        :'text_default_color' => :'String',
        :'text_disabled_color' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::ProjectBrandingTheme` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::ProjectBrandingTheme`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'accent_default_color')
        self.accent_default_color = attributes[:'accent_default_color']
      end

      if attributes.key?(:'accent_disabled_color')
        self.accent_disabled_color = attributes[:'accent_disabled_color']
      end

      if attributes.key?(:'accent_emphasis_color')
        self.accent_emphasis_color = attributes[:'accent_emphasis_color']
      end

      if attributes.key?(:'accent_muted_color')
        self.accent_muted_color = attributes[:'accent_muted_color']
      end

      if attributes.key?(:'accent_subtle_color')
        self.accent_subtle_color = attributes[:'accent_subtle_color']
      end

      if attributes.key?(:'background_canvas_color')
        self.background_canvas_color = attributes[:'background_canvas_color']
      end

      if attributes.key?(:'background_subtle_color')
        self.background_subtle_color = attributes[:'background_subtle_color']
      end

      if attributes.key?(:'background_surface_color')
        self.background_surface_color = attributes[:'background_surface_color']
      end

      if attributes.key?(:'border_default_color')
        self.border_default_color = attributes[:'border_default_color']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'error_default_color')
        self.error_default_color = attributes[:'error_default_color']
      end

      if attributes.key?(:'error_emphasis_color')
        self.error_emphasis_color = attributes[:'error_emphasis_color']
      end

      if attributes.key?(:'error_muted_color')
        self.error_muted_color = attributes[:'error_muted_color']
      end

      if attributes.key?(:'error_subtle_color')
        self.error_subtle_color = attributes[:'error_subtle_color']
      end

      if attributes.key?(:'favicon_type')
        self.favicon_type = attributes[:'favicon_type']
      end

      if attributes.key?(:'favicon_url')
        self.favicon_url = attributes[:'favicon_url']
      end

      if attributes.key?(:'foreground_default_color')
        self.foreground_default_color = attributes[:'foreground_default_color']
      end

      if attributes.key?(:'foreground_disabled_color')
        self.foreground_disabled_color = attributes[:'foreground_disabled_color']
      end

      if attributes.key?(:'foreground_muted_color')
        self.foreground_muted_color = attributes[:'foreground_muted_color']
      end

      if attributes.key?(:'foreground_on_accent_color')
        self.foreground_on_accent_color = attributes[:'foreground_on_accent_color']
      end

      if attributes.key?(:'foreground_on_dark_color')
        self.foreground_on_dark_color = attributes[:'foreground_on_dark_color']
      end

      if attributes.key?(:'foreground_on_disabled_color')
        self.foreground_on_disabled_color = attributes[:'foreground_on_disabled_color']
      end

      if attributes.key?(:'foreground_subtle_color')
        self.foreground_subtle_color = attributes[:'foreground_subtle_color']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'input_background_color')
        self.input_background_color = attributes[:'input_background_color']
      end

      if attributes.key?(:'input_disabled_color')
        self.input_disabled_color = attributes[:'input_disabled_color']
      end

      if attributes.key?(:'input_placeholder_color')
        self.input_placeholder_color = attributes[:'input_placeholder_color']
      end

      if attributes.key?(:'input_text_color')
        self.input_text_color = attributes[:'input_text_color']
      end

      if attributes.key?(:'logo_type')
        self.logo_type = attributes[:'logo_type']
      end

      if attributes.key?(:'logo_url')
        self.logo_url = attributes[:'logo_url']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'primary_color')
        self.primary_color = attributes[:'primary_color']
      end

      if attributes.key?(:'project_branding_id')
        self.project_branding_id = attributes[:'project_branding_id']
      else
        self.project_branding_id = nil
      end

      if attributes.key?(:'secondary_color')
        self.secondary_color = attributes[:'secondary_color']
      end

      if attributes.key?(:'success_emphasis_color')
        self.success_emphasis_color = attributes[:'success_emphasis_color']
      end

      if attributes.key?(:'text_default_color')
        self.text_default_color = attributes[:'text_default_color']
      end

      if attributes.key?(:'text_disabled_color')
        self.text_disabled_color = attributes[:'text_disabled_color']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @project_branding_id.nil?
        invalid_properties.push('invalid value for "project_branding_id", project_branding_id cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @created_at.nil?
      return false if @id.nil?
      return false if @name.nil?
      return false if @project_branding_id.nil?
      return false if @updated_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accent_default_color == o.accent_default_color &&
          accent_disabled_color == o.accent_disabled_color &&
          accent_emphasis_color == o.accent_emphasis_color &&
          accent_muted_color == o.accent_muted_color &&
          accent_subtle_color == o.accent_subtle_color &&
          background_canvas_color == o.background_canvas_color &&
          background_subtle_color == o.background_subtle_color &&
          background_surface_color == o.background_surface_color &&
          border_default_color == o.border_default_color &&
          created_at == o.created_at &&
          error_default_color == o.error_default_color &&
          error_emphasis_color == o.error_emphasis_color &&
          error_muted_color == o.error_muted_color &&
          error_subtle_color == o.error_subtle_color &&
          favicon_type == o.favicon_type &&
          favicon_url == o.favicon_url &&
          foreground_default_color == o.foreground_default_color &&
          foreground_disabled_color == o.foreground_disabled_color &&
          foreground_muted_color == o.foreground_muted_color &&
          foreground_on_accent_color == o.foreground_on_accent_color &&
          foreground_on_dark_color == o.foreground_on_dark_color &&
          foreground_on_disabled_color == o.foreground_on_disabled_color &&
          foreground_subtle_color == o.foreground_subtle_color &&
          id == o.id &&
          input_background_color == o.input_background_color &&
          input_disabled_color == o.input_disabled_color &&
          input_placeholder_color == o.input_placeholder_color &&
          input_text_color == o.input_text_color &&
          logo_type == o.logo_type &&
          logo_url == o.logo_url &&
          name == o.name &&
          primary_color == o.primary_color &&
          project_branding_id == o.project_branding_id &&
          secondary_color == o.secondary_color &&
          success_emphasis_color == o.success_emphasis_color &&
          text_default_color == o.text_default_color &&
          text_disabled_color == o.text_disabled_color &&
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
      [accent_default_color, accent_disabled_color, accent_emphasis_color, accent_muted_color, accent_subtle_color, background_canvas_color, background_subtle_color, background_surface_color, border_default_color, created_at, error_default_color, error_emphasis_color, error_muted_color, error_subtle_color, favicon_type, favicon_url, foreground_default_color, foreground_disabled_color, foreground_muted_color, foreground_on_accent_color, foreground_on_dark_color, foreground_on_disabled_color, foreground_subtle_color, id, input_background_color, input_disabled_color, input_placeholder_color, input_text_color, logo_type, logo_url, name, primary_color, project_branding_id, secondary_color, success_emphasis_color, text_default_color, text_disabled_color, updated_at].hash
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
