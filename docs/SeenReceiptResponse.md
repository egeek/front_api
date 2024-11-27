# FrontApi::SeenReceiptResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**SeenReceiptResponseLinks**](SeenReceiptResponseLinks.md) |  | [optional] |
| **first_seen_at** | **String** | Timestamp when message was seen | [optional] |
| **seen_by** | [**ContactHandle**](ContactHandle.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::SeenReceiptResponse.new(
  _links: null,
  first_seen_at: 1701298738269,
  seen_by: null
)
```

