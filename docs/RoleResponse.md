# FrontApi::RoleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**RoleResponseLinks**](RoleResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the role | [optional] |
| **name** | **String** | Name of the role | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::RoleResponse.new(
  _links: null,
  id: null,
  name: from
)
```

