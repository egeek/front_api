# FrontApi::KnowledgeBaseCategoryResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**KnowledgeBaseCategoryResponseLinksRelated**](KnowledgeBaseCategoryResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseCategoryResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/knowledge_base_categories/kbc_12,
  related: null
)
```

