# FrontApi::UpdateTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the tag | [optional] |
| **description** | **String** | Description of the tag | [optional] |
| **highlight** | **String** | Highlight color of the tag. | [optional] |
| **parent_tag_id** | **String** | ID of the parent of this tag. Set to &#x60;null&#x60; to remove  the parent tag. | [optional] |
| **is_visible_in_conversation_lists** | **Boolean** | Whether the tag is visible in conversation lists. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateTag.new(
  name: null,
  description: null,
  highlight: null,
  parent_tag_id: null,
  is_visible_in_conversation_lists: null
)
```

