# FrontApi::TagResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations** | **String** | Link to tag conversations | [optional] |
| **owner** | **String** | Link to tag owner | [optional] |
| **parent_tag** | **String** | Link to parent tag | [optional] |
| **children** | **String** | Link to tag children | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TagResponseLinksRelated.new(
  conversations: https://yourCompany.api.frontapp.com/tags/tag_2oxhvy/conversations,
  owner: https://yourCompany.api.frontapp.com/teammates/tea_6jydq,
  parent_tag: https://yourCompany.api.frontapp.com/tags/tag_3h07ym,
  children: https://yourCompany.api.frontapp.com/tags/tag_2oxhvy/children
)
```

