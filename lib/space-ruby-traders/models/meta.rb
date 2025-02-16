require 'date'
require 'time'

module SpaceRubyTraderClient
  # Meta details for pagination.
  class Meta
    # Shows the total amount of items of this kind that exist.
    attr_accessor :total

    # A page denotes an amount of items, offset from the first item. Each page holds an amount of items equal to the `limit`.
    attr_accessor :page

    # The amount of items in each page. Limits how many items can be fetched at once.
    attr_accessor :limit

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total' => :'total',
        :'page' => :'page',
        :'limit' => :'limit'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total' => :'Integer',
        :'page' => :'Integer',
        :'limit' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::Meta` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::Meta`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      else
        self.total = nil
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      else
        self.page = 1
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      else
        self.limit = 10
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @total.nil?
        invalid_properties.push('invalid value for "total", total cannot be nil.')
      end

      if @total < 0
        invalid_properties.push('invalid value for "total", must be greater than or equal to 0.')
      end

      if @page.nil?
        invalid_properties.push('invalid value for "page", page cannot be nil.')
      end

      if @page < 1
        invalid_properties.push('invalid value for "page", must be greater than or equal to 1.')
      end

      if @limit.nil?
        invalid_properties.push('invalid value for "limit", limit cannot be nil.')
      end

      if @limit > 20
        invalid_properties.push('invalid value for "limit", must be smaller than or equal to 20.')
      end

      if @limit < 1
        invalid_properties.push('invalid value for "limit", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @total.nil?
      return false if @total < 0
      return false if @page.nil?
      return false if @page < 1
      return false if @limit.nil?
      return false if @limit > 20
      return false if @limit < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] total Value to be assigned
    def total=(total)
      if total.nil?
        fail ArgumentError, 'total cannot be nil'
      end

      if total < 0
        fail ArgumentError, 'invalid value for "total", must be greater than or equal to 0.'
      end

      @total = total
    end

    # Custom attribute writer method with validation
    # @param [Object] page Value to be assigned
    def page=(page)
      if page.nil?
        fail ArgumentError, 'page cannot be nil'
      end

      if page < 1
        fail ArgumentError, 'invalid value for "page", must be greater than or equal to 1.'
      end

      @page = page
    end

    # Custom attribute writer method with validation
    # @param [Object] limit Value to be assigned
    def limit=(limit)
      if limit.nil?
        fail ArgumentError, 'limit cannot be nil'
      end

      if limit > 20
        fail ArgumentError, 'invalid value for "limit", must be smaller than or equal to 20.'
      end

      if limit < 1
        fail ArgumentError, 'invalid value for "limit", must be greater than or equal to 1.'
      end

      @limit = limit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total == o.total &&
          page == o.page &&
          limit == o.limit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total, page, limit].hash
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
