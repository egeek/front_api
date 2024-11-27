# FrontApi::ContactResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**ContactResponseLinksRelated**](ContactResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/contacts/crd_3cgz4ge&quot;,
  related: null
)
```

