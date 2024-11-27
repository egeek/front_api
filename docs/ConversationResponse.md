# FrontApi::ConversationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ConversationResponseLinks**](ConversationResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the conversation | [optional] |
| **subject** | **String** | Subject of the message for email message | [optional] |
| **status** | **String** | Status of the conversation | [optional] |
| **assignee** | [**TeammateResponse**](TeammateResponse.md) |  | [optional] |
| **recipient** | [**RecipientResponse**](RecipientResponse.md) |  | [optional] |
| **tags** | [**Array&lt;TagResponse&gt;**](TagResponse.md) | List of the tags for this conversation | [optional] |
| **links** | [**Array&lt;LinkResponse&gt;**](LinkResponse.md) | List of the links for this conversation | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |
| **created_at** | **Float** | Timestamp at which the conversation have been created. | [optional] |
| **waiting_since** | **Float** | Timestamp of the oldest unreplied message. | [optional] |
| **is_private** | **Boolean** | Whether or not the conversation is private | [optional] |
| **scheduled_reminders** | [**Array&lt;Reminder&gt;**](Reminder.md) | List of scheduled (non-expired and non-canceled) reminders for this conversation | [optional] |
| **metadata** | [**ConversationResponseMetadata**](ConversationResponseMetadata.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ConversationResponse.new(
  _links: null,
  id: cnv_yo1kg5q,
  subject: How to prank Dwight Schrute,
  status: assigned,
  assignee: null,
  recipient: null,
  tags: null,
  links: null,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;},
  created_at: 1701292649.333,
  waiting_since: 1701292649.333,
  is_private: true,
  scheduled_reminders: null,
  metadata: null
)
```

