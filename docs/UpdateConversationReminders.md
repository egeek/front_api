# FrontApi::UpdateConversationReminders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | ID of the teammate to create a reminder for. For a private conversation, specify the id of the teammate that owns the conversation. For a shared conversation, use the id of any teammate that has access to the conversation&#39;s shared inbox. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). |  |
| **scheduled_at** | **Float** | Timestamp to schedule the reminder for. Set to null to cancel. |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateConversationReminders.new(
  teammate_id: null,
  scheduled_at: null
)
```
