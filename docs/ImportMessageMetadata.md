# FrontApi::ImportMessageMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_ref** | **String** | Reference which will be used to thread messages. If  omitted, Front threads by sender instead | [optional] |
| **is_inbound** | **Boolean** | Determines if message is received (inbound) or sent (outbound) by you. |  |
| **is_archived** | **Boolean** | Determines if message is archived after import. | [optional] |
| **should_skip_rules** | **Boolean** | Determines if rules should be skipped. &#x60;true&#x60; by default. | [optional][default to true] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ImportMessageMetadata.new(
  thread_ref: null,
  is_inbound: null,
  is_archived: null,
  should_skip_rules: null
)
```

