# SpaceRubyTraderClient::Chart

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waypoint_symbol** | **String** | The symbol of the waypoint. | [optional] |
| **submitted_by** | **String** | The agent that submitted the chart for this waypoint. | [optional] |
| **submitted_on** | **Time** | The time the chart for this waypoint was submitted. | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Chart.new(
  waypoint_symbol: null,
  submitted_by: null,
  submitted_on: null
)
```

