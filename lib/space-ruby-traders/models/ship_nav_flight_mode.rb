require 'date'
require 'time'

module SpaceRubyTraderClient
  class ShipNavFlightMode
    DRIFT = "DRIFT".freeze
    STEALTH = "STEALTH".freeze
    CRUISE = "CRUISE".freeze
    BURN = "BURN".freeze

    def self.all_vars
      @all_vars ||= [DRIFT, STEALTH, CRUISE, BURN].freeze
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
      return value if ShipNavFlightMode.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ShipNavFlightMode"
    end
  end
end
