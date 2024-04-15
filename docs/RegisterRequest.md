# SpaceRubyTraderClient::RegisterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **faction** | [**FactionSymbol**](FactionSymbol.md) |  |  |
| **symbol** | **String** | Your desired agent symbol. This will be a unique name used to represent your agent, and will be the prefix for your ships. |  |
| **email** | **String** | Your email address. This is used if you reserved your call sign between resets. | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::RegisterRequest.new(
  faction: null,
  symbol: BADGER,
  email: null
)
```

