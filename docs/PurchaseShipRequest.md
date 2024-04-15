# SpaceRubyTraderClient::PurchaseShipRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_type** | [**ShipType**](ShipType.md) |  |  |
| **waypoint_symbol** | **String** | The symbol of the waypoint you want to purchase the ship at. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::PurchaseShipRequest.new(
  ship_type: null,
  waypoint_symbol: null
)
```

