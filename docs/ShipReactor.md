# SpaceRubyTraderClient::ShipReactor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | Symbol of the reactor. |  |
| **name** | **String** | Name of the reactor. |  |
| **description** | **String** | Description of the reactor. |  |
| **condition** | **Float** | The repairable condition of a component. A value of 0 indicates the component needs significant repairs, while a value of 1 indicates the component is in near perfect condition. As the condition of a component is repaired, the overall integrity of the component decreases. |  |
| **integrity** | **Float** | The overall integrity of the component, which determines the performance of the component. A value of 0 indicates that the component is almost completely degraded, while a value of 1 indicates that the component is in near perfect condition. The integrity of the component is non-repairable, and represents permanent wear over time. |  |
| **power_output** | **Integer** | The amount of power provided by this reactor. The more power a reactor provides to the ship, the lower the cooldown it gets when using a module or mount that taxes the ship's power. |  |
| **requirements** | [**ShipRequirements**](ShipRequirements.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipReactor.new(
  symbol: null,
  name: null,
  description: null,
  condition: null,
  integrity: null,
  power_output: null,
  requirements: null
)
```

