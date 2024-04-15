# SpaceRubyTraderClient::MarketTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waypoint_symbol** | **String** | The symbol of the waypoint. |  |
| **ship_symbol** | **String** | The symbol of the ship that made the transaction. |  |
| **trade_symbol** | **String** | The symbol of the trade good. |  |
| **type** | **String** | The type of transaction. |  |
| **units** | **Integer** | The number of units of the transaction. |  |
| **price_per_unit** | **Integer** | The price per unit of the transaction. |  |
| **total_price** | **Integer** | The total price of the transaction. |  |
| **timestamp** | **Time** | The timestamp of the transaction. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::MarketTransaction.new(
  waypoint_symbol: null,
  ship_symbol: null,
  trade_symbol: null,
  type: null,
  units: null,
  price_per_unit: null,
  total_price: null,
  timestamp: null
)
```

