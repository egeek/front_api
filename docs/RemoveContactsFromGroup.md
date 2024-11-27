# FrontApi::RemoveContactsFromGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_ids** | **Array&lt;String&gt;** | List of IDs of the contacts to remove from the requested group. Alternatively, you can supply the contact source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::RemoveContactsFromGroup.new(
  contact_ids: null
)
```

