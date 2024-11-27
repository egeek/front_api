# FrontApi::MessageResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | **String** | Link to message conversation | [optional] |
| **message_replied_to** | **String** | Link to message this message replied to | [optional] |
| **message_seen** | **String** | Link to message seen information | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageResponseLinksRelated.new(
  conversation: https://yourCompany.api.frontapp.com/conversations/cnv_yo1kg5q,
  message_replied_to: https://yourCompany.api.frontapp.com/messages/msg_2y67qldq,
  message_seen: https://yourCompany.api.frontapp.com/messages/msg_1q15qmtq/seen
)
```

