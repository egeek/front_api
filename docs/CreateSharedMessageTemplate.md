# FrontApi::CreateSharedMessageTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the message template |  |
| **subject** | **String** | Subject of the message template. If not set, the name will be used to populate the subject. | [optional] |
| **body** | **String** | Body of the message template |  |
| **folder_id** | **String** | ID of the message template folder to place this message template in | [optional] |
| **inbox_ids** | **Array&lt;String&gt;** | The specific inboxes this template is available in. If unspecified or null, then it will be available in all inboxes. Array should be non-empty. | [optional] |
| **attachments** | **Array&lt;File&gt;** | Binary data of attached files. Must use &#x60;Content-Type: multipart/form-data&#x60; if specified. See [example](https://dev.frontapp.com/docs/attachments-1).  Max 25 MB. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateSharedMessageTemplate.new(
  name: Out of Office,
  subject: Out of Office,
  body: Sorry, I&#39;m OOO until October 25th.,
  folder_id: null,
  inbox_ids: null,
  attachments: null
)
```

