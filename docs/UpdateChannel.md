# FrontApi::UpdateChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the channel | [optional] |
| **inbox_id** | **String** | ID of the inbox to move this channel to. Will also move corresponding conversations. | [optional] |
| **settings** | [**UpdateChannelSettings**](UpdateChannelSettings.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateChannel.new(
  name: Your channel name,
  inbox_id: null,
  settings: null
)
```

