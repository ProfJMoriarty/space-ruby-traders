# SpaceRubyTraderClient::Ship

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The globally unique identifier of the ship in the following format: &#x60;[AGENT_SYMBOL]-[HEX_ID]&#x60; |  |
| **registration** | [**ShipRegistration**](ShipRegistration.md) |  |  |
| **nav** | [**ShipNav**](ShipNav.md) |  |  |
| **crew** | [**ShipCrew**](ShipCrew.md) |  |  |
| **frame** | [**ShipFrame**](ShipFrame.md) |  |  |
| **reactor** | [**ShipReactor**](ShipReactor.md) |  |  |
| **engine** | [**ShipEngine**](ShipEngine.md) |  |  |
| **cooldown** | [**Cooldown**](Cooldown.md) |  |  |
| **modules** | [**Array&lt;ShipModule&gt;**](ShipModule.md) | Modules installed in this ship. |  |
| **mounts** | [**Array&lt;ShipMount&gt;**](ShipMount.md) | Mounts installed in this ship. |  |
| **cargo** | [**ShipCargo**](ShipCargo.md) |  |  |
| **fuel** | [**ShipFuel**](ShipFuel.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Ship.new(
  symbol: null,
  registration: null,
  nav: null,
  crew: null,
  frame: null,
  reactor: null,
  engine: null,
  cooldown: null,
  modules: null,
  mounts: null,
  cargo: null,
  fuel: null
)
```

