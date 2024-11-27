# FrontApi::KnowledgeBaseCategoryCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_category_id** | **String** | ID of the parent category | [optional] |
| **name** | **String** | Name of the knowledge base category |  |
| **description** | **String** | Description of the knowledge base category | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseCategoryCreate.new(
  parent_category_id: null,
  name: null,
  description: null
)
```

