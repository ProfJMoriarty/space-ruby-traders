require 'date'
require 'time'

module SpaceRubyTraderClient
  class SystemType
    NEUTRON_STAR = "NEUTRON_STAR".freeze
    RED_STAR = "RED_STAR".freeze
    ORANGE_STAR = "ORANGE_STAR".freeze
    BLUE_STAR = "BLUE_STAR".freeze
    YOUNG_STAR = "YOUNG_STAR".freeze
    WHITE_DWARF = "WHITE_DWARF".freeze
    BLACK_HOLE = "BLACK_HOLE".freeze
    HYPERGIANT = "HYPERGIANT".freeze
    NEBULA = "NEBULA".freeze
    UNSTABLE = "UNSTABLE".freeze

    def self.all_vars
      @all_vars ||= [NEUTRON_STAR, RED_STAR, ORANGE_STAR, BLUE_STAR, YOUNG_STAR, WHITE_DWARF, BLACK_HOLE, HYPERGIANT, NEBULA, UNSTABLE].freeze
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
      return value if SystemType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SystemType"
    end
  end
end
