# FrontApi::TagResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**TagResponseLinksRelated**](TagResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TagResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/tags/tag_2oxhvy,
  related: null
)
```

