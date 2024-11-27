# FrontApi::KnowledgeBaseArticleCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | ID of the category this article belongs to | [optional] |
| **author_id** | **String** | Teammate ID of the article author | [optional] |
| **subject** | **String** | Subject of the article | [optional] |
| **content** | **String** | HTML content of the article | [optional] |
| **status** | **String** | Article status | [optional][default to &#39;draft&#39;] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticleCreate.new(
  category_id: null,
  author_id: null,
  subject: null,
  content: null,
  status: null
)
```

