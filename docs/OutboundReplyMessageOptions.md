# FrontApi::OutboundReplyMessageOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_ids** | **Array&lt;String&gt;** | List of tag IDs to add to the conversation | [optional] |
| **archive** | **Boolean** | Archive the conversation right when sending the message. &#x60;true&#x60; by default | [optional][default to true] |

## Example

```ruby
require 'front_api'

instance = FrontApi::OutboundReplyMessageOptions.new(
  tag_ids: null,
  archive: null
)
```

