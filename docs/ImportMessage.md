# FrontApi::ImportMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | [**ImportMessageSender**](ImportMessageSender.md) |  |  |
| **to** | **Array&lt;String&gt;** | List of the recipient handles who will receive this message |  |
| **cc** | **Array&lt;String&gt;** | List of the recipient handles who will receive a copy of this message | [optional] |
| **bcc** | **Array&lt;String&gt;** | List of the recipient handles who will receive a blind copy of this message | [optional] |
| **subject** | **String** | Subject of the message | [optional] |
| **body** | **String** | Body of the message |  |
| **body_format** | **String** | Format of the message body. Can be &#x60;markdown&#x60; (default) or &#x60;html&#x60;, and can only be specified for &#x60;email&#x60; type. | [optional][default to &#39;markdown&#39;] |
| **external_id** | **String** | External identifier of the message. Front won&#39;t import two messages with the same external ID. |  |
| **created_at** | **Integer** | Date at which the message as been sent or received. |  |
| **type** | **String** | Type of the message to import. Default is &#x60;email&#x60;. | [optional][default to &#39;email&#39;] |
| **assignee_id** | **String** | ID of the teammate who will be assigned to the conversation. | [optional] |
| **tags** | **Array&lt;String&gt;** | List of tag names to add to the conversation | [optional] |
| **conversation_id** | **String** | If supplied, Front will thread this message into conversation with the given ID. Note that including this parameter nullifies the &#x60;thread_ref&#x60; parameter _completely_. | [optional] |
| **metadata** | [**ImportMessageMetadata**](ImportMessageMetadata.md) |  |  |
| **attachments** | **Array&lt;File&gt;** | Binary data of attached files. Must use &#x60;Content-Type: multipart/form-data&#x60; if specified. See [example](https://gist.github.com/hdornier/e04d04921032e98271f46ff8a539a4cb) or read more about [Attachments](https://dev.frontapp.com/docs/attachments-1).  Max 25 MB. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ImportMessage.new(
  sender: null,
  to: null,
  cc: null,
  bcc: null,
  subject: null,
  body: null,
  body_format: null,
  external_id: null,
  created_at: null,
  type: null,
  assignee_id: null,
  tags: null,
  conversation_id: null,
  metadata: null,
  attachments: null
)
```

