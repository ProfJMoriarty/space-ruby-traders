require 'date'
require 'time'

module SpaceRubyTraderClient
  class FactionSymbol
    COSMIC = "COSMIC".freeze
    VOID = "VOID".freeze
    GALACTIC = "GALACTIC".freeze
    QUANTUM = "QUANTUM".freeze
    DOMINION = "DOMINION".freeze
    ASTRO = "ASTRO".freeze
    CORSAIRS = "CORSAIRS".freeze
    OBSIDIAN = "OBSIDIAN".freeze
    AEGIS = "AEGIS".freeze
    UNITED = "UNITED".freeze
    SOLITARY = "SOLITARY".freeze
    COBALT = "COBALT".freeze
    OMEGA = "OMEGA".freeze
    ECHO = "ECHO".freeze
    LORDS = "LORDS".freeze
    CULT = "CULT".freeze
    ANCIENTS = "ANCIENTS".freeze
    SHADOW = "SHADOW".freeze
    ETHEREAL = "ETHEREAL".freeze

    def self.all_vars
      @all_vars ||= [COSMIC, VOID, GALACTIC, QUANTUM, DOMINION, ASTRO, CORSAIRS, OBSIDIAN, AEGIS, UNITED, SOLITARY, COBALT, OMEGA, ECHO, LORDS, CULT, ANCIENTS, SHADOW, ETHEREAL].freeze
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
      return value if FactionSymbol.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FactionSymbol"
    end
  end
end
