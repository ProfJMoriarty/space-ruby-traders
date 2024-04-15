# SpaceRubyTraderClient::System

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the system. |  |
| **sector_symbol** | **String** | The symbol of the sector. |  |
| **type** | [**SystemType**](SystemType.md) |  |  |
| **x** | **Integer** | Relative position of the system in the sector in the x axis. |  |
| **y** | **Integer** | Relative position of the system in the sector in the y axis. |  |
| **waypoints** | [**Array&lt;SystemWaypoint&gt;**](SystemWaypoint.md) | Waypoints in this system. |  |
| **factions** | [**Array&lt;SystemFaction&gt;**](SystemFaction.md) | Factions that control this system. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::System.new(
  symbol: null,
  sector_symbol: null,
  type: null,
  x: null,
  y: null,
  waypoints: null,
  factions: null
)
```

