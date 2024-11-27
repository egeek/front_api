# FrontApi::UpdateChannelSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **undo_send_time** | **Integer** | The time (measured in seconds) that users have to undo a send operation in the channel. | [optional] |
| **all_teammates_can_reply** | **Boolean** | Whether teammates without inbox access can reply on this channel. Only allowed for shared channels. | [optional] |
| **webhook_url** | **String** | The webhook URL outbound messages should be sent to. Only allowed for \&quot;custom\&quot; type channels. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateChannelSettings.new(
  undo_send_time: null,
  all_teammates_can_reply: null,
  webhook_url: null
)
```

