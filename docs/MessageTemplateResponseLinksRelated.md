# FrontApi::MessageTemplateResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | Link to resource&#39;s owner | [optional] |
| **parent_folder** | **String** | Link to the parent folder that contains the message template | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageTemplateResponseLinksRelated.new(
  owner: https://yourCompany.api.frontapp.com/teams/tim_s47,
  parent_folder: https://yourCompany.api.frontapp.com/message_template_folders/rsf_g2
)
```

