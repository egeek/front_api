# FrontApi::OutboundReplyMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **Array&lt;String&gt;** | List of the recipient handles who will receive this message | [optional] |
| **cc** | **Array&lt;String&gt;** | List of the recipient handles who will receive a copy of this message | [optional] |
| **bcc** | **Array&lt;String&gt;** | List of the recipient handles who will receive a copy of this message | [optional] |
| **sender_name** | **String** | Name used for the sender info of the message | [optional] |
| **subject** | **String** | Subject of the message for email message | [optional] |
| **author_id** | **String** | ID of the teammate on behalf of whom the answer is sent | [optional] |
| **channel_id** | **String** | Channel ID the message is sent from | [optional] |
| **body** | **String** | Body of the message |  |
| **text** | **String** | Text version of the body for email messages | [optional] |
| **quote_body** | **String** | Body for the quote that the message is referencing. Only available on email channels. | [optional] |
| **options** | [**OutboundReplyMessageOptions**](OutboundReplyMessageOptions.md) |  | [optional] |
| **attachments** | **Array&lt;File&gt;** | Binary data of attached files. Must use &#x60;Content-Type: multipart/form-data&#x60; if specified. See [example](https://gist.github.com/hdornier/e04d04921032e98271f46ff8a539a4cb) or read more about [Attachments](https://dev.frontapp.com/docs/attachments-1).  Max 25 MB. | [optional] |
| **signature_id** | **String** | ID of the signature to attach to this draft. If null, no signature is attached. | [optional] |
| **should_add_default_signature** | **Boolean** | Whether or not Front should try to resolve a signature for the message. Is ignored if signature_id is included. Default false; | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::OutboundReplyMessage.new(
  to: null,
  cc: null,
  bcc: null,
  sender_name: null,
  subject: null,
  author_id: null,
  channel_id: null,
  body: null,
  text: null,
  quote_body: null,
  options: null,
  attachments: null,
  signature_id: null,
  should_add_default_signature: null
)
```

