# FrontApi::ListConversationDrafts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListConversationDrafts200ResponsePagination**](ListConversationDrafts200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListConversationDrafts200ResponseLinks**](ListConversationDrafts200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;MessageResponse&gt;**](MessageResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListConversationDrafts200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

