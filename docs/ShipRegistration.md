# SpaceRubyTraderClient::ShipRegistration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The agent's registered name of the ship |  |
| **faction_symbol** | **String** | The symbol of the faction the ship is registered with |  |
| **role** | [**ShipRole**](ShipRole.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipRegistration.new(
  name: null,
  faction_symbol: null,
  role: null
)
```

