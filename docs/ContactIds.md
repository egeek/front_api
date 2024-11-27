# FrontApi::ContactIds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_ids** | **Array&lt;String&gt;** | The contact IDs to include. Alternatively, you can supply the contact source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactIds.new(
  contact_ids: null
)
```

