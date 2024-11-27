# FrontApi::IdentityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**IdentityResponseLinks**](IdentityResponseLinks.md) |  | [optional] |
| **id** | **Integer** | Unique ID of company | [optional] |
| **name** | **String** | Name of company | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::IdentityResponse.new(
  _links: null,
  id: null,
  name: Dunder Mifflin Paper Company, Inc.
)
```

