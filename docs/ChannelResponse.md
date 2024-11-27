# FrontApi::ChannelResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ChannelResponseLinks**](ChannelResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier for the channel | [optional] |
| **name** | **String** | The name of the channel | [optional] |
| **address** | **String** | Address receiving the messages | [optional] |
| **types** | **String** | Type of the channel | [optional] |
| **send_as** | **String** | Address which appears as the sender for messages sent from Front | [optional] |
| **settings** | [**ChannelResponseSettings**](ChannelResponseSettings.md) |  | [optional] |
| **is_private** | **Boolean** | Whether or not the channel is individual | [optional][default to false] |
| **is_valid** | **Boolean** | Whether or not the channel configuration is valid | [optional][default to false] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ChannelResponse.new(
  _links: null,
  id: cha_1gv4,
  name: Paper Sales Inbox,
  address: sales@dundermifflin.com,
  types: gmail,
  send_as: sales@dundermifflin.com,
  settings: null,
  is_private: false,
  is_valid: true
)
```

