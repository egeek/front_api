# FrontApi::UpdateConversationAssignee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignee_id** | **String** | ID of the teammate to assign the conversation to. Set it to null to unassign. |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateConversationAssignee.new(
  assignee_id: null
)
```

