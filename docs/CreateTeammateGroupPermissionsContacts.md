# FrontApi::CreateTeammateGroupPermissionsContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access** | **String** | One of &#39;all&#39;, &#39;contact_groups&#39;, or &#39;none&#39;. |  |
| **contact_group_ids** | **Array&lt;String&gt;** | List of contact group ids. Can only be specified if access is set to &#39;contact_groups&#39;. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateTeammateGroupPermissionsContacts.new(
  access: null,
  contact_group_ids: null
)
```

