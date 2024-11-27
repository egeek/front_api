# FrontApi::CreateMessageTemplateFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the message template folder |  |
| **parent_folder_id** | **String** | ID of the parent folder to be placed into. Goes into the root folder if unspecified or if null. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateMessageTemplateFolder.new(
  name: PTO templates,
  parent_folder_id: null
)
```

