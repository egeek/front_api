# FrontApi::GetMessageSeenStatus200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::GetMessageSeenStatus200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/messages/msg_1p4lvjym/seen?page_token&#x3D;jk7893fgeet644abnn39
)
```

