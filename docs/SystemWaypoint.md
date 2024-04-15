# SpaceRubyTraderClient::SystemWaypoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the waypoint. |  |
| **type** | [**WaypointType**](WaypointType.md) |  |  |
| **x** | **Integer** | Relative position of the waypoint on the system's x axis. This is not an absolute position in the universe. |  |
| **y** | **Integer** | Relative position of the waypoint on the system's y axis. This is not an absolute position in the universe. |  |
| **orbitals** | [**Array&lt;WaypointOrbital&gt;**](WaypointOrbital.md) | Waypoints that orbit this waypoint. |  |
| **orbits** | **String** | The symbol of the parent waypoint, if this waypoint is in orbit around another waypoint. Otherwise this value is undefined. | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::SystemWaypoint.new(
  symbol: null,
  type: null,
  x: null,
  y: null,
  orbitals: null,
  orbits: null
)
```

