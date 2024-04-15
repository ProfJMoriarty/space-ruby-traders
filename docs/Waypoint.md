# SpaceRubyTraderClient::Waypoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the waypoint. |  |
| **type** | [**WaypointType**](WaypointType.md) |  |  |
| **system_symbol** | **String** | The symbol of the system. |  |
| **x** | **Integer** | Relative position of the waypoint on the system's x axis. This is not an absolute position in the universe. |  |
| **y** | **Integer** | Relative position of the waypoint on the system's y axis. This is not an absolute position in the universe. |  |
| **orbitals** | [**Array&lt;WaypointOrbital&gt;**](WaypointOrbital.md) | Waypoints that orbit this waypoint. |  |
| **orbits** | **String** | The symbol of the parent waypoint, if this waypoint is in orbit around another waypoint. Otherwise this value is undefined. | [optional] |
| **faction** | [**WaypointFaction**](WaypointFaction.md) |  | [optional] |
| **traits** | [**Array&lt;WaypointTrait&gt;**](WaypointTrait.md) | The traits of the waypoint. |  |
| **modifiers** | [**Array&lt;WaypointModifier&gt;**](WaypointModifier.md) | The modifiers of the waypoint. | [optional] |
| **chart** | [**Chart**](Chart.md) |  | [optional] |
| **is_under_construction** | **Boolean** | True if the waypoint is under construction. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Waypoint.new(
  symbol: null,
  type: null,
  system_symbol: null,
  x: null,
  y: null,
  orbitals: null,
  orbits: null,
  faction: null,
  traits: null,
  modifiers: null,
  chart: null,
  is_under_construction: null
)
```

