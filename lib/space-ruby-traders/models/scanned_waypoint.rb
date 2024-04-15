require 'date'
require 'time'

module SpaceRubyTraderClient
  # A waypoint that was scanned by a ship.
  class ScannedWaypoint
    # The symbol of the waypoint.
    attr_accessor :symbol

    attr_accessor :type

    # The symbol of the system.
    attr_accessor :system_symbol

    # Position in the universe in the x axis.
    attr_accessor :x

    # Position in the universe in the y axis.
    attr_accessor :y

    # List of waypoints that orbit this waypoint.
    attr_accessor :orbitals

    attr_accessor :faction

    # The traits of the waypoint.
    attr_accessor :traits

    attr_accessor :chart

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
        :'type' => :'type',
        :'system_symbol' => :'systemSymbol',
        :'x' => :'x',
        :'y' => :'y',
        :'orbitals' => :'orbitals',
        :'faction' => :'faction',
        :'traits' => :'traits',
        :'chart' => :'chart'
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
        :'type' => :'WaypointType',
        :'system_symbol' => :'String',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'orbitals' => :'Array<WaypointOrbital>',
        :'faction' => :'WaypointFaction',
        :'traits' => :'Array<WaypointTrait>',
        :'chart' => :'Chart'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::ScannedWaypoint` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::ScannedWaypoint`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      else
        self.symbol = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'system_symbol')
        self.system_symbol = attributes[:'system_symbol']
      else
        self.system_symbol = nil
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      else
        self.x = nil
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      else
        self.y = nil
      end

      if attributes.key?(:'orbitals')
        if (value = attributes[:'orbitals']).is_a?(Array)
          self.orbitals = value
        end
      else
        self.orbitals = nil
      end

      if attributes.key?(:'faction')
        self.faction = attributes[:'faction']
      end

      if attributes.key?(:'traits')
        if (value = attributes[:'traits']).is_a?(Array)
          self.traits = value
        end
      else
        self.traits = nil
      end

      if attributes.key?(:'chart')
        self.chart = attributes[:'chart']
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

      if @symbol.to_s.length < 1
        invalid_properties.push('invalid value for "symbol", the character length must be great than or equal to 1.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @system_symbol.nil?
        invalid_properties.push('invalid value for "system_symbol", system_symbol cannot be nil.')
      end

      if @system_symbol.to_s.length < 1
        invalid_properties.push('invalid value for "system_symbol", the character length must be great than or equal to 1.')
      end

      if @x.nil?
        invalid_properties.push('invalid value for "x", x cannot be nil.')
      end

      if @y.nil?
        invalid_properties.push('invalid value for "y", y cannot be nil.')
      end

      if @orbitals.nil?
        invalid_properties.push('invalid value for "orbitals", orbitals cannot be nil.')
      end

      if @traits.nil?
        invalid_properties.push('invalid value for "traits", traits cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @symbol.nil?
      return false if @symbol.to_s.length < 1
      return false if @type.nil?
      return false if @system_symbol.nil?
      return false if @system_symbol.to_s.length < 1
      return false if @x.nil?
      return false if @y.nil?
      return false if @orbitals.nil?
      return false if @traits.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] symbol Value to be assigned
    def symbol=(symbol)
      if symbol.nil?
        fail ArgumentError, 'symbol cannot be nil'
      end

      if symbol.to_s.length < 1
        fail ArgumentError, 'invalid value for "symbol", the character length must be great than or equal to 1.'
      end

      @symbol = symbol
    end

    # Custom attribute writer method with validation
    # @param [Object] system_symbol Value to be assigned
    def system_symbol=(system_symbol)
      if system_symbol.nil?
        fail ArgumentError, 'system_symbol cannot be nil'
      end

      if system_symbol.to_s.length < 1
        fail ArgumentError, 'invalid value for "system_symbol", the character length must be great than or equal to 1.'
      end

      @system_symbol = system_symbol
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          symbol == o.symbol &&
          type == o.type &&
          system_symbol == o.system_symbol &&
          x == o.x &&
          y == o.y &&
          orbitals == o.orbitals &&
          faction == o.faction &&
          traits == o.traits &&
          chart == o.chart
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [symbol, type, system_symbol, x, y, orbitals, faction, traits, chart].hash
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
