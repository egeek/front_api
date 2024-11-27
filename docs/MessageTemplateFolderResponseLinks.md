# FrontApi::MessageTemplateFolderResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**MessageTemplateFolderResponseLinksRelated**](MessageTemplateFolderResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageTemplateFolderResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/message_template_folders/rsf_g2,
  related: null
)
```

