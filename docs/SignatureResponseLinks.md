# FrontApi::SignatureResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | Link to resource | [optional] |
| **related** | [**SignatureResponseLinksRelated**](SignatureResponseLinksRelated.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::SignatureResponseLinks.new(
  _self: https://yourCompany.api.frontapp.com/signatures/sig_6rrv2,
  related: null
)
```

