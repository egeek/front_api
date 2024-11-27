# FrontApi::CreateTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the tag |  |
| **description** | **String** | Description of the tag | [optional] |
| **highlight** | **String** | Highlight color of the tag. | [optional] |
| **is_visible_in_conversation_lists** | **Boolean** | Whether the tag is visible in conversation lists. | [optional][default to false] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateTag.new(
  name: null,
  description: null,
  highlight: null,
  is_visible_in_conversation_lists: null
)
```

