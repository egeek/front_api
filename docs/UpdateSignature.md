# FrontApi::UpdateSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the signature | [optional] |
| **sender_info** | **String** | Sender info of the signature that will appear in the From line of emails sent. | [optional] |
| **body** | **String** | Body of the signature | [optional] |
| **is_visible_for_all_teammate_channels** | **Boolean** | Whether or not the signature is visible in all individual channels for teammates in the given team. Can only be set for shared signatures. | [optional] |
| **is_default** | **Boolean** | If true, the signature will be set as the default signature for the team or teammate. | [optional][default to false] |
| **channel_ids** | **Array&lt;String&gt;** | The specific shared channels this signature if available in. If null, then it will be available in all channels. If unspecified, will retain previous value. Alternatively, you can specify channels using a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateSignature.new(
  name: null,
  sender_info: null,
  body: null,
  is_visible_for_all_teammate_channels: null,
  is_default: null,
  channel_ids: null
)
```

