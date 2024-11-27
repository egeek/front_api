# FrontApi::UpdateComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Content of the comment. Can include markdown formatting. Can only be updated if the comment was created using the same token. | [optional] |
| **is_pinned** | **Boolean** | Whether or not the comment is pinned in its conversation. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateComment.new(
  body: null,
  is_pinned: null
)
```

