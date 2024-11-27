# FrontApi::MessageTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**MessageTemplateResponseLinks**](MessageTemplateResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the message template | [optional] |
| **name** | **String** | Name of the message template | [optional] |
| **subject** | **String** | Subject of the message template | [optional] |
| **body** | **String** | Body of the message template | [optional] |
| **attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | List of files attached to the response | [optional] |
| **is_available_for_all_inboxes** | **Boolean** | Whether or not the template is available in all inboxes. | [optional] |
| **inbox_ids** | **Array&lt;String&gt;** | List of inboxes the template is available in. Null if there are no restrictions. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageTemplateResponse.new(
  _links: null,
  id: rsp_16yc,
  name: Pam wedding planning complaint,
  subject: Work time being used for wedding planning,
  body: Pam is spending time planning her wedding at the office. This message WAS NOT sent by Angela.,
  attachments: null,
  is_available_for_all_inboxes: true,
  inbox_ids: null
)
```

