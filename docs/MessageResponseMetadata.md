# FrontApi::MessageResponseMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intercom_url** | **String** | For &#x60;intercom&#x60; messages only. URL of the Intercom conversation the message is coming from. | [optional] |
| **duration** | **Integer** | For &#x60;truly-call&#x60; messages only. Length of the call in seconds. | [optional] |
| **have_been_answered** | **Boolean** | For &#x60;truly-call&#x60; messages only. Whether or not the call have been answered. | [optional] |
| **external_id** | **String** | For &#x60;tweet&#x60; or &#39;custom&#39; (partner channel token authenticated) messages only. Unique message identifier in the underlying provider (Twitter or Partner). For custom messages, only present for partner channel token authenticated requests. | [optional] |
| **twitter_url** | **String** | For &#x60;tweet&#x60; messages only. URL of the tweet. | [optional] |
| **is_retweet** | **Boolean** | For &#x60;tweet&#x60; messages only. Whether or not the tweet is a retweet. | [optional] |
| **have_been_retweeted** | **Boolean** | For &#x60;tweet&#x60; messages only. Whether or not the tweet have been retweeted. | [optional] |
| **have_been_favorited** | **Boolean** | For &#x60;tweet&#x60; messages only. Whether or not the tweet have been favorited. | [optional] |
| **thread_ref** | **String** | For &#x60;custom&#x60; messages only. Custom reference which is used to thread messages. | [optional] |
| **headers** | **Object** | For &#x60;custom&#x60; messages only. Custom object holding internal information. | [optional] |
| **chat_visitor_url** | **String** | For &#x60;front_chat&#x60; messages only. Source URL from the chat widget when sending a message. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::MessageResponseMetadata.new(
  intercom_url: http://intercom.com,
  duration: 189,
  have_been_answered: false,
  external_id: dkd84992kduo903,
  twitter_url: https://twitter.com,
  is_retweet: true,
  have_been_retweeted: true,
  have_been_favorited: false,
  thread_ref: t0930k9000-394,
  headers: null,
  chat_visitor_url: https://yourCompany.com/products
)
```

