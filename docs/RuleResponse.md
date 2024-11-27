# FrontApi::RuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**RuleResponseLinks**](RuleResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the rule | [optional] |
| **name** | **String** | Name of the rule | [optional] |
| **actions** | **Array&lt;String&gt;** | List of the rule&#39;s actions description | [optional] |
| **is_private** | **Boolean** | Whether or not the rule is individual | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::RuleResponse.new(
  _links: null,
  id: rul_58xhq,
  name: Scranton new account workflow,
  actions: null,
  is_private: false
)
```

