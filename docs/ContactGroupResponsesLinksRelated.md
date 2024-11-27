# FrontApi::ContactGroupResponsesLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts** | **String** | Link to group contacts | [optional] |
| **owner** | **String** | Link to group owner | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactGroupResponsesLinksRelated.new(
  contacts: https://yourCompany.api.frontapp.com/contact_groups/grp_3j342/contacts,
  owner: https://yourCompany.api.frontapp.com/teammates/tea_e35u
)
```

