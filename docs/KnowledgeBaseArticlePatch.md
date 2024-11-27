# FrontApi::KnowledgeBaseArticlePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_id** | **String** | Teammate ID of the article author | [optional] |
| **subject** | **String** | Subject of the article | [optional] |
| **content** | **String** | HTML content of the article | [optional] |
| **status** | **String** | Article status | [optional][default to &#39;draft&#39;] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticlePatch.new(
  author_id: null,
  subject: null,
  content: null,
  status: null
)
```

