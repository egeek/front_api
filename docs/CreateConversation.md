# FrontApi::CreateConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Conversation type |  |
| **inbox_id** | **String** | Inbox ID for the conversation. Either &#x60;inbox_id&#x60; OR &#x60;teammate_ids&#x60; must be provided (not both). | [optional] |
| **teammate_ids** | **Array&lt;String&gt;** | Teammates to add to the conversation. Either &#x60;inbox_id&#x60; OR &#x60;teammate_ids&#x60; must be provided (not both). | [optional] |
| **subject** | **String** | Subject of the conversation |  |
| **comment** | [**CreateConversationComment**](CreateConversationComment.md) |  |  |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateConversation.new(
  type: null,
  inbox_id: null,
  teammate_ids: null,
  subject: null,
  comment: null,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

