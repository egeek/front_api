# FrontApi::EventResponseSourceData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'front_api'

FrontApi::EventResponseSourceData.openapi_one_of
# =>
# [
#   :'Array<InboxResponse>',
#   :'RuleResponse',
#   :'TeammateResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'front_api'

FrontApi::EventResponseSourceData.build(data)
# => #<Array<InboxResponse>:0x00007fdd4aab02a0>

FrontApi::EventResponseSourceData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<InboxResponse>`
- `RuleResponse`
- `TeammateResponse`
- `nil` (if no type matches)

