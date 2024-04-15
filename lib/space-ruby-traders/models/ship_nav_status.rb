require 'date'
require 'time'

module SpaceRubyTraderClient
  class ShipNavStatus
    IN_TRANSIT = "IN_TRANSIT".freeze
    IN_ORBIT = "IN_ORBIT".freeze
    DOCKED = "DOCKED".freeze

    def self.all_vars
      @all_vars ||= [IN_TRANSIT, IN_ORBIT, DOCKED].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ShipNavStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ShipNavStatus"
    end
  end
end
