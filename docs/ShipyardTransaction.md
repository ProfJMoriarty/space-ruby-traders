# SpaceRubyTraderClient::ShipyardTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waypoint_symbol** | **String** | The symbol of the waypoint. |  |
| **ship_symbol** | **String** | The symbol of the ship that was the subject of the transaction. |  |
| **ship_type** | **String** | The symbol of the ship that was the subject of the transaction. |  |
| **price** | **Integer** | The price of the transaction. |  |
| **agent_symbol** | **String** | The symbol of the agent that made the transaction. |  |
| **timestamp** | **Time** | The timestamp of the transaction. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipyardTransaction.new(
  waypoint_symbol: null,
  ship_symbol: null,
  ship_type: null,
  price: null,
  agent_symbol: null,
  timestamp: null
)
```

