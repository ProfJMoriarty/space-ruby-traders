# SpaceRubyTraderClient::ScannedSystem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | Symbol of the system. |  |
| **sector_symbol** | **String** | Symbol of the system's sector. |  |
| **type** | [**SystemType**](SystemType.md) |  |  |
| **x** | **Integer** | Position in the universe in the x axis. |  |
| **y** | **Integer** | Position in the universe in the y axis. |  |
| **distance** | **Integer** | The system's distance from the scanning ship. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ScannedSystem.new(
  symbol: null,
  sector_symbol: null,
  type: null,
  x: null,
  y: null,
  distance: null
)
```

