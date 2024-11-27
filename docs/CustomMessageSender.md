# FrontApi::CustomMessageSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | ID of the contact in Front corresponding to the sender | [optional] |
| **name** | **String** | Name of the sender | [optional] |
| **handle** | **String** | Handle of the sender. It can be any string used to uniquely identify the sender. **Important:** When sending a phone number, include a country code preceded by a plus (+) sign. For example, +33 for France. If you do not send a country code or include a plus sign, Front will normalize your phone number to the USA (+1). |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::CustomMessageSender.new(
  contact_id: null,
  name: null,
  handle: null
)
```

