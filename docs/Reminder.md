# FrontApi::Reminder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ReminderLinks**](ReminderLinks.md) |  | [optional] |
| **created_at** | **Float** | Timestamp at which the conversation reminder has been created | [optional] |
| **scheduled_at** | **Float** | Timestamp that the conversation reminder has been scheduled for | [optional] |
| **updated_at** | **Float** | Timestamp at which the conversation reminder has been updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::Reminder.new(
  _links: null,
  created_at: 1701806790.536,
  scheduled_at: 1701874800,
  updated_at: 1701806790.536
)
```

