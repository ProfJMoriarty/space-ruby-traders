# SpaceRubyTraderClient::ShipEngine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the engine. |  |
| **name** | **String** | The name of the engine. |  |
| **description** | **String** | The description of the engine. |  |
| **condition** | **Float** | The repairable condition of a component. A value of 0 indicates the component needs significant repairs, while a value of 1 indicates the component is in near perfect condition. As the condition of a component is repaired, the overall integrity of the component decreases. |  |
| **integrity** | **Float** | The overall integrity of the component, which determines the performance of the component. A value of 0 indicates that the component is almost completely degraded, while a value of 1 indicates that the component is in near perfect condition. The integrity of the component is non-repairable, and represents permanent wear over time. |  |
| **speed** | **Integer** | The speed stat of this engine. The higher the speed, the faster a ship can travel from one point to another. Reduces the time of arrival when navigating the ship. |  |
| **requirements** | [**ShipRequirements**](ShipRequirements.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipEngine.new(
  symbol: null,
  name: null,
  description: null,
  condition: null,
  integrity: null,
  speed: null,
  requirements: null
)
```

