require 'date'
require 'time'

module SpaceRubyTraderClient
  # The frame of the ship. The frame determines the number of modules and mounting points of the ship, as well as base fuel capacity. As the condition of the frame takes more wear, the ship will become more sluggish and less maneuverable.
  class ShipFrame
    # Symbol of the frame.
    attr_accessor :symbol

    # Name of the frame.
    attr_accessor :name

    # Description of the frame.
    attr_accessor :description

    # The repairable condition of a component. A value of 0 indicates the component needs significant repairs, while a value of 1 indicates the component is in near perfect condition. As the condition of a component is repaired, the overall integrity of the component decreases.
    attr_accessor :condition

    # The overall integrity of the component, which determines the performance of the component. A value of 0 indicates that the component is almost completely degraded, while a value of 1 indicates that the component is in near perfect condition. The integrity of the component is non-repairable, and represents permanent wear over time.
    attr_accessor :integrity

    # The amount of slots that can be dedicated to modules installed in the ship. Each installed module take up a number of slots, and once there are no more slots, no new modules can be installed.
    attr_accessor :module_slots

    # The amount of slots that can be dedicated to mounts installed in the ship. Each installed mount takes up a number of points, and once there are no more points remaining, no new mounts can be installed.
    attr_accessor :mounting_points

    # The maximum amount of fuel that can be stored in this ship. When refueling, the ship will be refueled to this amount.
    attr_accessor :fuel_capacity

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
        :'name' => :'name',
        :'description' => :'description',
        :'condition' => :'condition',
        :'integrity' => :'integrity',
        :'module_slots' => :'moduleSlots',
        :'mounting_points' => :'mountingPoints',
        :'fuel_capacity' => :'fuelCapacity',
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
        :'name' => :'String',
        :'description' => :'String',
        :'condition' => :'Float',
        :'integrity' => :'Float',
        :'module_slots' => :'Integer',
        :'mounting_points' => :'Integer',
        :'fuel_capacity' => :'Integer',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::ShipFrame` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::ShipFrame`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      else
        self.symbol = nil
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

      if attributes.key?(:'condition')
        self.condition = attributes[:'condition']
      else
        self.condition = nil
      end

      if attributes.key?(:'integrity')
        self.integrity = attributes[:'integrity']
      else
        self.integrity = nil
      end

      if attributes.key?(:'module_slots')
        self.module_slots = attributes[:'module_slots']
      else
        self.module_slots = nil
      end

      if attributes.key?(:'mounting_points')
        self.mounting_points = attributes[:'mounting_points']
      else
        self.mounting_points = nil
      end

      if attributes.key?(:'fuel_capacity')
        self.fuel_capacity = attributes[:'fuel_capacity']
      else
        self.fuel_capacity = nil
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

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @condition.nil?
        invalid_properties.push('invalid value for "condition", condition cannot be nil.')
      end

      if @condition > 1
        invalid_properties.push('invalid value for "condition", must be smaller than or equal to 1.')
      end

      if @condition < 0
        invalid_properties.push('invalid value for "condition", must be greater than or equal to 0.')
      end

      if @integrity.nil?
        invalid_properties.push('invalid value for "integrity", integrity cannot be nil.')
      end

      if @integrity > 1
        invalid_properties.push('invalid value for "integrity", must be smaller than or equal to 1.')
      end

      if @integrity < 0
        invalid_properties.push('invalid value for "integrity", must be greater than or equal to 0.')
      end

      if @module_slots.nil?
        invalid_properties.push('invalid value for "module_slots", module_slots cannot be nil.')
      end

      if @module_slots < 0
        invalid_properties.push('invalid value for "module_slots", must be greater than or equal to 0.')
      end

      if @mounting_points.nil?
        invalid_properties.push('invalid value for "mounting_points", mounting_points cannot be nil.')
      end

      if @mounting_points < 0
        invalid_properties.push('invalid value for "mounting_points", must be greater than or equal to 0.')
      end

      if @fuel_capacity.nil?
        invalid_properties.push('invalid value for "fuel_capacity", fuel_capacity cannot be nil.')
      end

      if @fuel_capacity < 0
        invalid_properties.push('invalid value for "fuel_capacity", must be greater than or equal to 0.')
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
      symbol_validator = EnumAttributeValidator.new('String', ["FRAME_PROBE", "FRAME_DRONE", "FRAME_INTERCEPTOR", "FRAME_RACER", "FRAME_FIGHTER", "FRAME_FRIGATE", "FRAME_SHUTTLE", "FRAME_EXPLORER", "FRAME_MINER", "FRAME_LIGHT_FREIGHTER", "FRAME_HEAVY_FREIGHTER", "FRAME_TRANSPORT", "FRAME_DESTROYER", "FRAME_CRUISER", "FRAME_CARRIER"])
      return false unless symbol_validator.valid?(@symbol)
      return false if @name.nil?
      return false if @description.nil?
      return false if @condition.nil?
      return false if @condition > 1
      return false if @condition < 0
      return false if @integrity.nil?
      return false if @integrity > 1
      return false if @integrity < 0
      return false if @module_slots.nil?
      return false if @module_slots < 0
      return false if @mounting_points.nil?
      return false if @mounting_points < 0
      return false if @fuel_capacity.nil?
      return false if @fuel_capacity < 0
      return false if @requirements.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] symbol Object to be assigned
    def symbol=(symbol)
      validator = EnumAttributeValidator.new('String', ["FRAME_PROBE", "FRAME_DRONE", "FRAME_INTERCEPTOR", "FRAME_RACER", "FRAME_FIGHTER", "FRAME_FRIGATE", "FRAME_SHUTTLE", "FRAME_EXPLORER", "FRAME_MINER", "FRAME_LIGHT_FREIGHTER", "FRAME_HEAVY_FREIGHTER", "FRAME_TRANSPORT", "FRAME_DESTROYER", "FRAME_CRUISER", "FRAME_CARRIER"])
      unless validator.valid?(symbol)
        fail ArgumentError, "invalid value for \"symbol\", must be one of #{validator.allowable_values}."
      end
      @symbol = symbol
    end

    # Custom attribute writer method with validation
    # @param [Object] condition Value to be assigned
    def condition=(condition)
      if condition.nil?
        fail ArgumentError, 'condition cannot be nil'
      end

      if condition > 1
        fail ArgumentError, 'invalid value for "condition", must be smaller than or equal to 1.'
      end

      if condition < 0
        fail ArgumentError, 'invalid value for "condition", must be greater than or equal to 0.'
      end

      @condition = condition
    end

    # Custom attribute writer method with validation
    # @param [Object] integrity Value to be assigned
    def integrity=(integrity)
      if integrity.nil?
        fail ArgumentError, 'integrity cannot be nil'
      end

      if integrity > 1
        fail ArgumentError, 'invalid value for "integrity", must be smaller than or equal to 1.'
      end

      if integrity < 0
        fail ArgumentError, 'invalid value for "integrity", must be greater than or equal to 0.'
      end

      @integrity = integrity
    end

    # Custom attribute writer method with validation
    # @param [Object] module_slots Value to be assigned
    def module_slots=(module_slots)
      if module_slots.nil?
        fail ArgumentError, 'module_slots cannot be nil'
      end

      if module_slots < 0
        fail ArgumentError, 'invalid value for "module_slots", must be greater than or equal to 0.'
      end

      @module_slots = module_slots
    end

    # Custom attribute writer method with validation
    # @param [Object] mounting_points Value to be assigned
    def mounting_points=(mounting_points)
      if mounting_points.nil?
        fail ArgumentError, 'mounting_points cannot be nil'
      end

      if mounting_points < 0
        fail ArgumentError, 'invalid value for "mounting_points", must be greater than or equal to 0.'
      end

      @mounting_points = mounting_points
    end

    # Custom attribute writer method with validation
    # @param [Object] fuel_capacity Value to be assigned
    def fuel_capacity=(fuel_capacity)
      if fuel_capacity.nil?
        fail ArgumentError, 'fuel_capacity cannot be nil'
      end

      if fuel_capacity < 0
        fail ArgumentError, 'invalid value for "fuel_capacity", must be greater than or equal to 0.'
      end

      @fuel_capacity = fuel_capacity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          symbol == o.symbol &&
          name == o.name &&
          description == o.description &&
          condition == o.condition &&
          integrity == o.integrity &&
          module_slots == o.module_slots &&
          mounting_points == o.mounting_points &&
          fuel_capacity == o.fuel_capacity &&
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
      [symbol, name, description, condition, integrity, module_slots, mounting_points, fuel_capacity, requirements].hash
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
