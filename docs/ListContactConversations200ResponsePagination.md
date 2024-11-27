# FrontApi::ListContactConversations200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListContactConversations200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/conversations?page_token&#x3D;ce787da6f075740cf187d926f5e9f612bc7875763a8dd37d5
)
```

