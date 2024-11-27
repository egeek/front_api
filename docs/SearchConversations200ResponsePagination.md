# FrontApi::SearchConversations200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::SearchConversations200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/conversations/search/:query:?page_token&#x3D;d4d5f065c89f1284ea262fa6b19456239b0
)
```

