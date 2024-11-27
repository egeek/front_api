# FrontApi::AccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**AccountResponseLinks**](AccountResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the account | [optional] |
| **name** | **String** | Account name | [optional] |
| **logo_url** | **String** | URL of the Account&#39;s logo | [optional] |
| **description** | **String** | Account Description | [optional] |
| **domains** | **Array&lt;String&gt;** | List of domains associated to the Account | [optional] |
| **external_id** | **String** | ID of the Account in an External system, such as your backoffice system or CRM | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |
| **created_at** | **Float** | Timestamp when the account was created | [optional] |
| **updated_at** | **Float** | Timestamp when the account was updated | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::AccountResponse.new(
  _links: null,
  id: acc_76,
  name: Dunder Mifflin, Inc.,
  logo_url: https://yourCompany.api.frontapp.com/accounts/acc_aq/logo-1654309308278,
  description: Limitless Paper in a Paperless World,
  domains: null,
  external_id: 8739674733,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;},
  created_at: 1622672452.363,
  updated_at: 1654309308.278
)
```

