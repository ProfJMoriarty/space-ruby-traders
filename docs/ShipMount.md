# SpaceRubyTraderClient::ShipMount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | Symbo of this mount. |  |
| **name** | **String** | Name of this mount. |  |
| **description** | **String** | Description of this mount. | [optional] |
| **strength** | **Integer** | Mounts that have this value, such as mining lasers, denote how powerful this mount's capabilities are. | [optional] |
| **deposits** | **Array&lt;String&gt;** | Mounts that have this value denote what goods can be produced from using the mount. | [optional] |
| **requirements** | [**ShipRequirements**](ShipRequirements.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipMount.new(
  symbol: null,
  name: null,
  description: null,
  strength: null,
  deposits: null,
  requirements: null
)
```

