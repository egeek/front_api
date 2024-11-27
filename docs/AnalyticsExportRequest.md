# FrontApi::AnalyticsExportRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'front_api'

FrontApi::AnalyticsExportRequest.openapi_one_of
# =>
# [
#   :'AnalyticsActivitiesExportsColumns',
#   :'AnalyticsMessagesExportColumns'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'front_api'

FrontApi::AnalyticsExportRequest.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'front_api'

FrontApi::AnalyticsExportRequest.openapi_discriminator_mapping
# =>
# {
#   :'events' => :'AnalyticsActivitiesExportsColumns',
#   :'messages' => :'AnalyticsMessagesExportColumns'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'front_api'

FrontApi::AnalyticsExportRequest.build(data)
# => #<AnalyticsActivitiesExportsColumns:0x00007fdd4aab02a0>

FrontApi::AnalyticsExportRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AnalyticsActivitiesExportsColumns`
- `AnalyticsMessagesExportColumns`
- `nil` (if no type matches)

