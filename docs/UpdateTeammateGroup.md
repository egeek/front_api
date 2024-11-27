# FrontApi::UpdateTeammateGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the teammate group | [optional] |
| **description** | **String** | Description of the teammate group | [optional] |
| **permissions** | [**CreateTeammateGroupPermissions**](CreateTeammateGroupPermissions.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateTeammateGroup.new(
  name: null,
  description: null,
  permissions: null
)
```

