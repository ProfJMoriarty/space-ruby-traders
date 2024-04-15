require 'date'
require 'time'

module SpaceRubyTraderClient
  # A cooldown is a period of time in which a ship cannot perform certain actions.
  class Cooldown
    # The symbol of the ship that is on cooldown
    attr_accessor :ship_symbol

    # The total duration of the cooldown in seconds
    attr_accessor :total_seconds

    # The remaining duration of the cooldown in seconds
    attr_accessor :remaining_seconds

    # The date and time when the cooldown expires in ISO 8601 format
    attr_accessor :expiration

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ship_symbol' => :'shipSymbol',
        :'total_seconds' => :'totalSeconds',
        :'remaining_seconds' => :'remainingSeconds',
        :'expiration' => :'expiration'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ship_symbol' => :'String',
        :'total_seconds' => :'Integer',
        :'remaining_seconds' => :'Integer',
        :'expiration' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::Cooldown` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::Cooldown`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ship_symbol')
        self.ship_symbol = attributes[:'ship_symbol']
      else
        self.ship_symbol = nil
      end

      if attributes.key?(:'total_seconds')
        self.total_seconds = attributes[:'total_seconds']
      else
        self.total_seconds = nil
      end

      if attributes.key?(:'remaining_seconds')
        self.remaining_seconds = attributes[:'remaining_seconds']
      else
        self.remaining_seconds = nil
      end

      if attributes.key?(:'expiration')
        self.expiration = attributes[:'expiration']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @ship_symbol.nil?
        invalid_properties.push('invalid value for "ship_symbol", ship_symbol cannot be nil.')
      end

      if @ship_symbol.to_s.length < 1
        invalid_properties.push('invalid value for "ship_symbol", the character length must be great than or equal to 1.')
      end

      if @total_seconds.nil?
        invalid_properties.push('invalid value for "total_seconds", total_seconds cannot be nil.')
      end

      if @total_seconds < 0
        invalid_properties.push('invalid value for "total_seconds", must be greater than or equal to 0.')
      end

      if @remaining_seconds.nil?
        invalid_properties.push('invalid value for "remaining_seconds", remaining_seconds cannot be nil.')
      end

      if @remaining_seconds < 0
        invalid_properties.push('invalid value for "remaining_seconds", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ship_symbol.nil?
      return false if @ship_symbol.to_s.length < 1
      return false if @total_seconds.nil?
      return false if @total_seconds < 0
      return false if @remaining_seconds.nil?
      return false if @remaining_seconds < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] ship_symbol Value to be assigned
    def ship_symbol=(ship_symbol)
      if ship_symbol.nil?
        fail ArgumentError, 'ship_symbol cannot be nil'
      end

      if ship_symbol.to_s.length < 1
        fail ArgumentError, 'invalid value for "ship_symbol", the character length must be great than or equal to 1.'
      end

      @ship_symbol = ship_symbol
    end

    # Custom attribute writer method with validation
    # @param [Object] total_seconds Value to be assigned
    def total_seconds=(total_seconds)
      if total_seconds.nil?
        fail ArgumentError, 'total_seconds cannot be nil'
      end

      if total_seconds < 0
        fail ArgumentError, 'invalid value for "total_seconds", must be greater than or equal to 0.'
      end

      @total_seconds = total_seconds
    end

    # Custom attribute writer method with validation
    # @param [Object] remaining_seconds Value to be assigned
    def remaining_seconds=(remaining_seconds)
      if remaining_seconds.nil?
        fail ArgumentError, 'remaining_seconds cannot be nil'
      end

      if remaining_seconds < 0
        fail ArgumentError, 'invalid value for "remaining_seconds", must be greater than or equal to 0.'
      end

      @remaining_seconds = remaining_seconds
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ship_symbol == o.ship_symbol &&
          total_seconds == o.total_seconds &&
          remaining_seconds == o.remaining_seconds &&
          expiration == o.expiration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ship_symbol, total_seconds, remaining_seconds, expiration].hash
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
        klass = SpaceRubyTraderClient.const_get(type)
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
