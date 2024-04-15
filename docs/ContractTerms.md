# SpaceRubyTraderClient::ContractTerms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deadline** | **Time** | The deadline for the contract. |  |
| **payment** | [**ContractPayment**](ContractPayment.md) |  |  |
| **deliver** | [**Array&lt;ContractDeliverGood&gt;**](ContractDeliverGood.md) | The cargo that needs to be delivered to fulfill the contract. | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::ContractTerms.new(
  deadline: null,
  payment: null,
  deliver: null
)
```

