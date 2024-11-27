# FrontApi::CreateChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the channel | [optional] |
| **settings** | [**CreateChannelSettings**](CreateChannelSettings.md) |  | [optional] |
| **type** | **String** | Type of the channel |  |
| **send_as** | **String** | Sending address of your channel. Required for SMTP channels. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateChannel.new(
  name: null,
  settings: null,
  type: null,
  send_as: null
)
```

