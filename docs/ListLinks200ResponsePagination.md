# FrontApi::ListLinks200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListLinks200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/links?page_token&#x3D;4fcb1f8ca11971c5da59c21ea686fd50
)
```

