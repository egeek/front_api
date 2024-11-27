# FrontApi::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Contact name | [optional] |
| **description** | **String** | Contact description | [optional] |
| **avatar** | **File** | Binary data of avatar. Must use &#x60;Content-Type: multipart/form-data&#x60; if specified. See [example](https://gist.github.com/hdornier/e04d04921032e98271f46ff8a539a4cb) or read more about [Attachments](https://dev.frontapp.com/docs/attachments-1).  Max 25 MB. | [optional] |
| **is_spammer** | **Boolean** | Whether or not the contact is marked as a spammer | [optional] |
| **links** | **Array&lt;String&gt;** | List of all the links of the contact | [optional] |
| **group_names** | **Array&lt;String&gt;** | List of all the group names the contact belongs to. It will automatically create missing groups | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::Contact.new(
  name: null,
  description: null,
  avatar: null,
  is_spammer: null,
  links: null,
  group_names: null,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

