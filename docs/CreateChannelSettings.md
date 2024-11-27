# FrontApi::CreateChannelSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **undo_send_time** | **Integer** | The time (measured in seconds) that users have to undo a send operation in the channel. | [optional] |
| **all_teammates_can_reply** | **Boolean** | Whether teammates without inbox access can reply on this channel. Only allowed for shared channels. | [optional] |
| **webhook_url** | **String** | The webhook URL outbound messages should be sent to. Only allowed for \&quot;custom\&quot; type channels. | [optional] |
| **sid** | **String** | The SID of the Twilio channel. Only allowed for \&quot;twilio\&quot; type channels. | [optional] |
| **auth_token** | **String** | The auth token for the Twilio account. Only allowed for \&quot;twilio\&quot; type channels. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateChannelSettings.new(
  undo_send_time: null,
  all_teammates_can_reply: null,
  webhook_url: null,
  sid: null,
  auth_token: null
)
```

