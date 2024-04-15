# SpaceRubyTraderClient::SupplyConstructionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | Symbol of the ship to use. |  |
| **trade_symbol** | **String** | The symbol of the good to supply. |  |
| **units** | **Integer** | Amount of units to supply. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::SupplyConstructionRequest.new(
  ship_symbol: null,
  trade_symbol: null,
  units: null
)
```

