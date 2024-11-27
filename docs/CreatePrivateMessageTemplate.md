# FrontApi::CreatePrivateMessageTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the message template |  |
| **subject** | **String** | Subject of the message template. If not set, the name will be used to populate the subject. | [optional] |
| **body** | **String** | Body of the message template |  |
| **folder_id** | **String** | ID of the message template folder to place this message template in | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreatePrivateMessageTemplate.new(
  name: Out of Office,
  subject: Out of Office,
  body: Sorry, I&#39;m OOO until October 25th.,
  folder_id: null
)
```

