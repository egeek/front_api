# FrontApi::SignatureResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**SignatureResponseLinks**](SignatureResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the signature | [optional] |
| **name** | **String** | Name of the signature | [optional] |
| **body** | **String** | Body of the signature | [optional] |
| **sender_info** | **String** | Sender info of the signature | [optional] |
| **is_visible_for_all_teammate_channels** | **Boolean** | Whether or not the signature is available in teammate channels. | [optional] |
| **is_default** | **Boolean** | Whether the signature is the default signature for the team or teammate. | [optional] |
| **is_private** | **Boolean** | Whether the signature is private to the teammate. | [optional] |
| **channel_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::SignatureResponse.new(
  _links: null,
  id: sig_6rrv2,
  name: Finer Things Club signature,
  body: &lt;div&gt;—&lt;br /&gt;{{user.name}}&lt;br /&gt;No paper, no plastic, and no work talk allowed&lt;br /&gt;&lt;/div&gt;,
  sender_info: {&quot;[object Object]&quot;:null},
  is_visible_for_all_teammate_channels: true,
  is_default: false,
  is_private: true,
  channel_ids: null
)
```

