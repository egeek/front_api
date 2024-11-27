# FrontApi::TeammateGroupResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammates** | **String** | Link to list of teammate members | [optional] |
| **teams** | **String** | Link to list of associated teams | [optional] |
| **inboxes** | **String** | Link to list of inboxes that teammate members can access | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeammateGroupResponseLinksRelated.new(
  teammates: https://yourCompany.api.frontapp.com/teammate_groups/cir_123/teammates,
  teams: https://yourCompany.api.frontapp.com/teammate_groups/cir_123/teams,
  inboxes: https://yourCompany.api.frontapp.com/teammate_groups/cir_123/inboxes
)
```

