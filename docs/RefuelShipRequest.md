# SpaceRubyTraderClient::RefuelShipRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **units** | **Integer** | The amount of fuel to fill in the ship's tanks. When not specified, the ship will be refueled to its maximum fuel capacity. If the amount specified is greater than the ship's remaining capacity, the ship will only be refueled to its maximum fuel capacity. The amount specified is not in market units but in ship fuel units. | [optional] |
| **from_cargo** | **Boolean** | Wether to use the FUEL thats in your cargo or not. Default: false | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::RefuelShipRequest.new(
  units: 100,
  from_cargo: false
)
```

