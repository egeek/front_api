# FrontApi::ListCategoriesInAKnowledgeBase200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListCategoriesInAKnowledgeBase200ResponsePagination**](ListCategoriesInAKnowledgeBase200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListCategoriesInAKnowledgeBase200ResponseLinks**](ListCategoriesInAKnowledgeBase200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;KnowledgeBaseCategorySlimResponse&gt;**](KnowledgeBaseCategorySlimResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListCategoriesInAKnowledgeBase200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

