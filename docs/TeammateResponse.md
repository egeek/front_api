# FrontApi::TeammateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**TeammateResponseLinks**](TeammateResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the teammate | [optional] |
| **email** | **String** | Email address of the teammate | [optional] |
| **username** | **String** | Username of the teammate (used for \&quot;@\&quot; mentions) | [optional] |
| **first_name** | **String** | First name of the teammate | [optional] |
| **last_name** | **String** | Last name of the teammate | [optional] |
| **is_admin** | **Boolean** | Whether or not the teammate is an admin in your company | [optional] |
| **is_available** | **Boolean** | Whether or not the teammate is available | [optional] |
| **is_blocked** | **Boolean** | Whether or not the teammate account has been blocked | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeammateResponse.new(
  _links: null,
  id: tea_6r55a,
  email: michael.scott@dundermifflin.com,
  username: PrisonMike,
  first_name: Michael,
  last_name: Scott,
  is_admin: true,
  is_available: false,
  is_blocked: false,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

