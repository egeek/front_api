# FrontApi::CommentsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_comment**](CommentsApi.md#add_comment) | **POST** /conversations/{conversation_id}/comments | Add comment |
| [**get_comment**](CommentsApi.md#get_comment) | **GET** /comments/{comment_id} | Get comment |
| [**list_comment_mentions**](CommentsApi.md#list_comment_mentions) | **GET** /comments/{comment_id}/mentions | List comment mentions |
| [**list_conversation_comments**](CommentsApi.md#list_conversation_comments) | **GET** /conversations/{conversation_id}/comments | List conversation comments |
| [**update_comment**](CommentsApi.md#update_comment) | **PATCH** /comments/{comment_id}/ | Update comment |


## add_comment

> <CommentResponse> add_comment(conversation_id, opts)

Add comment

Add a comment to a [conversation](https://dev.frontapp.com/reference/conversations). If you want to create a new comment-only conversation, use the [Create discussion conversation](https://dev.frontapp.com/reference/create-conversation) endpoint.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CommentsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  create_comment: FrontApi::CreateComment.new({body: 'body_example'}) # CreateComment | 
}

begin
  # Add comment
  result = api_instance.add_comment(conversation_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->add_comment: #{e}"
end
```

#### Using the add_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommentResponse>, Integer, Hash)> add_comment_with_http_info(conversation_id, opts)

```ruby
begin
  # Add comment
  data, status_code, headers = api_instance.add_comment_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommentResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->add_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **create_comment** | [**CreateComment**](CreateComment.md) |  | [optional] |

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_comment

> <CommentResponse> get_comment(comment_id)

Get comment

Fetches a comment.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CommentsApi.new
comment_id = 'comment_id_example' # String | The Comment ID

begin
  # Get comment
  result = api_instance.get_comment(comment_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->get_comment: #{e}"
end
```

#### Using the get_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommentResponse>, Integer, Hash)> get_comment_with_http_info(comment_id)

```ruby
begin
  # Get comment
  data, status_code, headers = api_instance.get_comment_with_http_info(comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommentResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->get_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **String** | The Comment ID | [default to &#39;com_123&#39;] |

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_comment_mentions

> <ListCommentMentions200Response> list_comment_mentions(comment_id)

List comment mentions

List the teammates mentioned in a comment.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CommentsApi.new
comment_id = 'comment_id_example' # String | The Comment ID

begin
  # List comment mentions
  result = api_instance.list_comment_mentions(comment_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->list_comment_mentions: #{e}"
end
```

#### Using the list_comment_mentions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommentMentions200Response>, Integer, Hash)> list_comment_mentions_with_http_info(comment_id)

```ruby
begin
  # List comment mentions
  data, status_code, headers = api_instance.list_comment_mentions_with_http_info(comment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommentMentions200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->list_comment_mentions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **String** | The Comment ID | [default to &#39;com_123&#39;] |

### Return type

[**ListCommentMentions200Response**](ListCommentMentions200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversation_comments

> <ListConversationComments200Response> list_conversation_comments(conversation_id)

List conversation comments

List the comments in a conversation in reverse chronological order (newest first).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CommentsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID

begin
  # List conversation comments
  result = api_instance.list_conversation_comments(conversation_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->list_conversation_comments: #{e}"
end
```

#### Using the list_conversation_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationComments200Response>, Integer, Hash)> list_conversation_comments_with_http_info(conversation_id)

```ruby
begin
  # List conversation comments
  data, status_code, headers = api_instance.list_conversation_comments_with_http_info(conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationComments200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->list_conversation_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |

### Return type

[**ListConversationComments200Response**](ListConversationComments200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_comment

> <CommentResponse> update_comment(comment_id, opts)

Update comment

Update a comment in a [conversation](https://dev.frontapp.com/reference/conversations).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CommentsApi.new
comment_id = 'comment_id_example' # String | The Comment ID
opts = {
  update_comment: FrontApi::UpdateComment.new # UpdateComment | 
}

begin
  # Update comment
  result = api_instance.update_comment(comment_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->update_comment: #{e}"
end
```

#### Using the update_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommentResponse>, Integer, Hash)> update_comment_with_http_info(comment_id, opts)

```ruby
begin
  # Update comment
  data, status_code, headers = api_instance.update_comment_with_http_info(comment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommentResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling CommentsApi->update_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **String** | The Comment ID | [default to &#39;com_123&#39;] |
| **update_comment** | [**UpdateComment**](UpdateComment.md) |  | [optional] |

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

