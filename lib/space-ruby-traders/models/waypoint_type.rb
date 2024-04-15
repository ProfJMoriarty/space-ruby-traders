require 'date'
require 'time'

module SpaceRubyTraderClient
  class WaypointType
    PLANET = "PLANET".freeze
    GAS_GIANT = "GAS_GIANT".freeze
    MOON = "MOON".freeze
    ORBITAL_STATION = "ORBITAL_STATION".freeze
    JUMP_GATE = "JUMP_GATE".freeze
    ASTEROID_FIELD = "ASTEROID_FIELD".freeze
    ASTEROID = "ASTEROID".freeze
    ENGINEERED_ASTEROID = "ENGINEERED_ASTEROID".freeze
    ASTEROID_BASE = "ASTEROID_BASE".freeze
    NEBULA = "NEBULA".freeze
    DEBRIS_FIELD = "DEBRIS_FIELD".freeze
    GRAVITY_WELL = "GRAVITY_WELL".freeze
    ARTIFICIAL_GRAVITY_WELL = "ARTIFICIAL_GRAVITY_WELL".freeze
    FUEL_STATION = "FUEL_STATION".freeze

    def self.all_vars
      @all_vars ||= [PLANET, GAS_GIANT, MOON, ORBITAL_STATION, JUMP_GATE, ASTEROID_FIELD, ASTEROID, ENGINEERED_ASTEROID, ASTEROID_BASE, NEBULA, DEBRIS_FIELD, GRAVITY_WELL, ARTIFICIAL_GRAVITY_WELL, FUEL_STATION].freeze
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
      return value if WaypointType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #WaypointType"
    end
  end
end
