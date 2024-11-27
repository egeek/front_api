# FrontApi::ContactGroupResponses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ContactGroupResponsesLinks**](ContactGroupResponsesLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the group | [optional] |
| **name** | **String** | Name of the group | [optional] |
| **is_private** | **Boolean** | Whether or not the contact is individual | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactGroupResponses.new(
  _links: null,
  id: grp_3j342,
  name: Party Planning Committee,
  is_private: false
)
```

