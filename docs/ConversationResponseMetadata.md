# FrontApi::ConversationResponseMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_conversation_ids** | **Array&lt;String&gt;** | List of external_ids for partner channel associated with the conversation. Only present for partner channel token authenticated requests. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ConversationResponseMetadata.new(
  external_conversation_ids: [&quot;JS3949&quot;,&quot;JS9403&quot;]
)
```

