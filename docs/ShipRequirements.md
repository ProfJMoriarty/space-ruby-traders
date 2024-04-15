# SpaceRubyTraderClient::ShipRequirements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **power** | **Integer** | The amount of power required from the reactor. | [optional] |
| **crew** | **Integer** | The number of crew required for operation. | [optional] |
| **slots** | **Integer** | The number of module slots required for installation. | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipRequirements.new(
  power: null,
  crew: null,
  slots: null
)
```

