# FrontApi::InboxResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**InboxResponseLinks**](InboxResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier for the inbox | [optional] |
| **name** | **String** | Name of the inbox | [optional] |
| **is_private** | **Boolean** | Whether or not the inbox is individual | [optional] |
| **is_public** | **Boolean** | Whether or not the inbox is available to all members of a team by default | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::InboxResponse.new(
  _links: null,
  id: inb_1ix6,
  name: The Dundies,
  is_private: false,
  is_public: true,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

