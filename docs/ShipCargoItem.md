# SpaceRubyTraderClient::ShipCargoItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | [**TradeSymbol**](TradeSymbol.md) |  |  |
| **name** | **String** | The name of the cargo item type. |  |
| **description** | **String** | The description of the cargo item type. |  |
| **units** | **Integer** | The number of units of the cargo item. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipCargoItem.new(
  symbol: null,
  name: null,
  description: null,
  units: null
)
```

