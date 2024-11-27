# FrontApi::DeleteContactHandle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** | Handle used to reach the contact. |  |
| **source** | **String** | Source of the handle. Can be &#x60;email&#x60;, &#x60;phone&#x60;, &#x60;twitter&#x60;, &#x60;facebook&#x60;, &#x60;intercom&#x60;, &#x60;front_chat&#x60;, or &#x60;custom&#x60;. |  |
| **force** | **Boolean** | Force the deletetion of the contact if the handle is the last one | [optional][default to false] |

## Example

```ruby
require 'front_api'

instance = FrontApi::DeleteContactHandle.new(
  handle: dwight@limitlesspaper.com,
  source: email,
  force: null
)
```

