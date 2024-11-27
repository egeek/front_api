# FrontApi::MessageResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**MessageResponseLinksRelated**](MessageResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/messages/msg_1q15qmtq,
  related: null
)
```

