# SpaceRubyTraderClient::Faction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | [**FactionSymbol**](FactionSymbol.md) |  |  |
| **name** | **String** | Name of the faction. |  |
| **description** | **String** | Description of the faction. |  |
| **headquarters** | **String** | The waypoint in which the faction's HQ is located in. |  |
| **traits** | [**Array&lt;FactionTrait&gt;**](FactionTrait.md) | List of traits that define this faction. |  |
| **is_recruiting** | **Boolean** | Whether or not the faction is currently recruiting new agents. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Faction.new(
  symbol: null,
  name: null,
  description: null,
  headquarters: null,
  traits: null,
  is_recruiting: null
)
```

