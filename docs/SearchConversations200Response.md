# FrontApi::SearchConversations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**SearchConversations200ResponsePagination**](SearchConversations200ResponsePagination.md) |  | [optional] |
| **_links** | [**SearchConversations200ResponseLinks**](SearchConversations200ResponseLinks.md) |  | [optional] |
| **_total** | **Integer** | Total number of matching conversations | [optional] |
| **_results** | [**Array&lt;ConversationResponse&gt;**](ConversationResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::SearchConversations200Response.new(
  _pagination: null,
  _links: null,
  _total: 212,
  _results: null
)
```

