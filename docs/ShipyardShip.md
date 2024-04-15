# SpaceRubyTraderClient::ShipyardShip

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ShipType**](ShipType.md) |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **supply** | [**SupplyLevel**](SupplyLevel.md) |  |  |
| **activity** | [**ActivityLevel**](ActivityLevel.md) |  | [optional] |
| **purchase_price** | **Integer** |  |  |
| **frame** | [**ShipFrame**](ShipFrame.md) |  |  |
| **reactor** | [**ShipReactor**](ShipReactor.md) |  |  |
| **engine** | [**ShipEngine**](ShipEngine.md) |  |  |
| **modules** | [**Array&lt;ShipModule&gt;**](ShipModule.md) |  |  |
| **mounts** | [**Array&lt;ShipMount&gt;**](ShipMount.md) |  |  |
| **crew** | [**ShipyardShipCrew**](ShipyardShipCrew.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ShipyardShip.new(
  type: null,
  name: null,
  description: null,
  supply: null,
  activity: null,
  purchase_price: null,
  frame: null,
  reactor: null,
  engine: null,
  modules: null,
  mounts: null,
  crew: null
)
```

