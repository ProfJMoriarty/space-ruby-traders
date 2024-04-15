# SpaceRubyTraderClient::GetSystemWaypointsTraitsParameter

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'space-ruby-traders'

SpaceRubyTraderClient::GetSystemWaypointsTraitsParameter.openapi_one_of
# =>
# [
#   :'Array<WaypointTraitSymbol>',
#   :'WaypointTraitSymbol'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'space-ruby-traders'

SpaceRubyTraderClient::GetSystemWaypointsTraitsParameter.build(data)
# => #<Array<WaypointTraitSymbol>:0x00007fdd4aab02a0>

SpaceRubyTraderClient::GetSystemWaypointsTraitsParameter.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<WaypointTraitSymbol>`
- `WaypointTraitSymbol`
- `nil` (if no type matches)

