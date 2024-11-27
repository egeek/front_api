# FrontApi::ConversationResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | **String** | Link to conversation events | [optional] |
| **followers** | **String** | Link to conversation followers | [optional] |
| **messages** | **String** | Link to conversation messages | [optional] |
| **comments** | **String** | Link to conversation comments | [optional] |
| **inboxes** | **String** | Link to conversation inboxes | [optional] |
| **last_message** | **String** | Link to last message of the conversation | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ConversationResponseLinksRelated.new(
  events: https://yourCompany.api.frontapp.com/conversations/cnv_yo1kg5q/events,
  followers: https://yourCompany.api.frontapp.com/conversations/cnv_yo1kg5q/followers,
  messages: https://yourCompany.api.frontapp.com/conversations/cnv_yo1kg5q/messages,
  comments: https://yourCompany.api.frontapp.com/conversations/cnv_yo1kg5q/comments,
  inboxes: https://yourCompany.api.frontapp.com/conversations/cnv_yo1kg5q/inboxes,
  last_message: https://yourCompany.api.frontapp.com/messages/msg_1q15qmtq?referer&#x3D;conversation
)
```

