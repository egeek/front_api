# FrontApi::InboxResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**InboxResponseLinksRelated**](InboxResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::InboxResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/inboxes/inb_1ix6,
  related: null
)
```

