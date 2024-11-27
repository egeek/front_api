# FrontApi::ContactGroupResponsesLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**ContactGroupResponsesLinksRelated**](ContactGroupResponsesLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactGroupResponsesLinks.new(
  _self: https://yourCompany.api.frontapp.com/contact_groups/grp_3j342,
  related: null
)
```

