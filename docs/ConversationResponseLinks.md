# FrontApi::ConversationResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**ConversationResponseLinksRelated**](ConversationResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ConversationResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/conversations/cnv_yo1kg5q,
  related: null
)
```

