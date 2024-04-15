require 'date'
require 'time'

module SpaceRubyTraderClient
  # Results of a transaction with a shipyard.
  class ShipyardTransaction
    # The symbol of the waypoint.
    attr_accessor :waypoint_symbol

    # The symbol of the ship that was the subject of the transaction.
    attr_accessor :ship_symbol

    # The symbol of the ship that was the subject of the transaction.
    attr_accessor :ship_type

    # The price of the transaction.
    attr_accessor :price

    # The symbol of the agent that made the transaction.
    attr_accessor :agent_symbol

    # The timestamp of the transaction.
    attr_accessor :timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'waypoint_symbol' => :'waypointSymbol',
        :'ship_symbol' => :'shipSymbol',
        :'ship_type' => :'shipType',
        :'price' => :'price',
        :'agent_symbol' => :'agentSymbol',
        :'timestamp' => :'timestamp'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'waypoint_symbol' => :'String',
        :'ship_symbol' => :'String',
        :'ship_type' => :'String',
        :'price' => :'Integer',
        :'agent_symbol' => :'String',
        :'timestamp' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::ShipyardTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::ShipyardTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'waypoint_symbol')
        self.waypoint_symbol = attributes[:'waypoint_symbol']
      else
        self.waypoint_symbol = nil
      end

      if attributes.key?(:'ship_symbol')
        self.ship_symbol = attributes[:'ship_symbol']
      else
        self.ship_symbol = nil
      end

      if attributes.key?(:'ship_type')
        self.ship_type = attributes[:'ship_type']
      else
        self.ship_type = nil
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      else
        self.price = nil
      end

      if attributes.key?(:'agent_symbol')
        self.agent_symbol = attributes[:'agent_symbol']
      else
        self.agent_symbol = nil
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      else
        self.timestamp = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @waypoint_symbol.nil?
        invalid_properties.push('invalid value for "waypoint_symbol", waypoint_symbol cannot be nil.')
      end

      if @waypoint_symbol.to_s.length < 1
        invalid_properties.push('invalid value for "waypoint_symbol", the character length must be great than or equal to 1.')
      end

      if @ship_symbol.nil?
        invalid_properties.push('invalid value for "ship_symbol", ship_symbol cannot be nil.')
      end

      if @ship_type.nil?
        invalid_properties.push('invalid value for "ship_type", ship_type cannot be nil.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @price < 0
        invalid_properties.push('invalid value for "price", must be greater than or equal to 0.')
      end

      if @agent_symbol.nil?
        invalid_properties.push('invalid value for "agent_symbol", agent_symbol cannot be nil.')
      end

      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @waypoint_symbol.nil?
      return false if @waypoint_symbol.to_s.length < 1
      return false if @ship_symbol.nil?
      return false if @ship_type.nil?
      return false if @price.nil?
      return false if @price < 0
      return false if @agent_symbol.nil?
      return false if @timestamp.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] waypoint_symbol Value to be assigned
    def waypoint_symbol=(waypoint_symbol)
      if waypoint_symbol.nil?
        fail ArgumentError, 'waypoint_symbol cannot be nil'
      end

      if waypoint_symbol.to_s.length < 1
        fail ArgumentError, 'invalid value for "waypoint_symbol", the character length must be great than or equal to 1.'
      end

      @waypoint_symbol = waypoint_symbol
    end

    # Custom attribute writer method with validation
    # @param [Object] price Value to be assigned
    def price=(price)
      if price.nil?
        fail ArgumentError, 'price cannot be nil'
      end

      if price < 0
        fail ArgumentError, 'invalid value for "price", must be greater than or equal to 0.'
      end

      @price = price
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          waypoint_symbol == o.waypoint_symbol &&
          ship_symbol == o.ship_symbol &&
          ship_type == o.ship_type &&
          price == o.price &&
          agent_symbol == o.agent_symbol &&
          timestamp == o.timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [waypoint_symbol, ship_symbol, ship_type, price, agent_symbol, timestamp].hash
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
