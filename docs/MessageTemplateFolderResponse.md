# FrontApi::MessageTemplateFolderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**MessageTemplateFolderResponseLinks**](MessageTemplateFolderResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the message template folder | [optional] |
| **name** | **String** | Name of the message template folder | [optional] |
| **created_at** | **Float** | Timestamp at which the message template folder was created. | [optional] |
| **updated_at** | **Float** | Timestamp at which the message template folder was updated. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageTemplateFolderResponse.new(
  _links: null,
  id: rsf_g2,
  name: Complaints to Toby (or about Toby),
  created_at: 1680300342.904,
  updated_at: 1688668654.501
)
```

