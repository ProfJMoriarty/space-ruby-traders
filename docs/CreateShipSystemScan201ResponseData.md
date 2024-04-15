# SpaceRubyTraderClient::CreateShipSystemScan201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cooldown** | [**Cooldown**](Cooldown.md) |  |  |
| **systems** | [**Array&lt;ScannedSystem&gt;**](ScannedSystem.md) | List of scanned systems. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::CreateShipSystemScan201ResponseData.new(
  cooldown: null,
  systems: null
)
```

