=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.2.0-alpha.40
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OryClient
  # It is important that this model object is named JSONWebKey for \"swagger generate spec\" to generate only on definition of a JSONWebKey.
  class JSONWebKey
    # The \"alg\" (algorithm) parameter identifies the algorithm intended for use with the key.  The values used should either be registered in the IANA \"JSON Web Signature and Encryption Algorithms\" registry established by [JWA] or be a value that contains a Collision- Resistant Name.
    attr_accessor :alg

    attr_accessor :crv

    attr_accessor :d

    attr_accessor :dp

    attr_accessor :dq

    attr_accessor :e

    attr_accessor :k

    # The \"kid\" (key ID) parameter is used to match a specific key.  This is used, for instance, to choose among a set of keys within a JWK Set during key rollover.  The structure of the \"kid\" value is unspecified.  When \"kid\" values are used within a JWK Set, different keys within the JWK Set SHOULD use distinct \"kid\" values.  (One example in which different keys might use the same \"kid\" value is if they have different \"kty\" (key type) values but are considered to be equivalent alternatives by the application using them.)  The \"kid\" value is a case-sensitive string.
    attr_accessor :kid

    # The \"kty\" (key type) parameter identifies the cryptographic algorithm family used with the key, such as \"RSA\" or \"EC\". \"kty\" values should either be registered in the IANA \"JSON Web Key Types\" registry established by [JWA] or be a value that contains a Collision- Resistant Name.  The \"kty\" value is a case-sensitive string.
    attr_accessor :kty

    attr_accessor :n

    attr_accessor :p

    attr_accessor :q

    attr_accessor :qi

    # Use (\"public key use\") identifies the intended use of the public key. The \"use\" parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Values are commonly \"sig\" (signature) or \"enc\" (encryption).
    attr_accessor :use

    attr_accessor :x

    # The \"x5c\" (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates [RFC5280].  The certificate chain is represented as a JSON array of certificate value strings.  Each string in the array is a base64-encoded (Section 4 of [RFC4648] -- not base64url-encoded) DER [ITU.X690.1994] PKIX certificate value. The PKIX certificate containing the key value MUST be the first certificate.
    attr_accessor :x5c

    attr_accessor :y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alg' => :'alg',
        :'crv' => :'crv',
        :'d' => :'d',
        :'dp' => :'dp',
        :'dq' => :'dq',
        :'e' => :'e',
        :'k' => :'k',
        :'kid' => :'kid',
        :'kty' => :'kty',
        :'n' => :'n',
        :'p' => :'p',
        :'q' => :'q',
        :'qi' => :'qi',
        :'use' => :'use',
        :'x' => :'x',
        :'x5c' => :'x5c',
        :'y' => :'y'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'alg' => :'String',
        :'crv' => :'String',
        :'d' => :'String',
        :'dp' => :'String',
        :'dq' => :'String',
        :'e' => :'String',
        :'k' => :'String',
        :'kid' => :'String',
        :'kty' => :'String',
        :'n' => :'String',
        :'p' => :'String',
        :'q' => :'String',
        :'qi' => :'String',
        :'use' => :'String',
        :'x' => :'String',
        :'x5c' => :'Array<String>',
        :'y' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::JSONWebKey` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::JSONWebKey`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'alg')
        self.alg = attributes[:'alg']
      end

      if attributes.key?(:'crv')
        self.crv = attributes[:'crv']
      end

      if attributes.key?(:'d')
        self.d = attributes[:'d']
      end

      if attributes.key?(:'dp')
        self.dp = attributes[:'dp']
      end

      if attributes.key?(:'dq')
        self.dq = attributes[:'dq']
      end

      if attributes.key?(:'e')
        self.e = attributes[:'e']
      end

      if attributes.key?(:'k')
        self.k = attributes[:'k']
      end

      if attributes.key?(:'kid')
        self.kid = attributes[:'kid']
      end

      if attributes.key?(:'kty')
        self.kty = attributes[:'kty']
      end

      if attributes.key?(:'n')
        self.n = attributes[:'n']
      end

      if attributes.key?(:'p')
        self.p = attributes[:'p']
      end

      if attributes.key?(:'q')
        self.q = attributes[:'q']
      end

      if attributes.key?(:'qi')
        self.qi = attributes[:'qi']
      end

      if attributes.key?(:'use')
        self.use = attributes[:'use']
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      end

      if attributes.key?(:'x5c')
        if (value = attributes[:'x5c']).is_a?(Array)
          self.x5c = value
        end
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @alg.nil?
        invalid_properties.push('invalid value for "alg", alg cannot be nil.')
      end

      if @kid.nil?
        invalid_properties.push('invalid value for "kid", kid cannot be nil.')
      end

      if @kty.nil?
        invalid_properties.push('invalid value for "kty", kty cannot be nil.')
      end

      if @use.nil?
        invalid_properties.push('invalid value for "use", use cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @alg.nil?
      return false if @kid.nil?
      return false if @kty.nil?
      return false if @use.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alg == o.alg &&
          crv == o.crv &&
          d == o.d &&
          dp == o.dp &&
          dq == o.dq &&
          e == o.e &&
          k == o.k &&
          kid == o.kid &&
          kty == o.kty &&
          n == o.n &&
          p == o.p &&
          q == o.q &&
          qi == o.qi &&
          use == o.use &&
          x == o.x &&
          x5c == o.x5c &&
          y == o.y
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [alg, crv, d, dp, dq, e, k, kid, kty, n, p, q, qi, use, x, x5c, y].hash
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
