# FrontApi::ListAccountContacts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListAccountContacts200ResponsePagination**](ListAccountContacts200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListAccountContacts200ResponseLinks**](ListAccountContacts200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;ContactResponse&gt;**](ContactResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListAccountContacts200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

