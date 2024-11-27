# FrontApi::InboxResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammates** | **String** | Link to inbox teammates | [optional] |
| **conversations** | **String** | Link to inbox conversations | [optional] |
| **channels** | **String** | Link to inbox channels | [optional] |
| **owner** | **String** | Link to inbox owner | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::InboxResponseLinksRelated.new(
  teammates: https://yourCompany.api.frontapp.com/inboxes/inb_1ix6/teammates,
  conversations: https://yourCompany.api.frontapp.com/inboxes/inb_1ix6/conversations,
  channels: https://yourCompany.api.frontapp.com/inboxes/inb_1ix6/channels,
  owner: https://yourCompany.api.frontapp.com/teams/tim_k30
)
```

