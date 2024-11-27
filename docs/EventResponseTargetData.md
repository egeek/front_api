# FrontApi::EventResponseTargetData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'front_api'

FrontApi::EventResponseTargetData.openapi_one_of
# =>
# [
#   :'CommentResponse',
#   :'InboxResponse',
#   :'LinkResponse',
#   :'MessageResponse',
#   :'TagResponse',
#   :'TeammateResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'front_api'

FrontApi::EventResponseTargetData.build(data)
# => #<CommentResponse:0x00007fdd4aab02a0>

FrontApi::EventResponseTargetData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CommentResponse`
- `InboxResponse`
- `LinkResponse`
- `MessageResponse`
- `TagResponse`
- `TeammateResponse`
- `nil` (if no type matches)

