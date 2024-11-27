# FrontApi::KnowledgeBaseArticleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**KnowledgeBaseArticleResponseLinks**](KnowledgeBaseArticleResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the knowledge base article | [optional] |
| **name** | **String** | Name of the article | [optional] |
| **status** | **String** | Status of the article | [optional] |
| **keywords** | **Array&lt;String&gt;** | Article keywords | [optional] |
| **content** | **String** | Article HTML content | [optional] |
| **locale** | **String** | Locale of the article | [optional] |
| **attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | List of files attached to the article | [optional] |
| **last_edited_at** | **Float** | Timestamp when the article was last edited | [optional] |
| **created_at** | **Float** | Timestamp when the article was created | [optional] |
| **updated_at** | **Float** | Timestamp when the article was updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseArticleResponse.new(
  _links: null,
  id: kba_12,
  name: Billing 101,
  status: published,
  keywords: null,
  content: &lt;h1&gt;How to process a return&lt;/h1&gt;&lt;p&gt;To process a return...&lt;/p&gt;,
  locale: en,
  attachments: null,
  last_edited_at: 1622672452.363,
  created_at: 1622672452.363,
  updated_at: 1654309308.278
)
```

