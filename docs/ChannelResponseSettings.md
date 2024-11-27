# FrontApi::ChannelResponseSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **undo_send_time** | **Integer** | The time (measured in seconds) that users have to undo a send operation in the channel. | [optional] |
| **all_teammates_can_reply** | **Boolean** | Whether teammates without inbox access can reply on this channel. Only present for shared channels; omitted for private channels. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ChannelResponseSettings.new(
  undo_send_time: 15,
  all_teammates_can_reply: false
)
```

