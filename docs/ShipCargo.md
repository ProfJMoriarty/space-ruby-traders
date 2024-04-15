# SpaceRubyTraderClient::ShipCargo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | **Integer** | The max number of items that can be stored in the cargo hold. |  |
| **units** | **Integer** | The number of items currently stored in the cargo hold. |  |
| **inventory** | [**Array&lt;ShipCargoItem&gt;**](ShipCargoItem.md) | The items currently in the cargo hold. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipCargo.new(
  capacity: null,
  units: null,
  inventory: null
)
```

