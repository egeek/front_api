# FrontApi::CustomMessageMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_ref** | **String** | Reference which will be used to thread messages. If  omitted, Front threads by sender instead | [optional] |
| **headers** | **Object** | Custom object where any internal information can be stored | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CustomMessageMetadata.new(
  thread_ref: null,
  headers: null
)
```

