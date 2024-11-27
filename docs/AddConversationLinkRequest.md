# FrontApi::AddConversationLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_ids** | **Array&lt;String&gt;** | Link IDs to add. Either link_ids or link_external_urls must be specified but not both | [optional] |
| **link_external_urls** | **Array&lt;String&gt;** | Link external URLs to add. Creates links if necessary. Either link_ids or link_external_urls must be specified but not both | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::AddConversationLinkRequest.new(
  link_ids: null,
  link_external_urls: null
)
```

