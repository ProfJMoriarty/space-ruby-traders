# SpaceRubyTraderClient::Contract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the contract. |  |
| **faction_symbol** | **String** | The symbol of the faction that this contract is for. |  |
| **type** | **String** | Type of contract. |  |
| **terms** | [**ContractTerms**](ContractTerms.md) |  |  |
| **accepted** | **Boolean** | Whether the contract has been accepted by the agent | [default to false] |
| **fulfilled** | **Boolean** | Whether the contract has been fulfilled | [default to false] |
| **expiration** | **Time** | Deprecated in favor of deadlineToAccept |  |
| **deadline_to_accept** | **Time** | The time at which the contract is no longer available to be accepted | [optional] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Contract.new(
  id: null,
  faction_symbol: null,
  type: null,
  terms: null,
  accepted: null,
  fulfilled: null,
  expiration: null,
  deadline_to_accept: null
)
```

