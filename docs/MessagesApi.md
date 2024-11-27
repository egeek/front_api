# FrontApi::MessagesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_message**](MessagesApi.md#create_message) | **POST** /channels/{channel_id}/messages | Create message |
| [**create_message_reply**](MessagesApi.md#create_message_reply) | **POST** /conversations/{conversation_id}/messages | Create message reply |
| [**get_message**](MessagesApi.md#get_message) | **GET** /messages/{message_id} | Get message |
| [**get_message_seen_status**](MessagesApi.md#get_message_seen_status) | **GET** /messages/{message_id}/seen | Get message seen status |
| [**import_inbox_message**](MessagesApi.md#import_inbox_message) | **POST** /inboxes/{inbox_id}/imported_messages | Import message |
| [**mark_message_seen**](MessagesApi.md#mark_message_seen) | **POST** /messages/{message_id}/seen | Mark message seen |
| [**receive_custom_messages**](MessagesApi.md#receive_custom_messages) | **POST** /channels/{channel_id}/incoming_messages | Receive custom messages |


## create_message

> <MessageResponse> create_message(channel_id, opts)

Create message

Send a new message from a channel. This is one of the ways to create a new [conversation](https://dev.frontapp.com/reference/conversations#creating-a-new-conversation). The new conversation will support both messages and comments (discussions).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessagesApi.new
channel_id = 'channel_id_example' # String | The sending channel ID. Alternatively, you can supply the sending channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  outbound_message: FrontApi::OutboundMessage.new({to: ['to_example'], body: 'body_example'}) # OutboundMessage | 
}

begin
  # Create message
  result = api_instance.create_message(channel_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->create_message: #{e}"
end
```

#### Using the create_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> create_message_with_http_info(channel_id, opts)

```ruby
begin
  # Create message
  data, status_code, headers = api_instance.create_message_with_http_info(channel_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->create_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The sending channel ID. Alternatively, you can supply the sending channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;cha_123&#39;] |
| **outbound_message** | [**OutboundMessage**](OutboundMessage.md) |  | [optional] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_message_reply

> <MessageResponse> create_message_reply(conversation_id, opts)

Create message reply

Reply to a conversation by sending a message and appending it to the conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  outbound_reply_message: FrontApi::OutboundReplyMessage.new({body: 'body_example'}) # OutboundReplyMessage | 
}

begin
  # Create message reply
  result = api_instance.create_message_reply(conversation_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->create_message_reply: #{e}"
end
```

#### Using the create_message_reply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> create_message_reply_with_http_info(conversation_id, opts)

```ruby
begin
  # Create message reply
  data, status_code, headers = api_instance.create_message_reply_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->create_message_reply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **outbound_reply_message** | [**OutboundReplyMessage**](OutboundReplyMessage.md) |  | [optional] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_message

> <MessageResponse> get_message(message_id)

Get message

Fetch a message.  > ℹ️ The HTTP Header `Accept` can be used to request the message in a different format. > By default, Front will return the documented JSON response. By requesting `message/rfc822`, the response will contain the message in the EML format (for email messages only). 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessagesApi.new
message_id = 'message_id_example' # String | The message ID

begin
  # Get message
  result = api_instance.get_message(message_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->get_message: #{e}"
end
```

#### Using the get_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> get_message_with_http_info(message_id)

```ruby
begin
  # Get message
  data, status_code, headers = api_instance.get_message_with_http_info(message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->get_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | The message ID | [default to &#39;msg_123&#39;] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_message_seen_status

> <GetMessageSeenStatus200Response> get_message_seen_status(message_id)

Get message seen status

Get the seen receipts for the given message. If no seen-by information is available, there will be a single entry for the first time the message was seen by any recipient. If seen-by information is available, there will be an entry for each recipient who has seen the message.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessagesApi.new
message_id = 'message_id_example' # String | The message ID

begin
  # Get message seen status
  result = api_instance.get_message_seen_status(message_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->get_message_seen_status: #{e}"
end
```

#### Using the get_message_seen_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessageSeenStatus200Response>, Integer, Hash)> get_message_seen_status_with_http_info(message_id)

```ruby
begin
  # Get message seen status
  data, status_code, headers = api_instance.get_message_seen_status_with_http_info(message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessageSeenStatus200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->get_message_seen_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | The message ID | [default to &#39;msg_123&#39;] |

### Return type

[**GetMessageSeenStatus200Response**](GetMessageSeenStatus200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_inbox_message

> <ReceiveCustomMessages202Response> import_inbox_message(inbox_id, opts)

Import message

Import a new message in an inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessagesApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID
opts = {
  import_message: FrontApi::ImportMessage.new({sender: FrontApi::ImportMessageSender.new({handle: 'handle_example'}), to: ['to_example'], body: 'body_example', external_id: 'external_id_example', created_at: 37, metadata: FrontApi::ImportMessageMetadata.new({is_inbound: false})}) # ImportMessage | 
}

begin
  # Import message
  result = api_instance.import_inbox_message(inbox_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->import_inbox_message: #{e}"
end
```

#### Using the import_inbox_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReceiveCustomMessages202Response>, Integer, Hash)> import_inbox_message_with_http_info(inbox_id, opts)

```ruby
begin
  # Import message
  data, status_code, headers = api_instance.import_inbox_message_with_http_info(inbox_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReceiveCustomMessages202Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->import_inbox_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |
| **import_message** | [**ImportMessage**](ImportMessage.md) |  | [optional] |

### Return type

[**ReceiveCustomMessages202Response**](ReceiveCustomMessages202Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## mark_message_seen

> mark_message_seen(message_id, opts)

Mark message seen

Mark an outbound message from Front as seen. Note, the message seen route should only be called in response to an actual end-user's message-seen action. In accordance with this behavior, the route is rate limited to 10 requests per hour. The request body should send an empty object.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessagesApi.new
message_id = 'message_id_example' # String | The message ID
opts = {
  body: { ... } # Object | 
}

begin
  # Mark message seen
  api_instance.mark_message_seen(message_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->mark_message_seen: #{e}"
end
```

#### Using the mark_message_seen_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_message_seen_with_http_info(message_id, opts)

```ruby
begin
  # Mark message seen
  data, status_code, headers = api_instance.mark_message_seen_with_http_info(message_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->mark_message_seen_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | The message ID | [default to &#39;msg_123&#39;] |
| **body** | **Object** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## receive_custom_messages

> <ReceiveCustomMessages202Response> receive_custom_messages(channel_id, opts)

Receive custom messages

Receive a custom message in Front. This endpoint is available for custom channels **ONLY**.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessagesApi.new
channel_id = 'channel_id_example' # String | The channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  custom_message: FrontApi::CustomMessage.new({sender: FrontApi::CustomMessageSender.new({handle: 'handle_example'}), body: 'body_example'}) # CustomMessage | 
}

begin
  # Receive custom messages
  result = api_instance.receive_custom_messages(channel_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->receive_custom_messages: #{e}"
end
```

#### Using the receive_custom_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReceiveCustomMessages202Response>, Integer, Hash)> receive_custom_messages_with_http_info(channel_id, opts)

```ruby
begin
  # Receive custom messages
  data, status_code, headers = api_instance.receive_custom_messages_with_http_info(channel_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReceiveCustomMessages202Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessagesApi->receive_custom_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;cha_123&#39;] |
| **custom_message** | [**CustomMessage**](CustomMessage.md) |  | [optional] |

### Return type

[**ReceiveCustomMessages202Response**](ReceiveCustomMessages202Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

