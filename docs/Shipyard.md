# SpaceRubyTraderClient::Shipyard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The symbol of the shipyard. The symbol is the same as the waypoint where the shipyard is located. |  |
| **ship_types** | [**Array&lt;ShipyardShipTypesInner&gt;**](ShipyardShipTypesInner.md) | The list of ship types available for purchase at this shipyard. |  |
| **transactions** | [**Array&lt;ShipyardTransaction&gt;**](ShipyardTransaction.md) | The list of recent transactions at this shipyard. | [optional] |
| **ships** | [**Array&lt;ShipyardShip&gt;**](ShipyardShip.md) | The ships that are currently available for purchase at the shipyard. | [optional] |
| **modifications_fee** | **Integer** | The fee to modify a ship at this shipyard. This includes installing or removing modules and mounts on a ship. In the case of mounts, the fee is a flat rate per mount. In the case of modules, the fee is per slot the module occupies. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Shipyard.new(
  symbol: null,
  ship_types: null,
  transactions: null,
  ships: null,
  modifications_fee: null
)
```

