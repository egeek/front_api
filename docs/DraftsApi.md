# FrontApi::DraftsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_draft**](DraftsApi.md#create_draft) | **POST** /channels/{channel_id}/drafts | Create draft |
| [**create_draft_reply**](DraftsApi.md#create_draft_reply) | **POST** /conversations/{conversation_id}/drafts | Create draft reply |
| [**delete_draft**](DraftsApi.md#delete_draft) | **DELETE** /drafts/{draft_id} | Delete draft |
| [**edit_draft**](DraftsApi.md#edit_draft) | **PATCH** /drafts/{message_id}/ | Edit draft |
| [**list_conversation_drafts**](DraftsApi.md#list_conversation_drafts) | **GET** /conversations/{conversation_id}/drafts | List conversation drafts |


## create_draft

> <MessageResponse> create_draft(channel_id, opts)

Create draft

Create a draft message which is the first message of a new [conversation](https://dev.frontapp.com/reference/conversations).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::DraftsApi.new
channel_id = 'channel_id_example' # String | The channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_draft: FrontApi::CreateDraft.new({author_id: 'author_id_example', body: 'body_example'}) # CreateDraft | 
}

begin
  # Create draft
  result = api_instance.create_draft(channel_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->create_draft: #{e}"
end
```

#### Using the create_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> create_draft_with_http_info(channel_id, opts)

```ruby
begin
  # Create draft
  data, status_code, headers = api_instance.create_draft_with_http_info(channel_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->create_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;cha_123&#39;] |
| **create_draft** | [**CreateDraft**](CreateDraft.md) |  | [optional] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_draft_reply

> <MessageResponse> create_draft_reply(conversation_id, opts)

Create draft reply

Create a new draft as a reply to the last message in the conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::DraftsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  reply_draft: FrontApi::ReplyDraft.new({author_id: 'author_id_example', body: 'body_example', channel_id: 'channel_id_example'}) # ReplyDraft | 
}

begin
  # Create draft reply
  result = api_instance.create_draft_reply(conversation_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->create_draft_reply: #{e}"
end
```

#### Using the create_draft_reply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> create_draft_reply_with_http_info(conversation_id, opts)

```ruby
begin
  # Create draft reply
  data, status_code, headers = api_instance.create_draft_reply_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->create_draft_reply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **reply_draft** | [**ReplyDraft**](ReplyDraft.md) |  | [optional] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_draft

> delete_draft(draft_id, opts)

Delete draft

Delete a draft message.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::DraftsApi.new
draft_id = 'draft_id_example' # String | The draft ID
opts = {
  delete_draft: FrontApi::DeleteDraft.new({version: 'version_example'}) # DeleteDraft | 
}

begin
  # Delete draft
  api_instance.delete_draft(draft_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->delete_draft: #{e}"
end
```

#### Using the delete_draft_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_draft_with_http_info(draft_id, opts)

```ruby
begin
  # Delete draft
  data, status_code, headers = api_instance.delete_draft_with_http_info(draft_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->delete_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft_id** | **String** | The draft ID | [default to &#39;msg_123&#39;] |
| **delete_draft** | [**DeleteDraft**](DeleteDraft.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## edit_draft

> <MessageResponse> edit_draft(message_id, opts)

Edit draft

Edit a draft message.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::DraftsApi.new
message_id = 'message_id_example' # String | The draft ID
opts = {
  edit_draft: FrontApi::EditDraft.new({author_id: 'author_id_example', body: 'body_example', channel_id: 'channel_id_example'}) # EditDraft | 
}

begin
  # Edit draft
  result = api_instance.edit_draft(message_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->edit_draft: #{e}"
end
```

#### Using the edit_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> edit_draft_with_http_info(message_id, opts)

```ruby
begin
  # Edit draft
  data, status_code, headers = api_instance.edit_draft_with_http_info(message_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->edit_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | The draft ID | [default to &#39;msg_123&#39;] |
| **edit_draft** | [**EditDraft**](EditDraft.md) |  | [optional] |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_conversation_drafts

> <ListConversationDrafts200Response> list_conversation_drafts(conversation_id)

List conversation drafts

List the drafts in a conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::DraftsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID

begin
  # List conversation drafts
  result = api_instance.list_conversation_drafts(conversation_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->list_conversation_drafts: #{e}"
end
```

#### Using the list_conversation_drafts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationDrafts200Response>, Integer, Hash)> list_conversation_drafts_with_http_info(conversation_id)

```ruby
begin
  # List conversation drafts
  data, status_code, headers = api_instance.list_conversation_drafts_with_http_info(conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationDrafts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling DraftsApi->list_conversation_drafts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |

### Return type

[**ListConversationDrafts200Response**](ListConversationDrafts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

