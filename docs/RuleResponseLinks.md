# FrontApi::RuleResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**RuleResponseLinksRelated**](RuleResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::RuleResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/rules/rul_58xhq,
  related: null
)
```

