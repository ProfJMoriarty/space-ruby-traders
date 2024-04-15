# SpaceRubyTraderClient::RemoveMount201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | [**Agent**](Agent.md) |  |  |
| **mounts** | [**Array&lt;ShipMount&gt;**](ShipMount.md) | List of installed mounts after the removal of the selected mount. |  |
| **cargo** | [**ShipCargo**](ShipCargo.md) |  |  |
| **transaction** | [**ShipModificationTransaction**](ShipModificationTransaction.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::RemoveMount201ResponseData.new(
  agent: null,
  mounts: null,
  cargo: null,
  transaction: null
)
```

