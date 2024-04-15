# SpaceRubyTraderClient::ConstructionMaterial

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_symbol** | [**TradeSymbol**](TradeSymbol.md) |  |  |
| **required** | **Integer** | The number of units required. |  |
| **fulfilled** | **Integer** | The number of units fulfilled toward the required amount. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ConstructionMaterial.new(
  trade_symbol: null,
  required: null,
  fulfilled: null
)
```

