# FrontApi::MessageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**MessageResponseLinks**](MessageResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the message | [optional] |
| **type** | **String** | Type of the message | [optional] |
| **is_inbound** | **Boolean** | Whether or not the message has been received or sent | [optional] |
| **draft_mode** | **String** | If the message is a draft, describes the draft mode. Can be &#39;private&#39; (draft is visible to the author only) or &#39;shared&#39; (draft is visible to all teammates with access to the conversation). | [optional] |
| **error_type** | **String** | Type of the error when the draft failed to be sent | [optional] |
| **version** | **String** | The current version of the message in Front | [optional] |
| **created_at** | **Float** | Date at which the message as been sent or received | [optional] |
| **subject** | **String** | Subject of the message | [optional] |
| **blurb** | **String** | Preview of the message body | [optional] |
| **author** | [**TeammateResponse**](TeammateResponse.md) |  | [optional] |
| **recipients** | [**Array&lt;RecipientResponse&gt;**](RecipientResponse.md) |  | [optional] |
| **body** | **String** | Body of the message | [optional] |
| **text** | **String** | Text version of the body for email messages | [optional] |
| **attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | List of files attached to the message | [optional] |
| **signature** | [**SignatureResponse**](SignatureResponse.md) |  | [optional] |
| **metadata** | [**MessageResponseMetadata**](MessageResponseMetadata.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageResponse.new(
  _links: null,
  id: msg_1q15qmtq,
  type: email,
  is_inbound: false,
  draft_mode: shared,
  error_type: null,
  version: 551ba368f3e7803cce51503ee3e58ef0-26028-1701804863304-945c,
  created_at: 1701292639,
  subject: Jim&#39;s pranks are getting out of hand,
  blurb: It&#39;s high time we discuss the pranking culture in the office,
  author: null,
  recipients: null,
  body: &lt;p&gt;Hi there,&lt;/p&gt;&lt;p&gt;I wanted to let you know that I&#39;m suggesting an update to &lt;a href&#x3D;&#39;https://dundermifflin.com/privacy/pranks&#39;&gt;Dunder Mifflin&#39;s Pranking Policy&lt;/a&gt; to provide non-humorous employees greater control over their well-being in the office.&lt;/p&gt;,
  text: Hi there,\n\nI wanted to let you know that I&#39;m suggesting an update to Dunder Mifflin&#39;s Pranking Policy (https://dundermifflin.com/privacy/pranks) to provide non-humorous employees greater control over their well-being in the office.,
  attachments: null,
  signature: null,
  metadata: null
)
```

