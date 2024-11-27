# FrontApi::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Account | [optional] |
| **description** | **String** | Account description | [optional] |
| **domains** | **Array&lt;String&gt;** | List of domains associated with the Account | [optional] |
| **external_id** | **String** | ID of the Account in an external system | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::Account.new(
  name: null,
  description: null,
  domains: null,
  external_id: null,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

