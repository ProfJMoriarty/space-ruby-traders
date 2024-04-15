# SpaceRubyTraderClient::SellCargoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | [**TradeSymbol**](TradeSymbol.md) |  |  |
| **units** | **Integer** | Amounts of units to sell of the selected good. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::SellCargoRequest.new(
  symbol: null,
  units: null
)
```

