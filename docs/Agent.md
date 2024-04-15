# SpaceRubyTraderClient::Agent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID that is tied to this agent. Only included on your own agent. | [optional] |
| **symbol** | **String** | Symbol of the agent. |  |
| **headquarters** | **String** | The headquarters of the agent. |  |
| **credits** | **Integer** | The number of credits the agent has available. Credits can be negative if funds have been overdrawn. |  |
| **starting_faction** | **String** | The faction the agent started with. |  |
| **ship_count** | **Integer** | How many ships are owned by the agent. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Agent.new(
  account_id: null,
  symbol: null,
  headquarters: null,
  credits: null,
  starting_faction: null,
  ship_count: null
)
```

