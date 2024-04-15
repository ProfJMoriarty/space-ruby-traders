# SpaceRubyTraderClient::GetStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The current status of the game server. |  |
| **version** | **String** | The current version of the API. |  |
| **reset_date** | **String** | The date when the game server was last reset. |  |
| **description** | **String** |  |  |
| **stats** | [**GetStatus200ResponseStats**](GetStatus200ResponseStats.md) |  |  |
| **leaderboards** | [**GetStatus200ResponseLeaderboards**](GetStatus200ResponseLeaderboards.md) |  |  |
| **server_resets** | [**GetStatus200ResponseServerResets**](GetStatus200ResponseServerResets.md) |  |  |
| **announcements** | [**Array&lt;GetStatus200ResponseAnnouncementsInner&gt;**](GetStatus200ResponseAnnouncementsInner.md) |  |  |
| **links** | [**Array&lt;GetStatus200ResponseLinksInner&gt;**](GetStatus200ResponseLinksInner.md) |  |  |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::GetStatus200Response.new(
  status: null,
  version: null,
  reset_date: null,
  description: null,
  stats: null,
  leaderboards: null,
  server_resets: null,
  announcements: null,
  links: null
)
```

