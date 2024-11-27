# FrontApi::ContactResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ContactResponseLinks**](ContactResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the contact | [optional] |
| **name** | **String** | Contact name | [optional] |
| **description** | **String** | Contact description | [optional] |
| **avatar_url** | **String** | URL of the contact&#39;s avatar | [optional] |
| **is_spammer** | **Boolean** | Whether or not the contact is marked as a spammer | [optional] |
| **links** | **Array&lt;String&gt;** | List of all the links of the contact | [optional] |
| **groups** | [**Array&lt;ContactGroupResponses&gt;**](ContactGroupResponses.md) | List of the groups the contact belongs to. | [optional] |
| **handles** | [**Array&lt;ContactHandle&gt;**](ContactHandle.md) | List of the handles and sources with which the contact is reachable. | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |
| **is_private** | **Boolean** | Whether or not the contact is individual | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactResponse.new(
  _links: null,
  id: crd_3cgz4ge,
  name: Dwight Schrute,
  description: Assistant to the regional manager,
  avatar_url: https://yourCompany.api.frontapp.com/contacts/crd_3cgz4ge/avatar-1673436467707,
  is_spammer: false,
  links: null,
  groups: null,
  handles: null,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;},
  is_private: true
)
```

