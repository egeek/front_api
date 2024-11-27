# FrontApi::TeammateResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**TeammateResponseLinksRelated**](TeammateResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeammateResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/teammates/tea_6r55a,
  related: null
)
```

