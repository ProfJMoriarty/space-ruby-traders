# SpaceRubyTraderClient::ExtractResources201ResponseDataEventsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'space-ruby-traders'

SpaceRubyTraderClient::ExtractResources201ResponseDataEventsInner.openapi_one_of
# =>
# [
#   :'ShipConditionEvent'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'space-ruby-traders'

SpaceRubyTraderClient::ExtractResources201ResponseDataEventsInner.build(data)
# => #<ShipConditionEvent:0x00007fdd4aab02a0>

SpaceRubyTraderClient::ExtractResources201ResponseDataEventsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ShipConditionEvent`
- `nil` (if no type matches)

