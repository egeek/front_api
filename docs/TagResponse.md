# FrontApi::TagResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**TagResponseLinks**](TagResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the tag | [optional] |
| **name** | **String** | Name of the tag | [optional] |
| **description** | **String** | Description of the tag | [optional] |
| **highlight** | **String** | Highlight color of the tag. | [optional] |
| **is_private** | **Boolean** | Whether or not the tag is individual | [optional] |
| **is_visible_in_conversation_lists** | **Boolean** | Whether the tag is visible in conversation lists. | [optional] |
| **created_at** | **Float** | Timestamp of tag create creation | [optional] |
| **updated_at** | **Float** | Timestamp of the last tag update | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TagResponse.new(
  _links: null,
  id: tag_2oxhvy,
  name: Warehouse task,
  description: Sitting on your biscuit, never having to risk it,
  highlight: null,
  is_private: false,
  is_visible_in_conversation_lists: true,
  created_at: 1682538996.583,
  updated_at: 1699575875.186
)
```

