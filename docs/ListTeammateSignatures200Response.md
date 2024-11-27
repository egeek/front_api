# FrontApi::ListTeammateSignatures200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListTeammateSignatures200ResponsePagination**](ListTeammateSignatures200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListTeammateSignatures200ResponseLinks**](ListTeammateSignatures200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;SignatureResponse&gt;**](SignatureResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListTeammateSignatures200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

