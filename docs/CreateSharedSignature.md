# FrontApi::CreateSharedSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the signature |  |
| **sender_info** | **String** | Sender info of the signature that will appear in the From line of emails sent. | [optional] |
| **body** | **String** | Body of the signature |  |
| **is_visible_for_all_teammate_channels** | **Boolean** | Whether or not the signature is visible in all individual channels for teammates in the given team. | [optional] |
| **is_default** | **Boolean** | If true, the signature will be set as the default signature for the team. | [optional][default to false] |
| **channel_ids** | **Array&lt;String&gt;** | The specific channels this signature is available in. If omitted or null, the signature will be available in all channels the team has access to. Alternatively, you can specify channels using a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateSharedSignature.new(
  name: null,
  sender_info: null,
  body: null,
  is_visible_for_all_teammate_channels: null,
  is_default: null,
  channel_ids: null
)
```
