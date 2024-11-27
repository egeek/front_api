# FrontApi::SeenReceiptResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to self | [optional] |
| **related** | [**SeenReceiptResponseLinksRelated**](SeenReceiptResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::SeenReceiptResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/messages/msg_1p4lvjym/seen,
  related: null
)
```

