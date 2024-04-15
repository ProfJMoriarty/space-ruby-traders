# SpaceRubyTraderClient::SiphonResources201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cooldown** | [**Cooldown**](Cooldown.md) |  |  |
| **siphon** | [**Siphon**](Siphon.md) |  |  |
| **cargo** | [**ShipCargo**](ShipCargo.md) |  |  |
| **events** | [**Array&lt;ExtractResources201ResponseDataEventsInner&gt;**](ExtractResources201ResponseDataEventsInner.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::SiphonResources201ResponseData.new(
  cooldown: null,
  siphon: null,
  cargo: null,
  events: null
)
```

