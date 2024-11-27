# FrontApi::AttachmentMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_inline** | **Boolean** | Whether or not the attachment is part of the message body | [optional] |
| **cid** | **String** | Unique identifier used to link an attachment to where it is used in the message body | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::AttachmentMetadata.new(
  is_inline: true,
  cid: 526b45586d0e6b1c484afab63d1ef0be
)
```

