# SpaceRubyTraderClient::InstallMount201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | [**Agent**](Agent.md) |  |  |
| **mounts** | [**Array&lt;ShipMount&gt;**](ShipMount.md) | List of installed mounts after the installation of the new mount. |  |
| **cargo** | [**ShipCargo**](ShipCargo.md) |  |  |
| **transaction** | [**ShipModificationTransaction**](ShipModificationTransaction.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::InstallMount201ResponseData.new(
  agent: null,
  mounts: null,
  cargo: null,
  transaction: null
)
```

