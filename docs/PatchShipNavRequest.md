# SpaceRubyTraderClient::PatchShipNavRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flight_mode** | [**ShipNavFlightMode**](ShipNavFlightMode.md) |  | [optional][default to 'CRUISE'] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::PatchShipNavRequest.new(
  flight_mode: null
)
```

