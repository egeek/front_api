# FrontApi::KnowledgeBaseCategorySlimResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**KnowledgeBaseCategoryResponseLinks**](KnowledgeBaseCategoryResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the knowledge base category | [optional] |
| **is_hidden** | **Boolean** | Is the category hidden from navigation and breadcrumbs (topics are accessed as direct links) | [optional] |
| **locales** | **Array&lt;String&gt;** | List of the locales the category supports | [optional] |
| **created_at** | **Float** | Timestamp when the category was created | [optional] |
| **updated_at** | **Float** | Timestamp when the category was updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseCategorySlimResponse.new(
  _links: null,
  id: kbc_12,
  is_hidden: false,
  locales: null,
  created_at: 1622672452.363,
  updated_at: 1654309308.278
)
```

