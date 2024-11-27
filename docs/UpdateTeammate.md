# FrontApi::UpdateTeammate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | New username. It must be unique and can only contains lowercase letters, numbers and underscores. | [optional] |
| **first_name** | **String** | New first name | [optional] |
| **last_name** | **String** | New last name | [optional] |
| **is_available** | **Boolean** | New availability status | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateTeammate.new(
  username: null,
  first_name: null,
  last_name: null,
  is_available: null,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

