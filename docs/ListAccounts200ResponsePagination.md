# FrontApi::ListAccounts200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListAccounts200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/accounts?page_token&#x3D;abae846b73ddd80f67fff73c491c41b8b0e74972f3a1079c3c8800416e06cf46
)
```

