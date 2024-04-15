# SpaceRubyTraderClient::ShipFrame

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | Symbol of the frame. |  |
| **name** | **String** | Name of the frame. |  |
| **description** | **String** | Description of the frame. |  |
| **condition** | **Float** | The repairable condition of a component. A value of 0 indicates the component needs significant repairs, while a value of 1 indicates the component is in near perfect condition. As the condition of a component is repaired, the overall integrity of the component decreases. |  |
| **integrity** | **Float** | The overall integrity of the component, which determines the performance of the component. A value of 0 indicates that the component is almost completely degraded, while a value of 1 indicates that the component is in near perfect condition. The integrity of the component is non-repairable, and represents permanent wear over time. |  |
| **module_slots** | **Integer** | The amount of slots that can be dedicated to modules installed in the ship. Each installed module take up a number of slots, and once there are no more slots, no new modules can be installed. |  |
| **mounting_points** | **Integer** | The amount of slots that can be dedicated to mounts installed in the ship. Each installed mount takes up a number of points, and once there are no more points remaining, no new mounts can be installed. |  |
| **fuel_capacity** | **Integer** | The maximum amount of fuel that can be stored in this ship. When refueling, the ship will be refueled to this amount. |  |
| **requirements** | [**ShipRequirements**](ShipRequirements.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipFrame.new(
  symbol: null,
  name: null,
  description: null,
  condition: null,
  integrity: null,
  module_slots: null,
  mounting_points: null,
  fuel_capacity: null,
  requirements: null
)
```

