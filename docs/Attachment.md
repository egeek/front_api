# FrontApi::Attachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the attachment. | [optional] |
| **filename** | **String** | Name of the attached file | [optional] |
| **url** | **String** | URL to download the attached file | [optional] |
| **content_type** | **String** | Content type of the attached file in [MIME format](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types). Note that some attachments types may not be supported. | [optional] |
| **size** | **Integer** | Size (in byte) of the attached file | [optional] |
| **metadata** | [**AttachmentMetadata**](AttachmentMetadata.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::Attachment.new(
  id: fil_3q8a7mby,
  filename: Andy_Anger_Management_Certificate.png,
  url: https://yourCompany.api.frontapp.com/download/fil_3q8a7mby,
  content_type: image/png,
  size: 4405,
  metadata: null
)
```

