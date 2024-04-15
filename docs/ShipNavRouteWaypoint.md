# SpaceRubyTraderClient::ShipNavRouteWaypoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the waypoint. |  |
| **type** | [**WaypointType**](WaypointType.md) |  |  |
| **system_symbol** | **String** | The symbol of the system. |  |
| **x** | **Integer** | Position in the universe in the x axis. |  |
| **y** | **Integer** | Position in the universe in the y axis. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipNavRouteWaypoint.new(
  symbol: null,
  type: null,
  system_symbol: null,
  x: null,
  y: null
)
```

