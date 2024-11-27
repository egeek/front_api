# FrontApi::SignatureResponseLinksRelated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | Link to signature&#39;s owner (either a team or teammate) | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::SignatureResponseLinksRelated.new(
  owner: https://yourCompany.api.frontapp.com/teams/tim_k30
)
```

