# FrontApi::ListConversationEvents200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListConversationEvents200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/events?page_token&#x3D;2d018a5809eb90d349bc08c52cb1f4987bef
)
```

