# FrontApi::EditDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_id** | **String** | ID of the teammate on behalf of whom the draft will be created. Alternatively, you can supply the author ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). |  |
| **to** | **Array&lt;String&gt;** | List of recipient handles who will receive the message once the draft is sent | [optional] |
| **cc** | **Array&lt;String&gt;** | List of recipient handles who will receive a copy of the message once the draft is sent | [optional] |
| **bcc** | **Array&lt;String&gt;** | List of the recipient handles who will receive a blind copy of the message once the draft is sent | [optional] |
| **subject** | **String** | Subject of the draft. | [optional] |
| **body** | **String** | Body of the draft |  |
| **quote_body** | **String** | Body for the quote that the message is referencing. Only available on email channels. | [optional] |
| **attachments** | **Array&lt;File&gt;** | Binary data of attached files. Must use &#x60;Content-Type: multipart/form-data&#x60; if specified. See [example](https://gist.github.com/hdornier/e04d04921032e98271f46ff8a539a4cb) or read more about [Attachments](https://dev.frontapp.com/docs/attachments-1). Max 25 MB. | [optional] |
| **mode** | **String** | Mode of the draft to update. Can only be &#39;shared&#39; (draft is visible to all teammates with access to the conversation). | [optional] |
| **signature_id** | **String** | ID of the signature to attach to this draft. If null, no signature is attached. | [optional] |
| **should_add_default_signature** | **Boolean** | Whether or not Front should try to resolve a signature for the message. Is ignored if signature_id is included. Default false; | [optional] |
| **channel_id** | **String** | ID of the channel from which the draft will be sent. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). |  |
| **version** | **String** | Version of the draft | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::EditDraft.new(
  author_id: null,
  to: null,
  cc: null,
  bcc: null,
  subject: null,
  body: null,
  quote_body: null,
  attachments: null,
  mode: null,
  signature_id: null,
  should_add_default_signature: null,
  channel_id: null,
  version: null
)
```

