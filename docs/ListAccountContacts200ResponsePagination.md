# FrontApi::ListAccountContacts200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListAccountContacts200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/contacts?page_token&#x3D;e0b5767cb0f1100743d46f67fcd765caac2ed
)
```

