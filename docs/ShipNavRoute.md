# SpaceRubyTraderClient::ShipNavRoute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | [**ShipNavRouteWaypoint**](ShipNavRouteWaypoint.md) |  |  |
| **origin** | [**ShipNavRouteWaypoint**](ShipNavRouteWaypoint.md) |  |  |
| **departure_time** | **Time** | The date time of the ship's departure. |  |
| **arrival** | **Time** | The date time of the ship's arrival. If the ship is in-transit, this is the expected time of arrival. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipNavRoute.new(
  destination: null,
  origin: null,
  departure_time: null,
  arrival: null
)
```

