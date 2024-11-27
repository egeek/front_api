# FrontApi::CustomMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | [**CustomMessageSender**](CustomMessageSender.md) |  |  |
| **subject** | **String** | Subject of the message | [optional] |
| **body** | **String** | Body of the message |  |
| **body_format** | **String** | Format of the message body. Can be &#x60;markdown&#x60; (default) or &#x60;html&#x60;. | [optional][default to &#39;markdown&#39;] |
| **metadata** | [**CustomMessageMetadata**](CustomMessageMetadata.md) |  | [optional] |
| **attachments** | **Array&lt;File&gt;** | Binary data of attached files. Must use &#x60;Content-Type: multipart/form-data&#x60; if specified. See [example](https://gist.github.com/hdornier/e04d04921032e98271f46ff8a539a4cb) or read more about [Attachments](https://dev.frontapp.com/docs/attachments-1).  Max 25 MB. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CustomMessage.new(
  sender: null,
  subject: null,
  body: null,
  body_format: null,
  metadata: null,
  attachments: null
)
```

