# FrontApi::TeammateGroupResponsePermissionsContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access** | **String** | Level of access for the teammate group to contact groups. Must be one of &#39;all&#39;, &#39;contact_groups&#39;, or &#39;none&#39;. | [optional] |
| **contact_group_ids** | **Array&lt;String&gt;** | List of contact groups the teammate group is allowed to access. May only be specified if &#39;access&#39; is set to &#39;contact_groups&#39;. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeammateGroupResponsePermissionsContacts.new(
  access: null,
  contact_group_ids: [&quot;grp_123&quot;,&quot;grp_456&quot;]
)
```

