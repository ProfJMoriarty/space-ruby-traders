# SpaceRubyTraderClient::GetStatus200ResponseLeaderboards

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **most_credits** | [**Array&lt;GetStatus200ResponseLeaderboardsMostCreditsInner&gt;**](GetStatus200ResponseLeaderboardsMostCreditsInner.md) | Top agents with the most credits. |  |
| **most_submitted_charts** | [**Array&lt;GetStatus200ResponseLeaderboardsMostSubmittedChartsInner&gt;**](GetStatus200ResponseLeaderboardsMostSubmittedChartsInner.md) | Top agents with the most charted submitted. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::GetStatus200ResponseLeaderboards.new(
  most_credits: null,
  most_submitted_charts: null
)
```

