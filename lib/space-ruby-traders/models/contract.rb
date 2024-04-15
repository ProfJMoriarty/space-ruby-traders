require 'date'
require 'time'

module SpaceRubyTraderClient
  # Contract details.
  class Contract
    # ID of the contract.
    attr_accessor :id

    # The symbol of the faction that this contract is for.
    attr_accessor :faction_symbol

    # Type of contract.
    attr_accessor :type

    attr_accessor :terms

    # Whether the contract has been accepted by the agent
    attr_accessor :accepted

    # Whether the contract has been fulfilled
    attr_accessor :fulfilled

    # Deprecated in favor of deadlineToAccept
    attr_accessor :expiration

    # The time at which the contract is no longer available to be accepted
    attr_accessor :deadline_to_accept

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
        :'id' => :'id',
        :'faction_symbol' => :'factionSymbol',
        :'type' => :'type',
        :'terms' => :'terms',
        :'accepted' => :'accepted',
        :'fulfilled' => :'fulfilled',
        :'expiration' => :'expiration',
        :'deadline_to_accept' => :'deadlineToAccept'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'faction_symbol' => :'String',
        :'type' => :'String',
        :'terms' => :'ContractTerms',
        :'accepted' => :'Boolean',
        :'fulfilled' => :'Boolean',
        :'expiration' => :'Time',
        :'deadline_to_accept' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::Contract` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::Contract`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'faction_symbol')
        self.faction_symbol = attributes[:'faction_symbol']
      else
        self.faction_symbol = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'terms')
        self.terms = attributes[:'terms']
      else
        self.terms = nil
      end

      if attributes.key?(:'accepted')
        self.accepted = attributes[:'accepted']
      else
        self.accepted = false
      end

      if attributes.key?(:'fulfilled')
        self.fulfilled = attributes[:'fulfilled']
      else
        self.fulfilled = false
      end

      if attributes.key?(:'expiration')
        self.expiration = attributes[:'expiration']
      else
        self.expiration = nil
      end

      if attributes.key?(:'deadline_to_accept')
        self.deadline_to_accept = attributes[:'deadline_to_accept']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if @faction_symbol.nil?
        invalid_properties.push('invalid value for "faction_symbol", faction_symbol cannot be nil.')
      end

      if @faction_symbol.to_s.length < 1
        invalid_properties.push('invalid value for "faction_symbol", the character length must be great than or equal to 1.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @terms.nil?
        invalid_properties.push('invalid value for "terms", terms cannot be nil.')
      end

      if @accepted.nil?
        invalid_properties.push('invalid value for "accepted", accepted cannot be nil.')
      end

      if @fulfilled.nil?
        invalid_properties.push('invalid value for "fulfilled", fulfilled cannot be nil.')
      end

      if @expiration.nil?
        invalid_properties.push('invalid value for "expiration", expiration cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @id.to_s.length < 1
      return false if @faction_symbol.nil?
      return false if @faction_symbol.to_s.length < 1
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["PROCUREMENT", "TRANSPORT", "SHUTTLE"])
      return false unless type_validator.valid?(@type)
      return false if @terms.nil?
      return false if @accepted.nil?
      return false if @fulfilled.nil?
      return false if @expiration.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] faction_symbol Value to be assigned
    def faction_symbol=(faction_symbol)
      if faction_symbol.nil?
        fail ArgumentError, 'faction_symbol cannot be nil'
      end

      if faction_symbol.to_s.length < 1
        fail ArgumentError, 'invalid value for "faction_symbol", the character length must be great than or equal to 1.'
      end

      @faction_symbol = faction_symbol
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["PROCUREMENT", "TRANSPORT", "SHUTTLE"])
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
          id == o.id &&
          faction_symbol == o.faction_symbol &&
          type == o.type &&
          terms == o.terms &&
          accepted == o.accepted &&
          fulfilled == o.fulfilled &&
          expiration == o.expiration &&
          deadline_to_accept == o.deadline_to_accept
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, faction_symbol, type, terms, accepted, fulfilled, expiration, deadline_to_accept].hash
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
