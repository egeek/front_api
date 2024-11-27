# FrontApi::CreateMessageTemplateAsChild

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the message template |  |
| **subject** | **String** | Subject of the message template. If not set, the name will be used to populate the subject. | [optional] |
| **body** | **String** | Body of the message template |  |
| **inbox_ids** | **Array&lt;String&gt;** | The specific inboxes this template is available in. If unspecified or null, then it will be available in all inboxes. Array should be non-empty. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateMessageTemplateAsChild.new(
  name: Out of Office,
  subject: Out of Office,
  body: Sorry, I&#39;m OOO until October 25th.,
  inbox_ids: null
)
```

