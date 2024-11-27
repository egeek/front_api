# FrontApi::ListFolders200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListFolders200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/message_template_folders?page_token&#x3D;9fa92a7f385fd7be43f7153055b30e6d
)
```

