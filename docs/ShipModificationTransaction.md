# SpaceRubyTraderClient::ShipModificationTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waypoint_symbol** | **String** | The symbol of the waypoint where the transaction took place. |  |
| **ship_symbol** | **String** | The symbol of the ship that made the transaction. |  |
| **trade_symbol** | **String** | The symbol of the trade good. |  |
| **total_price** | **Integer** | The total price of the transaction. |  |
| **timestamp** | **Time** | The timestamp of the transaction. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipModificationTransaction.new(
  waypoint_symbol: null,
  ship_symbol: null,
  trade_symbol: null,
  total_price: null,
  timestamp: null
)
```

