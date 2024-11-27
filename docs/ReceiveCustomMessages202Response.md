# FrontApi::ReceiveCustomMessages202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the incoming message. Should return &#39;accepted&#39; if successful. | [optional][default to &#39;accepted&#39;] |
| **message_uid** | **String** | Message unique identifier. You can use the message UID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1) for the message ID. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ReceiveCustomMessages202Response.new(
  status: accepted,
  message_uid: 1eab543f84a0785f7b6b8967cck18f4d
)
```

