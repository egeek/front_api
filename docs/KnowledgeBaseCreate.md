# FrontApi::KnowledgeBaseCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the knowledge base |  |
| **type** | **String** | Determines if the knowledge base is publicly available or private only to your company | [optional][default to &#39;external&#39;] |

## Example

```ruby
require 'front_api'

instance = FrontApi::KnowledgeBaseCreate.new(
  name: null,
  type: internal
)
```

