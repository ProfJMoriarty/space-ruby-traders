require 'date'
require 'time'

module SpaceRubyTraderClient
  class ShipType
    PROBE = "SHIP_PROBE".freeze
    MINING_DRONE = "SHIP_MINING_DRONE".freeze
    SIPHON_DRONE = "SHIP_SIPHON_DRONE".freeze
    INTERCEPTOR = "SHIP_INTERCEPTOR".freeze
    LIGHT_HAULER = "SHIP_LIGHT_HAULER".freeze
    COMMAND_FRIGATE = "SHIP_COMMAND_FRIGATE".freeze
    EXPLORER = "SHIP_EXPLORER".freeze
    HEAVY_FREIGHTER = "SHIP_HEAVY_FREIGHTER".freeze
    LIGHT_SHUTTLE = "SHIP_LIGHT_SHUTTLE".freeze
    ORE_HOUND = "SHIP_ORE_HOUND".freeze
    REFINING_FREIGHTER = "SHIP_REFINING_FREIGHTER".freeze
    SURVEYOR = "SHIP_SURVEYOR".freeze

    def self.all_vars
      @all_vars ||= [PROBE, MINING_DRONE, SIPHON_DRONE, INTERCEPTOR, LIGHT_HAULER, COMMAND_FRIGATE, EXPLORER, HEAVY_FREIGHTER, LIGHT_SHUTTLE, ORE_HOUND, REFINING_FREIGHTER, SURVEYOR].freeze
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
      return value if ShipType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ShipType"
    end
  end
end
