# FrontApi::KnowledgeBaseArticleSlimResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**KnowledgeBaseArticleSlimResponseLinksRelated**](KnowledgeBaseArticleSlimResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticleSlimResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/knowledge_base_articles/kba_12,
  related: null
)
```

