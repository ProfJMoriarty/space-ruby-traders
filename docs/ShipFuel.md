# SpaceRubyTraderClient::ShipFuel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current** | **Integer** | The current amount of fuel in the ship's tanks. |  |
| **capacity** | **Integer** | The maximum amount of fuel the ship's tanks can hold. |  |
| **consumed** | [**ShipFuelConsumed**](ShipFuelConsumed.md) |  | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipFuel.new(
  current: null,
  capacity: null,
  consumed: null
)
```

