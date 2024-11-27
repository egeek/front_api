# FrontApi::KnowledgeBaseArticleResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**KnowledgeBaseArticleResponseLinksRelated**](KnowledgeBaseArticleResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticleResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/knowledge_base_articles/kba_12,
  related: null
)
```

