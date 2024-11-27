# FrontApi::CustomFieldResponseValuesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Value of the custom field | [optional] |
| **label** | **String** | Human readable label for the value | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CustomFieldResponseValuesInner.new(
  value: Enterprise,
  label: Customer plan
)
```

