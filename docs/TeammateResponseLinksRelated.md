# FrontApi::TeammateResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inboxes** | **String** | Link to teammate&#39;s inboxes | [optional] |
| **conversations** | **String** | Link to teammate&#39;s conversations | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeammateResponseLinksRelated.new(
  inboxes: https://yourCompany.api.frontapp.com/teammates/tea_6r55a/inboxes,
  conversations: https://yourCompany.api.frontapp.com/teammates/tea_6r55a/conversations
)
```

