# SpaceRubyTraderClient::Survey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature** | **String** | A unique signature for the location of this survey. This signature is verified when attempting an extraction using this survey. |  |
| **symbol** | **String** | The symbol of the waypoint that this survey is for. |  |
| **deposits** | [**Array&lt;SurveyDeposit&gt;**](SurveyDeposit.md) | A list of deposits that can be found at this location. A ship will extract one of these deposits when using this survey in an extraction request. If multiple deposits of the same type are present, the chance of extracting that deposit is increased. |  |
| **expiration** | **Time** | The date and time when the survey expires. After this date and time, the survey will no longer be available for extraction. |  |
| **size** | **String** | The size of the deposit. This value indicates how much can be extracted from the survey before it is exhausted. |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Survey.new(
  signature: null,
  symbol: null,
  deposits: null,
  expiration: null,
  size: null
)
```

