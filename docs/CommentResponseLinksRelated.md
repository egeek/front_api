# FrontApi::CommentResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations** | **String** | Link to comment&#39;s conversation | [optional] |
| **mentions** | **String** | Link to comment mentions | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CommentResponseLinksRelated.new(
  conversations: https://yourCompany.api.frontapp.com/conversations/cnv_y4xb93i,
  mentions: https://yourCompany.api.frontapp.com/comments/com_1ywg3f2/mentions
)
```

