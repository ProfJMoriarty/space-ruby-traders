# SpaceRubyTraderClient::TransferCargoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_symbol** | [**TradeSymbol**](TradeSymbol.md) |  |  |
| **units** | **Integer** | Amount of units to transfer. |  |
| **ship_symbol** | **String** | The symbol of the ship to transfer to. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::TransferCargoRequest.new(
  trade_symbol: null,
  units: null,
  ship_symbol: null
)
```

