# SpaceRubyTraderClient::Cooldown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship that is on cooldown |  |
| **total_seconds** | **Integer** | The total duration of the cooldown in seconds |  |
| **remaining_seconds** | **Integer** | The remaining duration of the cooldown in seconds |  |
| **expiration** | **Time** | The date and time when the cooldown expires in ISO 8601 format | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Cooldown.new(
  ship_symbol: null,
  total_seconds: null,
  remaining_seconds: null,
  expiration: null
)
```

