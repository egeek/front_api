# FrontApi::KnowledgeBaseArticleSlimResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**KnowledgeBaseArticleSlimResponseLinks**](KnowledgeBaseArticleSlimResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the knowledge base article | [optional] |
| **locales** | **Array&lt;String&gt;** | List of the locales the article supports | [optional] |
| **created_at** | **Float** | Timestamp when the article was created | [optional] |
| **updated_at** | **Float** | Timestamp when the article was updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticleSlimResponse.new(
  _links: null,
  id: kba_12,
  locales: null,
  created_at: 1622672452.363,
  updated_at: 1654309308.278
)
```

