# FrontApi::UpdateMessageTemplateFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the message template folder | [optional] |
| **parent_folder_id** | **String** | ID of the parent folder to be placed into. Goes into the root folder if unspecified or if null. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateMessageTemplateFolder.new(
  name: null,
  parent_folder_id: null
)
```

