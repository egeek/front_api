# FrontApi::MessageTemplateFolderResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | Link to resource&#39;s owner | [optional] |
| **parent_folder** | **String** | Link to parent folder. Null if the current folder does not have a parent. | [optional] |
| **child_folders** | **String** | Link to child folders. Null if the current folder does not have children. | [optional] |
| **child_answers** | **String** | Link to message templates contained within this folder or children folders. Null if the current folder does not have any message templates. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageTemplateFolderResponseLinksRelated.new(
  owner: https://yourCompany.api.frontapp.com/teams/tim_s47,
  parent_folder: https://yourCompany.api.frontapp.com/message_template_folders/rsf_g1,
  child_folders: https://yourCompany.api.frontapp.com/message_template_folders/rsf_g2/message_template_folders,
  child_answers: https://yourCompany.api.frontapp.com/message_template_folders/rsf_g2/message_templates
)
```

