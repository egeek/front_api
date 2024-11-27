# FrontApi::LinkResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**LinkResponseLinks**](LinkResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the link | [optional] |
| **name** | **String** | Display name of the link | [optional] |
| **type** | **String** | Type of the link. Typically associated with the underlying link provider (if known) | [optional] |
| **external_url** | **String** | Underlying identifying external URL of the link | [optional] |
| **custom_fields** | **Object** | An object whose key is the &#x60;name&#x60; property defined for the custom field in the Front UI. The value of the key must use the same &#x60;type&#x60; specified for the custom field, as described in https://dev.frontapp.com/reference/custom-fields | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::LinkResponse.new(
  _links: null,
  id: top_b2wpa,
  name: JIRA-SCRAN-4567,
  type: app_2f76b9ac738de158,
  external_url: https://dundermifflin.atlassian.net/browse/PB-SCRAN-4567,
  custom_fields: {&quot;city&quot;:&quot;London, UK&quot;,&quot;isVIP&quot;:true,&quot;renewal_date&quot;:1525417200,&quot;sla_time&quot;:90,&quot;owner&quot;:&quot;leela@planet-express.com&quot;,&quot;replyTo&quot;:&quot;inb_55c8c149&quot;,&quot;Job Title&quot;:&quot;firefighter&quot;}
)
```

