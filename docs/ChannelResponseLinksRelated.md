# FrontApi::ChannelResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox** | **String** | Link to channel inbox | [optional] |
| **owner** | **String** | Link to channel owner | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ChannelResponseLinksRelated.new(
  inbox: https://yourCompany.api.frontapp.com/inboxes/inb_1ix6,
  owner: https://yourCompany.api.frontapp.com/teams/jen_k30
)
```

