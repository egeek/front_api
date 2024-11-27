# FrontApi::ContactResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notes** | **String** | Link to contact notes | [optional] |
| **conversations** | **String** | Link to contact conversations | [optional] |
| **owner** | **String** | Link to contact owner | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactResponseLinksRelated.new(
  notes: https://yourCompany.api.frontapp.com/contacts/crd_3cgz4ge/notes,
  conversations: https://yourCompany.api.frontapp.com/contacts/crd_3cgz4ge/conversations,
  owner: null
)
```

