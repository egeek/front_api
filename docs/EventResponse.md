# FrontApi::EventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**EventResponseLinks**](EventResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the event | [optional] |
| **type** | **String** | Type of event | [optional] |
| **emitted_at** | **Float** | Date at which the event has been emitted | [optional] |
| **source** | [**EventResponseSource**](EventResponseSource.md) |  | [optional] |
| **target** | [**EventResponseTarget**](EventResponseTarget.md) |  | [optional] |
| **conversation** | [**ConversationResponse**](ConversationResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::EventResponse.new(
  _links: null,
  id: evt_4ckcra8e,
  type: inbound,
  emitted_at: 1703102616,
  source: null,
  target: null,
  conversation: null
)
```

