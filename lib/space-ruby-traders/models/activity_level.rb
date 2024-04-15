require 'date'
require 'time'

module SpaceRubyTraderClient
  class ActivityLevel
    WEAK = "WEAK".freeze
    GROWING = "GROWING".freeze
    STRONG = "STRONG".freeze
    RESTRICTED = "RESTRICTED".freeze

    def self.all_vars
      @all_vars ||= [WEAK, GROWING, STRONG, RESTRICTED].freeze
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
      return value if ActivityLevel.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ActivityLevel"
    end
  end
end
