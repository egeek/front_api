# FrontApi::ChannelResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**ChannelResponseLinksRelated**](ChannelResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ChannelResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/channels/cha_1gv4,
  related: null
)
```

