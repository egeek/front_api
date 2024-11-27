# FrontApi::KnowledgeBaseCategoryResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base** | **String** | Link to the category&#39;s knowledge base | [optional] |
| **parent_category** | **String** | Link to the category&#39;s parent | [optional] |
| **articles** | **String** | Link to articles in this category | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseCategoryResponseLinksRelated.new(
  knowledge_base: https://yourCompany.api.frontapp.com/knowledge_bases/knb_12,
  parent_category: https://yourCompany.api.frontapp.com/knowledge_base_catgories/kbc_10,
  articles: https://yourCompany.api.frontapp.com/knowledge_base_categories/kbc_12/articles
)
```

