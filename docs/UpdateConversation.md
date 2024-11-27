# FrontApi::UpdateConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignee_id** | **String** | ID of the teammate to assign the conversation to. Set it to null to unassign. | [optional] |
| **inbox_id** | **String** | ID of the inbox to move the conversation to. | [optional] |
| **status** | **String** | New status of the conversation | [optional] |
| **tag_ids** | **Array&lt;String&gt;** | List of all the tag IDs replacing the old conversation tags | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateConversation.new(
  assignee_id: null,
  inbox_id: null,
  status: null,
  tag_ids: null,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

