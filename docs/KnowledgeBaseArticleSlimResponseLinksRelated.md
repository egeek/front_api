# FrontApi::KnowledgeBaseArticleSlimResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base** | **String** | Link to the article&#39;s knowledge base | [optional] |
| **category** | **String** | Link to the article&#39;s category | [optional] |
| **content** | **String** | Link to the article&#39;s content | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticleSlimResponseLinksRelated.new(
  knowledge_base: https://yourCompany.api.frontapp.com/knowledge_bases/knb_12,
  category: https://yourCompany.api.frontapp.com/knowledge_base_category/kbc_12,
  content: https://yourCompany.api.frontapp.com/knowledge_base_articles/kba_12/content
)
```

