# FrontApi::RecipientResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**RecipientResponseLinks**](RecipientResponseLinks.md) |  | [optional] |
| **name** | **String** | Name of the recipient. | [optional] |
| **handle** | **String** | Handle of the contact. Can be any string used to uniquely identify the contact | [optional] |
| **role** | **String** | Role of the recipient | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::RecipientResponse.new(
  _links: null,
  name: Phyllis Lapin-Vance,
  handle: purpleboss@limitlesspaper.com,
  role: cc
)
```

