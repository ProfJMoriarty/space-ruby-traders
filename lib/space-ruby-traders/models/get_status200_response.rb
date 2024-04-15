require 'date'
require 'time'

module SpaceRubyTraderClient
  class GetStatus200Response
    # The current status of the game server.
    attr_accessor :status

    # The current version of the API.
    attr_accessor :version

    # The date when the game server was last reset.
    attr_accessor :reset_date

    attr_accessor :description

    attr_accessor :stats

    attr_accessor :leaderboards

    attr_accessor :server_resets

    attr_accessor :announcements

    attr_accessor :links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'status',
        :'version' => :'version',
        :'reset_date' => :'resetDate',
        :'description' => :'description',
        :'stats' => :'stats',
        :'leaderboards' => :'leaderboards',
        :'server_resets' => :'serverResets',
        :'announcements' => :'announcements',
        :'links' => :'links'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'String',
        :'version' => :'String',
        :'reset_date' => :'String',
        :'description' => :'String',
        :'stats' => :'GetStatus200ResponseStats',
        :'leaderboards' => :'GetStatus200ResponseLeaderboards',
        :'server_resets' => :'GetStatus200ResponseServerResets',
        :'announcements' => :'Array<GetStatus200ResponseAnnouncementsInner>',
        :'links' => :'Array<GetStatus200ResponseLinksInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpaceRubyTraderClient::GetStatus200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpaceRubyTraderClient::GetStatus200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end

      if attributes.key?(:'reset_date')
        self.reset_date = attributes[:'reset_date']
      else
        self.reset_date = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'stats')
        self.stats = attributes[:'stats']
      else
        self.stats = nil
      end

      if attributes.key?(:'leaderboards')
        self.leaderboards = attributes[:'leaderboards']
      else
        self.leaderboards = nil
      end

      if attributes.key?(:'server_resets')
        self.server_resets = attributes[:'server_resets']
      else
        self.server_resets = nil
      end

      if attributes.key?(:'announcements')
        if (value = attributes[:'announcements']).is_a?(Array)
          self.announcements = value
        end
      else
        self.announcements = nil
      end

      if attributes.key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      else
        self.links = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if @reset_date.nil?
        invalid_properties.push('invalid value for "reset_date", reset_date cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @stats.nil?
        invalid_properties.push('invalid value for "stats", stats cannot be nil.')
      end

      if @leaderboards.nil?
        invalid_properties.push('invalid value for "leaderboards", leaderboards cannot be nil.')
      end

      if @server_resets.nil?
        invalid_properties.push('invalid value for "server_resets", server_resets cannot be nil.')
      end

      if @announcements.nil?
        invalid_properties.push('invalid value for "announcements", announcements cannot be nil.')
      end

      if @links.nil?
        invalid_properties.push('invalid value for "links", links cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @status.nil?
      return false if @version.nil?
      return false if @reset_date.nil?
      return false if @description.nil?
      return false if @stats.nil?
      return false if @leaderboards.nil?
      return false if @server_resets.nil?
      return false if @announcements.nil?
      return false if @links.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          version == o.version &&
          reset_date == o.reset_date &&
          description == o.description &&
          stats == o.stats &&
          leaderboards == o.leaderboards &&
          server_resets == o.server_resets &&
          announcements == o.announcements &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, version, reset_date, description, stats, leaderboards, server_resets, announcements, links].hash
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
