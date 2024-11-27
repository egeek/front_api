# FrontApi::CreateInbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the inbox |  |
| **teammate_ids** | **Array&lt;String&gt;** | An array of teammate IDs that should have access to the inbox. Alternatively, you can supply teammate emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateInbox.new(
  name: null,
  teammate_ids: null
)
```

