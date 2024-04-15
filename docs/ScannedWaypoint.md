# SpaceRubyTraderClient::ScannedWaypoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the waypoint. |  |
| **type** | [**WaypointType**](WaypointType.md) |  |  |
| **system_symbol** | **String** | The symbol of the system. |  |
| **x** | **Integer** | Position in the universe in the x axis. |  |
| **y** | **Integer** | Position in the universe in the y axis. |  |
| **orbitals** | [**Array&lt;WaypointOrbital&gt;**](WaypointOrbital.md) | List of waypoints that orbit this waypoint. |  |
| **faction** | [**WaypointFaction**](WaypointFaction.md) |  | [optional] |
| **traits** | [**Array&lt;WaypointTrait&gt;**](WaypointTrait.md) | The traits of the waypoint. |  |
| **chart** | [**Chart**](Chart.md) |  | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ScannedWaypoint.new(
  symbol: null,
  type: null,
  system_symbol: null,
  x: null,
  y: null,
  orbitals: null,
  faction: null,
  traits: null,
  chart: null
)
```

