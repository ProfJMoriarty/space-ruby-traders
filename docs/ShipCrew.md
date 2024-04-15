# SpaceRubyTraderClient::ShipCrew

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current** | **Integer** | The current number of crew members on the ship. |  |
| **required** | **Integer** | The minimum number of crew members required to maintain the ship. |  |
| **capacity** | **Integer** | The maximum number of crew members the ship can support. |  |
| **rotation** | **String** | The rotation of crew shifts. A stricter shift improves the ship's performance. A more relaxed shift improves the crew's morale. | [default to 'STRICT'] |
| **morale** | **Integer** | A rough measure of the crew's morale. A higher morale means the crew is happier and more productive. A lower morale means the ship is more prone to accidents. |  |
| **wages** | **Integer** | The amount of credits per crew member paid per hour. Wages are paid when a ship docks at a civilized waypoint. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipCrew.new(
  current: null,
  required: null,
  capacity: null,
  rotation: null,
  morale: null,
  wages: null
)
```

