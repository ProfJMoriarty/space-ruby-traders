# SpaceRubyTraderClient::ContractDeliverGood

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_symbol** | **String** | The symbol of the trade good to deliver. |  |
| **destination_symbol** | **String** | The destination where goods need to be delivered. |  |
| **units_required** | **Integer** | The number of units that need to be delivered on this contract. |  |
| **units_fulfilled** | **Integer** | The number of units fulfilled on this contract. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ContractDeliverGood.new(
  trade_symbol: null,
  destination_symbol: null,
  units_required: null,
  units_fulfilled: null
)
```

