# SpaceRubyTraderClient::Construction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the waypoint. |  |
| **materials** | [**Array&lt;ConstructionMaterial&gt;**](ConstructionMaterial.md) | The materials required to construct the waypoint. |  |
| **is_complete** | **Boolean** | Whether the waypoint has been constructed. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Construction.new(
  symbol: null,
  materials: null,
  is_complete: null
)
```

