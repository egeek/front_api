# FrontApi::TeamResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**TeamPreviewResponseLinks**](TeamPreviewResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the team | [optional] |
| **name** | **String** | Name of the team | [optional] |
| **inboxes** | [**Array&lt;InboxResponse&gt;**](InboxResponse.md) | List of the inboxes in the team | [optional] |
| **members** | [**Array&lt;TeammateResponse&gt;**](TeammateResponse.md) | List of the teammates that have access to the team | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::TeamResponse.new(
  _links: null,
  id: tim_aqsa,
  name: Stanley&#39;s crossword puzzle team,
  inboxes: null,
  members: null
)
```

