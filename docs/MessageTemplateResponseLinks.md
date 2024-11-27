# FrontApi::MessageTemplateResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**MessageTemplateResponseLinksRelated**](MessageTemplateResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageTemplateResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/responses/rsp_16yc,
  related: null
)
```

