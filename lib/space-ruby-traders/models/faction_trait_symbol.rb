require 'date'
require 'time'

module SpaceRubyTraderClient
  class FactionTraitSymbol
    BUREAUCRATIC = "BUREAUCRATIC".freeze
    SECRETIVE = "SECRETIVE".freeze
    CAPITALISTIC = "CAPITALISTIC".freeze
    INDUSTRIOUS = "INDUSTRIOUS".freeze
    PEACEFUL = "PEACEFUL".freeze
    DISTRUSTFUL = "DISTRUSTFUL".freeze
    WELCOMING = "WELCOMING".freeze
    SMUGGLERS = "SMUGGLERS".freeze
    SCAVENGERS = "SCAVENGERS".freeze
    REBELLIOUS = "REBELLIOUS".freeze
    EXILES = "EXILES".freeze
    PIRATES = "PIRATES".freeze
    RAIDERS = "RAIDERS".freeze
    CLAN = "CLAN".freeze
    GUILD = "GUILD".freeze
    DOMINION = "DOMINION".freeze
    FRINGE = "FRINGE".freeze
    FORSAKEN = "FORSAKEN".freeze
    ISOLATED = "ISOLATED".freeze
    LOCALIZED = "LOCALIZED".freeze
    ESTABLISHED = "ESTABLISHED".freeze
    NOTABLE = "NOTABLE".freeze
    DOMINANT = "DOMINANT".freeze
    INESCAPABLE = "INESCAPABLE".freeze
    INNOVATIVE = "INNOVATIVE".freeze
    BOLD = "BOLD".freeze
    VISIONARY = "VISIONARY".freeze
    CURIOUS = "CURIOUS".freeze
    DARING = "DARING".freeze
    EXPLORATORY = "EXPLORATORY".freeze
    RESOURCEFUL = "RESOURCEFUL".freeze
    FLEXIBLE = "FLEXIBLE".freeze
    COOPERATIVE = "COOPERATIVE".freeze
    UNITED = "UNITED".freeze
    STRATEGIC = "STRATEGIC".freeze
    INTELLIGENT = "INTELLIGENT".freeze
    RESEARCH_FOCUSED = "RESEARCH_FOCUSED".freeze
    COLLABORATIVE = "COLLABORATIVE".freeze
    PROGRESSIVE = "PROGRESSIVE".freeze
    MILITARISTIC = "MILITARISTIC".freeze
    TECHNOLOGICALLY_ADVANCED = "TECHNOLOGICALLY_ADVANCED".freeze
    AGGRESSIVE = "AGGRESSIVE".freeze
    IMPERIALISTIC = "IMPERIALISTIC".freeze
    TREASURE_HUNTERS = "TREASURE_HUNTERS".freeze
    DEXTEROUS = "DEXTEROUS".freeze
    UNPREDICTABLE = "UNPREDICTABLE".freeze
    BRUTAL = "BRUTAL".freeze
    FLEETING = "FLEETING".freeze
    ADAPTABLE = "ADAPTABLE".freeze
    SELF_SUFFICIENT = "SELF_SUFFICIENT".freeze
    DEFENSIVE = "DEFENSIVE".freeze
    PROUD = "PROUD".freeze
    DIVERSE = "DIVERSE".freeze
    INDEPENDENT = "INDEPENDENT".freeze
    SELF_INTERESTED = "SELF_INTERESTED".freeze
    FRAGMENTED = "FRAGMENTED".freeze
    COMMERCIAL = "COMMERCIAL".freeze
    FREE_MARKETS = "FREE_MARKETS".freeze
    ENTREPRENEURIAL = "ENTREPRENEURIAL".freeze

    def self.all_vars
      @all_vars ||= [BUREAUCRATIC, SECRETIVE, CAPITALISTIC, INDUSTRIOUS, PEACEFUL, DISTRUSTFUL, WELCOMING, SMUGGLERS, SCAVENGERS, REBELLIOUS, EXILES, PIRATES, RAIDERS, CLAN, GUILD, DOMINION, FRINGE, FORSAKEN, ISOLATED, LOCALIZED, ESTABLISHED, NOTABLE, DOMINANT, INESCAPABLE, INNOVATIVE, BOLD, VISIONARY, CURIOUS, DARING, EXPLORATORY, RESOURCEFUL, FLEXIBLE, COOPERATIVE, UNITED, STRATEGIC, INTELLIGENT, RESEARCH_FOCUSED, COLLABORATIVE, PROGRESSIVE, MILITARISTIC, TECHNOLOGICALLY_ADVANCED, AGGRESSIVE, IMPERIALISTIC, TREASURE_HUNTERS, DEXTEROUS, UNPREDICTABLE, BRUTAL, FLEETING, ADAPTABLE, SELF_SUFFICIENT, DEFENSIVE, PROUD, DIVERSE, INDEPENDENT, SELF_INTERESTED, FRAGMENTED, COMMERCIAL, FREE_MARKETS, ENTREPRENEURIAL].freeze
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
      return value if FactionTraitSymbol.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FactionTraitSymbol"
    end
  end
end
