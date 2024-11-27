# FrontApi::CommentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**CommentResponseLinks**](CommentResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the comment | [optional] |
| **author** | [**TeammateResponse**](TeammateResponse.md) |  | [optional] |
| **body** | **String** | Content of the comment | [optional] |
| **posted_at** | **Float** | Date at which the comment was posted | [optional] |
| **attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | List of files attached to the comment | [optional] |
| **is_pinned** | **Boolean** | Whether or not the comment is pinned in its conversation | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CommentResponse.new(
  _links: null,
  id: com_1ywg3f2,
  author: null,
  body: Sometimes I&#39;ll start a sentence and I don&#39;t even know where it&#39;s going. I just hope I find it along the way.,
  posted_at: 1698943401.378,
  attachments: null,
  is_pinned: true
)
```

