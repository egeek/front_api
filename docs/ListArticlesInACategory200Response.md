# FrontApi::ListArticlesInACategory200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListArticlesInACategory200ResponsePagination**](ListArticlesInACategory200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListArticlesInACategory200ResponseLinks**](ListArticlesInACategory200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;KnowledgeBaseArticleSlimResponse&gt;**](KnowledgeBaseArticleSlimResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListArticlesInACategory200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

