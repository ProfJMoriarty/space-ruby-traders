require 'date'
require 'time'

module SpaceRubyTraderClient
  # 
  class ShipyardShip
    attr_accessor :type

    attr_accessor :name

    attr_accessor :description

    attr_accessor :supply

    attr_accessor :activity

    attr_accessor :purchase_price

    attr_accessor :frame

    attr_accessor :reactor

    attr_accessor :engine

    attr_accessor :modules

    attr_accessor :mounts

    attr_accessor :crew

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
        :'type' => :'type',
        :'name' => :'name',
        :'description' => :'description',
        :'supply' => :'supply',
        :'activity' => :'activity',
        :'purchase_price' => :'purchasePrice',
        :'frame' => :'frame',
        :'reactor' => :'reactor',
        :'engine' => :'engine',
        :'modules' => :'modules',
        :'mounts' => :'mounts',
        :'crew' => :'crew'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'ShipType',
        :'name' => :'String',
        :'description' => :'String',
        :'supply' => :'SupplyLevel',
        :'activity' => :'ActivityLevel',
        :'purchase_price' => :'Integer',
        :'frame' => :'ShipFrame',
        :'reactor' => :'ShipReactor',
        :'engine' => :'ShipEngine',
        :'modules' => :'Array<ShipModule>',
        :'mounts' => :'Array<ShipMount>',
        :'crew' => :'ShipyardShipCrew'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::ShipyardShip` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::ShipyardShip`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
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

      if attributes.key?(:'supply')
        self.supply = attributes[:'supply']
      else
        self.supply = nil
      end

      if attributes.key?(:'activity')
        self.activity = attributes[:'activity']
      end

      if attributes.key?(:'purchase_price')
        self.purchase_price = attributes[:'purchase_price']
      else
        self.purchase_price = nil
      end

      if attributes.key?(:'frame')
        self.frame = attributes[:'frame']
      else
        self.frame = nil
      end

      if attributes.key?(:'reactor')
        self.reactor = attributes[:'reactor']
      else
        self.reactor = nil
      end

      if attributes.key?(:'engine')
        self.engine = attributes[:'engine']
      else
        self.engine = nil
      end

      if attributes.key?(:'modules')
        if (value = attributes[:'modules']).is_a?(Array)
          self.modules = value
        end
      else
        self.modules = nil
      end

      if attributes.key?(:'mounts')
        if (value = attributes[:'mounts']).is_a?(Array)
          self.mounts = value
        end
      else
        self.mounts = nil
      end

      if attributes.key?(:'crew')
        self.crew = attributes[:'crew']
      else
        self.crew = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @supply.nil?
        invalid_properties.push('invalid value for "supply", supply cannot be nil.')
      end

      if @purchase_price.nil?
        invalid_properties.push('invalid value for "purchase_price", purchase_price cannot be nil.')
      end

      if @frame.nil?
        invalid_properties.push('invalid value for "frame", frame cannot be nil.')
      end

      if @reactor.nil?
        invalid_properties.push('invalid value for "reactor", reactor cannot be nil.')
      end

      if @engine.nil?
        invalid_properties.push('invalid value for "engine", engine cannot be nil.')
      end

      if @modules.nil?
        invalid_properties.push('invalid value for "modules", modules cannot be nil.')
      end

      if @mounts.nil?
        invalid_properties.push('invalid value for "mounts", mounts cannot be nil.')
      end

      if @crew.nil?
        invalid_properties.push('invalid value for "crew", crew cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @type.nil?
      return false if @name.nil?
      return false if @description.nil?
      return false if @supply.nil?
      return false if @purchase_price.nil?
      return false if @frame.nil?
      return false if @reactor.nil?
      return false if @engine.nil?
      return false if @modules.nil?
      return false if @mounts.nil?
      return false if @crew.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          name == o.name &&
          description == o.description &&
          supply == o.supply &&
          activity == o.activity &&
          purchase_price == o.purchase_price &&
          frame == o.frame &&
          reactor == o.reactor &&
          engine == o.engine &&
          modules == o.modules &&
          mounts == o.mounts &&
          crew == o.crew
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, name, description, supply, activity, purchase_price, frame, reactor, engine, modules, mounts, crew].hash
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
