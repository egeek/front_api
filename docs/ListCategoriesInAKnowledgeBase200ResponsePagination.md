# FrontApi::ListCategoriesInAKnowledgeBase200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Link to next [page of results](https://dev.frontapp.com/docs/pagination) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListCategoriesInAKnowledgeBase200ResponsePagination.new(
  _next: https://yourCompany.api.frontapp.com/knowledge_bases/knb_1/categories?page_token&#x3D;134287aba8eaa55cf366400c63300a75bab0c
)
```

