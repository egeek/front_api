# FrontApi::ListLinks200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListLinks200ResponsePagination**](ListLinks200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListLinks200ResponseLinks**](ListLinks200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;LinkResponse&gt;**](LinkResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListLinks200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

