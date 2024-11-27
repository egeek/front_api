# FrontApi::ListAccounts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListAccounts200ResponsePagination**](ListAccounts200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListAccounts200ResponseLinks**](ListAccounts200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;AccountResponse&gt;**](AccountResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListAccounts200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

