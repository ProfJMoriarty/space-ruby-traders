# SpaceRubyTraderClient::ContractPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_accepted** | **Integer** | The amount of credits received up front for accepting the contract. |  |
| **on_fulfilled** | **Integer** | The amount of credits received when the contract is fulfilled. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ContractPayment.new(
  on_accepted: null,
  on_fulfilled: null
)
```

