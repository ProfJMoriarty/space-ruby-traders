# SpaceRubyTraderClient::ScannedShip

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The globally unique identifier of the ship. |  |
| **registration** | [**ShipRegistration**](ShipRegistration.md) |  |  |
| **nav** | [**ShipNav**](ShipNav.md) |  |  |
| **frame** | [**ScannedShipFrame**](ScannedShipFrame.md) |  | [optional] |
| **reactor** | [**ScannedShipReactor**](ScannedShipReactor.md) |  | [optional] |
| **engine** | [**ScannedShipEngine**](ScannedShipEngine.md) |  |  |
| **mounts** | [**Array&lt;ScannedShipMountsInner&gt;**](ScannedShipMountsInner.md) | List of mounts installed in the ship. | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ScannedShip.new(
  symbol: null,
  registration: null,
  nav: null,
  frame: null,
  reactor: null,
  engine: null,
  mounts: null
)
```

