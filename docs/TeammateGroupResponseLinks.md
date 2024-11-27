# FrontApi::TeammateGroupResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**TeammateGroupResponseLinksRelated**](TeammateGroupResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeammateGroupResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/teammate_groups/cir_123,
  related: null
)
```

