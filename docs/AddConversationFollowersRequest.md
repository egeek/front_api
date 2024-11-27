# FrontApi::AddConversationFollowersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_ids** | **Array&lt;String&gt;** | IDs of the teammate to add to the followers list. Alternatively, you can supply the teammates as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::AddConversationFollowersRequest.new(
  teammate_ids: null
)
```

