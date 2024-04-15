require 'date'
require 'time'

module SpaceRubyTraderClient
  class ShipRole
    FABRICATOR = "FABRICATOR".freeze
    HARVESTER = "HARVESTER".freeze
    HAULER = "HAULER".freeze
    INTERCEPTOR = "INTERCEPTOR".freeze
    EXCAVATOR = "EXCAVATOR".freeze
    TRANSPORT = "TRANSPORT".freeze
    REPAIR = "REPAIR".freeze
    SURVEYOR = "SURVEYOR".freeze
    COMMAND = "COMMAND".freeze
    CARRIER = "CARRIER".freeze
    PATROL = "PATROL".freeze
    SATELLITE = "SATELLITE".freeze
    EXPLORER = "EXPLORER".freeze
    REFINERY = "REFINERY".freeze

    def self.all_vars
      @all_vars ||= [FABRICATOR, HARVESTER, HAULER, INTERCEPTOR, EXCAVATOR, TRANSPORT, REPAIR, SURVEYOR, COMMAND, CARRIER, PATROL, SATELLITE, EXPLORER, REFINERY].freeze
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
      return value if ShipRole.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ShipRole"
    end
  end
end
