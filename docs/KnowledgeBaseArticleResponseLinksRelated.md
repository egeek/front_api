# FrontApi::KnowledgeBaseArticleResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base** | **String** | Link to the article&#39;s knowledge base | [optional] |
| **category** | **String** | Link to the article&#39;s category | [optional] |
| **last_editor** | **String** | Link to the article&#39;s last editor | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticleResponseLinksRelated.new(
  knowledge_base: https://yourCompany.api.frontapp.com/knowledge_bases/knb_12,
  category: https://yourCompany.api.frontapp.com/knowledge_base_category/kbc_12,
  last_editor: https://yourCompany.api.frontapp.com/teammates/tea_6r55a
)
```

