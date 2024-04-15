require 'date'
require 'time'

module SpaceRubyTraderClient
  class WaypointModifierSymbol
    STRIPPED = "STRIPPED".freeze
    UNSTABLE = "UNSTABLE".freeze
    RADIATION_LEAK = "RADIATION_LEAK".freeze
    CRITICAL_LIMIT = "CRITICAL_LIMIT".freeze
    CIVIL_UNREST = "CIVIL_UNREST".freeze

    def self.all_vars
      @all_vars ||= [STRIPPED, UNSTABLE, RADIATION_LEAK, CRITICAL_LIMIT, CIVIL_UNREST].freeze
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
      return value if WaypointModifierSymbol.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #WaypointModifierSymbol"
    end
  end
end
