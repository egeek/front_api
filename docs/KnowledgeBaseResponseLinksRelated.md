# FrontApi::KnowledgeBaseResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **articles** | **String** | Link to articles associated to the knowledge base | [optional] |
| **categories** | **String** | Link to categories associated to the knowledge base | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseResponseLinksRelated.new(
  articles: https://yourCompany.api.frontapp.com/knowledge_bases/knb_12/articles,
  categories: https://yourCompany.api.frontapp.com/knowledge_bases/knb_12/categories
)
```

