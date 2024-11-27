# FrontApi::KnowledgeBaseSlimResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**KnowledgeBaseResponseLinks**](KnowledgeBaseResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the knowledge base | [optional] |
| **type** | **String** | Type of the KB | [optional] |
| **locales** | **Array&lt;String&gt;** | List of the KB&#39;s possible locales | [optional] |
| **created_at** | **Float** | Timestamp when the knowledge base was created | [optional] |
| **updated_at** | **Float** | Timestamp when the knowledge base was updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseSlimResponse.new(
  _links: null,
  id: knb_12,
  type: internal,
  locales: null,
  created_at: 1622672452.363,
  updated_at: 1654309308.278
)
```

