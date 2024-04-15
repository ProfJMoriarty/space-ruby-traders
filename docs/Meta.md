# SpaceRubyTraderClient::Meta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Shows the total amount of items of this kind that exist. |  |
| **page** | **Integer** | A page denotes an amount of items, offset from the first item. Each page holds an amount of items equal to the &#x60;limit&#x60;. | [default to 1] |
| **limit** | **Integer** | The amount of items in each page. Limits how many items can be fetched at once. | [default to 10] |

## Example

```ruby
require 'space-ruby-traders'

instance = SpaceRubyTraderClient::Meta.new(
  total: null,
  page: null,
  limit: null
)
```

