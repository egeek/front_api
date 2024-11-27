# FrontApi::TeamPreviewResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**TeamPreviewResponseLinks**](TeamPreviewResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the team | [optional] |
| **name** | **String** | Name of the team | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeamPreviewResponse.new(
  _links: null,
  id: tim_aqsa,
  name: Stanley&#39;s crossword puzzle team
)
```

