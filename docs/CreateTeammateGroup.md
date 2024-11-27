# FrontApi::CreateTeammateGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the teammate group |  |
| **description** | **String** | Description of the teammate group | [optional] |
| **permissions** | [**CreateTeammateGroupPermissions**](CreateTeammateGroupPermissions.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateTeammateGroup.new(
  name: null,
  description: null,
  permissions: null
)
```

