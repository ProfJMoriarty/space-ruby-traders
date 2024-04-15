# SpaceRubyTraderClient::DeliverContractRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | Symbol of a ship located in the destination to deliver a contract and that has a good to deliver in its cargo. |  |
| **trade_symbol** | **String** | The symbol of the good to deliver. |  |
| **units** | **Integer** | Amount of units to deliver. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::DeliverContractRequest.new(
  ship_symbol: null,
  trade_symbol: null,
  units: null
)
```

