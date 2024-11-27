# FrontApi::CustomFieldResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**CustomFieldResponseLinks**](CustomFieldResponseLinks.md) |  |  |
| **id** | **String** | Unique identifier of the custom field |  |
| **name** | **String** | Name of the custom field |  |
| **description** | **String** | Description of the custom field |  |
| **type** | **String** | Type of the custom field |  |
| **values** | [**Array&lt;CustomFieldResponseValuesInner&gt;**](CustomFieldResponseValuesInner.md) | List of possible values for a custom field of type &#x60;enum&#x60;. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CustomFieldResponse.new(
  _links: null,
  id: fld_co0e,
  name: Customer plan,
  description: The billing plan of the customer,
  type: enum,
  values: null
)
```

