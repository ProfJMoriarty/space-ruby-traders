# SpaceRubyTraderClient::ShipRefine201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cargo** | [**ShipCargo**](ShipCargo.md) |  |  |
| **cooldown** | [**Cooldown**](Cooldown.md) |  |  |
| **produced** | [**Array&lt;ShipRefine201ResponseDataProducedInner&gt;**](ShipRefine201ResponseDataProducedInner.md) | Goods that were produced by this refining process. |  |
| **consumed** | [**Array&lt;ShipRefine201ResponseDataProducedInner&gt;**](ShipRefine201ResponseDataProducedInner.md) | Goods that were consumed during this refining process. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipRefine201ResponseData.new(
  cargo: null,
  cooldown: null,
  produced: null,
  consumed: null
)
```

