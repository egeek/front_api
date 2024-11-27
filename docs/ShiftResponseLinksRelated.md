# FrontApi::ShiftResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammates** | **String** | Link to shift teammates | [optional] |
| **owner** | **String** | Link to shift owner | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ShiftResponseLinksRelated.new(
  teammates: https://yourCompany.api.frontapp.com/shifts/shf_1bri/teammates,
  owner: https://yourCompany.api.frontapp.com/teams/tim_4kxji
)
```

