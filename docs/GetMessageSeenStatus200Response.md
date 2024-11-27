# FrontApi::GetMessageSeenStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**GetMessageSeenStatus200ResponsePagination**](GetMessageSeenStatus200ResponsePagination.md) |  | [optional] |
| **_links** | [**GetMessageSeenStatus200ResponseLinks**](GetMessageSeenStatus200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;SeenReceiptResponse&gt;**](SeenReceiptResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::GetMessageSeenStatus200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

