# FrontApi::ListConversationEvents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListConversationEvents200ResponsePagination**](ListConversationEvents200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListConversationEvents200ResponseLinks**](ListConversationEvents200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;EventResponse&gt;**](EventResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListConversationEvents200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

