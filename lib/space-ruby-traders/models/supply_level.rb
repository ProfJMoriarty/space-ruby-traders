require 'date'
require 'time'

module SpaceRubyTraderClient
  class SupplyLevel
    SCARCE = "SCARCE".freeze
    LIMITED = "LIMITED".freeze
    MODERATE = "MODERATE".freeze
    HIGH = "HIGH".freeze
    ABUNDANT = "ABUNDANT".freeze

    def self.all_vars
      @all_vars ||= [SCARCE, LIMITED, MODERATE, HIGH, ABUNDANT].freeze
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
      return value if SupplyLevel.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SupplyLevel"
    end
  end
end
