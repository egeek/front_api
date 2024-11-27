# FrontApi::AnalyticsScalarValueValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'front_api'

FrontApi::AnalyticsScalarValueValue.openapi_one_of
# =>
# [
#   :'AnalyticsScalarValueValueOneOf',
#   :'Integer',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'front_api'

FrontApi::AnalyticsScalarValueValue.build(data)
# => #<AnalyticsScalarValueValueOneOf:0x00007fdd4aab02a0>

FrontApi::AnalyticsScalarValueValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AnalyticsScalarValueValueOneOf`
- `Integer`
- `String`
- `nil` (if no type matches)

