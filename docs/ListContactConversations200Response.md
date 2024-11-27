# FrontApi::ListContactConversations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListContactConversations200ResponsePagination**](ListContactConversations200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListContactConversations200ResponseLinks**](ListContactConversations200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;ConversationResponse&gt;**](ConversationResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListContactConversations200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

