# SpaceRubyTraderClient::ShipNav

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The symbol of the system. |  |
| **waypoint_symbol** | **String** | The symbol of the waypoint. |  |
| **route** | [**ShipNavRoute**](ShipNavRoute.md) |  |  |
| **status** | [**ShipNavStatus**](ShipNavStatus.md) |  |  |
| **flight_mode** | [**ShipNavFlightMode**](ShipNavFlightMode.md) |  | [default to 'CRUISE'] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipNav.new(
  system_symbol: null,
  waypoint_symbol: null,
  route: null,
  status: null,
  flight_mode: null
)
```

