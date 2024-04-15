# SpaceRubyTraderClient::ShipModule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the module. |  |
| **capacity** | **Integer** | Modules that provide capacity, such as cargo hold or crew quarters will show this value to denote how much of a bonus the module grants. | [optional] |
| **range** | **Integer** | Modules that have a range will such as a sensor array show this value to denote how far can the module reach with its capabilities. | [optional] |
| **name** | **String** | Name of this module. |  |
| **description** | **String** | Description of this module. |  |
| **requirements** | [**ShipRequirements**](ShipRequirements.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipModule.new(
  symbol: null,
  capacity: null,
  range: null,
  name: null,
  description: null,
  requirements: null
)
```

