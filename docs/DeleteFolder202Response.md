# FrontApi::DeleteFolder202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional][default to &#39;accepted&#39;] |
| **message_template_folder_id** | **String** | id of the message template to be deleted | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::DeleteFolder202Response.new(
  status: accepted,
  message_template_folder_id: rsf_g2
)
```

