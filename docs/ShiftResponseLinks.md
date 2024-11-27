# FrontApi::ShiftResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**ShiftResponseLinksRelated**](ShiftResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ShiftResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/shifts/shf_1bri,
  related: null
)
```

