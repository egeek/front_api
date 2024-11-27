# FrontApi::AccountResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**AccountResponseLinksRelated**](AccountResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::AccountResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/accounts/acc_76,
  related: null
)
```

