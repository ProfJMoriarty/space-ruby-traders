require 'date'
require 'time'

module SpaceRubyTraderClient
  # A module can be installed in a ship and provides a set of capabilities such as storage space or quarters for crew. Module installations are permanent.
  class ShipModule
    # The symbol of the module.
    attr_accessor :symbol

    # Modules that provide capacity, such as cargo hold or crew quarters will show this value to denote how much of a bonus the module grants.
    attr_accessor :capacity

    # Modules that have a range will such as a sensor array show this value to denote how far can the module reach with its capabilities.
    attr_accessor :range

    # Name of this module.
    attr_accessor :name

    # Description of this module.
    attr_accessor :description

    attr_accessor :requirements

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
        :'symbol' => :'symbol',
        :'capacity' => :'capacity',
        :'range' => :'range',
        :'name' => :'name',
        :'description' => :'description',
        :'requirements' => :'requirements'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'symbol' => :'String',
        :'capacity' => :'Integer',
        :'range' => :'Integer',
        :'name' => :'String',
        :'description' => :'String',
        :'requirements' => :'ShipRequirements'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::ShipModule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::ShipModule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      else
        self.symbol = nil
      end

      if attributes.key?(:'capacity')
        self.capacity = attributes[:'capacity']
      end

      if attributes.key?(:'range')
        self.range = attributes[:'range']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'requirements')
        self.requirements = attributes[:'requirements']
      else
        self.requirements = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @symbol.nil?
        invalid_properties.push('invalid value for "symbol", symbol cannot be nil.')
      end

      if !@capacity.nil? && @capacity < 0
        invalid_properties.push('invalid value for "capacity", must be greater than or equal to 0.')
      end

      if !@range.nil? && @range < 0
        invalid_properties.push('invalid value for "range", must be greater than or equal to 0.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @requirements.nil?
        invalid_properties.push('invalid value for "requirements", requirements cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @symbol.nil?
      symbol_validator = EnumAttributeValidator.new('String', ["MODULE_MINERAL_PROCESSOR_I", "MODULE_GAS_PROCESSOR_I", "MODULE_CARGO_HOLD_I", "MODULE_CARGO_HOLD_II", "MODULE_CARGO_HOLD_III", "MODULE_CREW_QUARTERS_I", "MODULE_ENVOY_QUARTERS_I", "MODULE_PASSENGER_CABIN_I", "MODULE_MICRO_REFINERY_I", "MODULE_ORE_REFINERY_I", "MODULE_FUEL_REFINERY_I", "MODULE_SCIENCE_LAB_I", "MODULE_JUMP_DRIVE_I", "MODULE_JUMP_DRIVE_II", "MODULE_JUMP_DRIVE_III", "MODULE_WARP_DRIVE_I", "MODULE_WARP_DRIVE_II", "MODULE_WARP_DRIVE_III", "MODULE_SHIELD_GENERATOR_I", "MODULE_SHIELD_GENERATOR_II"])
      return false unless symbol_validator.valid?(@symbol)
      return false if !@capacity.nil? && @capacity < 0
      return false if !@range.nil? && @range < 0
      return false if @name.nil?
      return false if @description.nil?
      return false if @requirements.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] symbol Object to be assigned
    def symbol=(symbol)
      validator = EnumAttributeValidator.new('String', ["MODULE_MINERAL_PROCESSOR_I", "MODULE_GAS_PROCESSOR_I", "MODULE_CARGO_HOLD_I", "MODULE_CARGO_HOLD_II", "MODULE_CARGO_HOLD_III", "MODULE_CREW_QUARTERS_I", "MODULE_ENVOY_QUARTERS_I", "MODULE_PASSENGER_CABIN_I", "MODULE_MICRO_REFINERY_I", "MODULE_ORE_REFINERY_I", "MODULE_FUEL_REFINERY_I", "MODULE_SCIENCE_LAB_I", "MODULE_JUMP_DRIVE_I", "MODULE_JUMP_DRIVE_II", "MODULE_JUMP_DRIVE_III", "MODULE_WARP_DRIVE_I", "MODULE_WARP_DRIVE_II", "MODULE_WARP_DRIVE_III", "MODULE_SHIELD_GENERATOR_I", "MODULE_SHIELD_GENERATOR_II"])
      unless validator.valid?(symbol)
        fail ArgumentError, "invalid value for \"symbol\", must be one of #{validator.allowable_values}."
      end
      @symbol = symbol
    end

    # Custom attribute writer method with validation
    # @param [Object] capacity Value to be assigned
    def capacity=(capacity)
      if capacity.nil?
        fail ArgumentError, 'capacity cannot be nil'
      end

      if capacity < 0
        fail ArgumentError, 'invalid value for "capacity", must be greater than or equal to 0.'
      end

      @capacity = capacity
    end

    # Custom attribute writer method with validation
    # @param [Object] range Value to be assigned
    def range=(range)
      if range.nil?
        fail ArgumentError, 'range cannot be nil'
      end

      if range < 0
        fail ArgumentError, 'invalid value for "range", must be greater than or equal to 0.'
      end

      @range = range
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          symbol == o.symbol &&
          capacity == o.capacity &&
          range == o.range &&
          name == o.name &&
          description == o.description &&
          requirements == o.requirements
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [symbol, capacity, range, name, description, requirements].hash
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
