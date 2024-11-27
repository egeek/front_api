# FrontApi::KnowledgeBaseResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**KnowledgeBaseResponseLinks**](KnowledgeBaseResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the knowledge base | [optional] |
| **name** | **String** | Knowledge base name | [optional] |
| **status** | **String** | Status of the KB | [optional] |
| **type** | **String** | Type of the KB | [optional] |
| **locale** | **String** | Locale of this requested KB | [optional] |
| **created_at** | **Float** | Timestamp when the knowledge base was created | [optional] |
| **updated_at** | **Float** | Timestamp when the knowledge base was updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseResponse.new(
  _links: null,
  id: knb_12,
  name: Company Help Center,
  status: unpublished,
  type: internal,
  locale: en,
  created_at: 1622672452.363,
  updated_at: 1654309308.278
)
```

