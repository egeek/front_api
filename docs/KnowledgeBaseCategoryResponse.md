# FrontApi::KnowledgeBaseCategoryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**KnowledgeBaseCategoryResponseLinks**](KnowledgeBaseCategoryResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the knowledge base category | [optional] |
| **name** | **String** | Category name | [optional] |
| **description** | **String** | Description of the category | [optional] |
| **is_hidden** | **Boolean** | Is the category hidden | [optional] |
| **locale** | **String** | Locale of this category | [optional] |
| **created_at** | **Float** | Timestamp when the category was created | [optional] |
| **updated_at** | **Float** | Timestamp when the category was updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseCategoryResponse.new(
  _links: null,
  id: kbc_12,
  name: Getting started,
  description: How to get started in Front,
  is_hidden: false,
  locale: en,
  created_at: 1622672452.363,
  updated_at: 1654309308.278
)
```

