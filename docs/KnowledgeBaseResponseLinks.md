# FrontApi::KnowledgeBaseResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**KnowledgeBaseResponseLinksRelated**](KnowledgeBaseResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/knowledge_bases/knb_12,
  related: null
)
```

