# SpaceRubyTraderClient::RepairTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waypoint_symbol** | **String** | The symbol of the waypoint. |  |
| **ship_symbol** | **String** | The symbol of the ship. |  |
| **total_price** | **Integer** | The total price of the transaction. |  |
| **timestamp** | **Time** | The timestamp of the transaction. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::RepairTransaction.new(
  waypoint_symbol: null,
  ship_symbol: null,
  total_price: null,
  timestamp: null
)
```

