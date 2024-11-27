# FrontApi::TeammateGroupResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**TeammateGroupResponseLinks**](TeammateGroupResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the teammate group | [optional] |
| **name** | **String** | The name of the teammate group | [optional] |
| **description** | **String** | Description of the teammate group | [optional] |
| **is_managed_by_scim** | **Boolean** | Is teammate group managed by SCIM or by Front | [optional] |
| **permissions** | [**TeammateGroupResponsePermissions**](TeammateGroupResponsePermissions.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeammateGroupResponse.new(
  _links: null,
  id: cir_123,
  name: Sales team,
  description: Best sales team ever,
  is_managed_by_scim: false,
  permissions: null
)
```

