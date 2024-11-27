# FrontApi::CommentResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**CommentResponseLinksRelated**](CommentResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CommentResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/comments/com_1ywg3f2,
  related: null
)
```

