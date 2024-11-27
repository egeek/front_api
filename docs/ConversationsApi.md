# FrontApi::ConversationsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_conversation_followers**](ConversationsApi.md#add_conversation_followers) | **POST** /conversations/{conversation_id}/followers | Add conversation followers |
| [**add_conversation_link**](ConversationsApi.md#add_conversation_link) | **POST** /conversations/{conversation_id}/links | Add conversation link |
| [**add_conversation_tag**](ConversationsApi.md#add_conversation_tag) | **POST** /conversations/{conversation_id}/tags | Add conversation tag |
| [**create_conversation**](ConversationsApi.md#create_conversation) | **POST** /conversations | Create discussion conversation |
| [**delete_conversation_followers**](ConversationsApi.md#delete_conversation_followers) | **DELETE** /conversations/{conversation_id}/followers | Delete conversation followers |
| [**get_conversation_by_id**](ConversationsApi.md#get_conversation_by_id) | **GET** /conversations/{conversation_id} | Get conversation |
| [**list_conversation_events**](ConversationsApi.md#list_conversation_events) | **GET** /conversations/{conversation_id}/events | List conversation events |
| [**list_conversation_followers**](ConversationsApi.md#list_conversation_followers) | **GET** /conversations/{conversation_id}/followers | List conversation followers |
| [**list_conversation_inboxes**](ConversationsApi.md#list_conversation_inboxes) | **GET** /conversations/{conversation_id}/inboxes | List conversation inboxes |
| [**list_conversation_messages**](ConversationsApi.md#list_conversation_messages) | **GET** /conversations/{conversation_id}/messages | List conversation messages |
| [**list_conversations**](ConversationsApi.md#list_conversations) | **GET** /conversations | List conversations |
| [**remove_conversation_links**](ConversationsApi.md#remove_conversation_links) | **DELETE** /conversations/{conversation_id}/links | Remove conversation links |
| [**remove_conversation_tag**](ConversationsApi.md#remove_conversation_tag) | **DELETE** /conversations/{conversation_id}/tags | Remove conversation tag |
| [**search_conversations**](ConversationsApi.md#search_conversations) | **GET** /conversations/search/{query} | Search conversations |
| [**update_conversation**](ConversationsApi.md#update_conversation) | **PATCH** /conversations/{conversation_id} | Update conversation |
| [**update_conversation_assignee**](ConversationsApi.md#update_conversation_assignee) | **PUT** /conversations/{conversation_id}/assignee | Update conversation assignee |
| [**update_conversation_reminders**](ConversationsApi.md#update_conversation_reminders) | **PATCH** /conversations/{conversation_id}/reminders | Update conversation reminders |


## add_conversation_followers

> add_conversation_followers(conversation_id, opts)

Add conversation followers

Adds teammates to the list of followers of a conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  add_conversation_followers_request: FrontApi::AddConversationFollowersRequest.new({teammate_ids: ['teammate_ids_example']}) # AddConversationFollowersRequest | 
}

begin
  # Add conversation followers
  api_instance.add_conversation_followers(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->add_conversation_followers: #{e}"
end
```

#### Using the add_conversation_followers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_conversation_followers_with_http_info(conversation_id, opts)

```ruby
begin
  # Add conversation followers
  data, status_code, headers = api_instance.add_conversation_followers_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->add_conversation_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **add_conversation_followers_request** | [**AddConversationFollowersRequest**](AddConversationFollowersRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## add_conversation_link

> add_conversation_link(conversation_id, opts)

Add conversation link

Adds one or more links to a conversation

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  add_conversation_link_request: FrontApi::AddConversationLinkRequest.new # AddConversationLinkRequest | 
}

begin
  # Add conversation link
  api_instance.add_conversation_link(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->add_conversation_link: #{e}"
end
```

#### Using the add_conversation_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_conversation_link_with_http_info(conversation_id, opts)

```ruby
begin
  # Add conversation link
  data, status_code, headers = api_instance.add_conversation_link_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->add_conversation_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **add_conversation_link_request** | [**AddConversationLinkRequest**](AddConversationLinkRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## add_conversation_tag

> add_conversation_tag(conversation_id, opts)

Add conversation tag

Adds one or more tags to a conversation

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  tag_ids: FrontApi::TagIds.new({tag_ids: ['tag_ids_example']}) # TagIds | Tag IDs to add
}

begin
  # Add conversation tag
  api_instance.add_conversation_tag(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->add_conversation_tag: #{e}"
end
```

#### Using the add_conversation_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_conversation_tag_with_http_info(conversation_id, opts)

```ruby
begin
  # Add conversation tag
  data, status_code, headers = api_instance.add_conversation_tag_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->add_conversation_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **tag_ids** | [**TagIds**](TagIds.md) | Tag IDs to add | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_conversation

> <ConversationResponse> create_conversation(opts)

Create discussion conversation

Create a new [conversation](https://dev.frontapp.com/reference/conversations#creating-a-new-conversation) that only supports comments (known as discussions in Front). If you want to create a conversation that supports messages, use the [Create message](https://dev.frontapp.com/reference/post_channels-channel-id-messages) endpoint. If you want to add a comment to an existing conversation, use the [Add comment](https://dev.frontapp.com/reference/post_conversations-conversation-id-comments) endpoint.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
opts = {
  create_conversation: FrontApi::CreateConversation.new({type: 'discussion', subject: 'subject_example', comment: FrontApi::CreateConversationComment.new({body: 'body_example'})}) # CreateConversation | 
}

begin
  # Create discussion conversation
  result = api_instance.create_conversation(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->create_conversation: #{e}"
end
```

#### Using the create_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationResponse>, Integer, Hash)> create_conversation_with_http_info(opts)

```ruby
begin
  # Create discussion conversation
  data, status_code, headers = api_instance.create_conversation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->create_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_conversation** | [**CreateConversation**](CreateConversation.md) |  | [optional] |

### Return type

[**ConversationResponse**](ConversationResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_conversation_followers

> delete_conversation_followers(conversation_id, opts)

Delete conversation followers

Removes teammates from the list of followers of a conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  delete_conversation_followers_request: FrontApi::DeleteConversationFollowersRequest.new({teammate_ids: ['teammate_ids_example']}) # DeleteConversationFollowersRequest | 
}

begin
  # Delete conversation followers
  api_instance.delete_conversation_followers(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->delete_conversation_followers: #{e}"
end
```

#### Using the delete_conversation_followers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_conversation_followers_with_http_info(conversation_id, opts)

```ruby
begin
  # Delete conversation followers
  data, status_code, headers = api_instance.delete_conversation_followers_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->delete_conversation_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **delete_conversation_followers_request** | [**DeleteConversationFollowersRequest**](DeleteConversationFollowersRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_conversation_by_id

> <ConversationResponse> get_conversation_by_id(conversation_id)

Get conversation

Fetch a conversation. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID

begin
  # Get conversation
  result = api_instance.get_conversation_by_id(conversation_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->get_conversation_by_id: #{e}"
end
```

#### Using the get_conversation_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationResponse>, Integer, Hash)> get_conversation_by_id_with_http_info(conversation_id)

```ruby
begin
  # Get conversation
  data, status_code, headers = api_instance.get_conversation_by_id_with_http_info(conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->get_conversation_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |

### Return type

[**ConversationResponse**](ConversationResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversation_events

> <ListConversationEvents200Response> list_conversation_events(conversation_id, opts)

List conversation events

List the events that occured for a conversation in reverse chronological order (newest first). The order will respect your company's [bump settings](https://help.front.com/t/y729th/customize-when-conversations-bump-up), which determine when conversations bump to the top.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List conversation events
  result = api_instance.list_conversation_events(conversation_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_events: #{e}"
end
```

#### Using the list_conversation_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationEvents200Response>, Integer, Hash)> list_conversation_events_with_http_info(conversation_id, opts)

```ruby
begin
  # List conversation events
  data, status_code, headers = api_instance.list_conversation_events_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationEvents200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |

### Return type

[**ListConversationEvents200Response**](ListConversationEvents200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversation_followers

> <ListCommentMentions200Response> list_conversation_followers(conversation_id)

List conversation followers

List the teammates following a conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID

begin
  # List conversation followers
  result = api_instance.list_conversation_followers(conversation_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_followers: #{e}"
end
```

#### Using the list_conversation_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommentMentions200Response>, Integer, Hash)> list_conversation_followers_with_http_info(conversation_id)

```ruby
begin
  # List conversation followers
  data, status_code, headers = api_instance.list_conversation_followers_with_http_info(conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommentMentions200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |

### Return type

[**ListCommentMentions200Response**](ListCommentMentions200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversation_inboxes

> <ListConversationInboxes200Response> list_conversation_inboxes(conversation_id)

List conversation inboxes

List the inboxes in which a conversation is listed.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID

begin
  # List conversation inboxes
  result = api_instance.list_conversation_inboxes(conversation_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_inboxes: #{e}"
end
```

#### Using the list_conversation_inboxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationInboxes200Response>, Integer, Hash)> list_conversation_inboxes_with_http_info(conversation_id)

```ruby
begin
  # List conversation inboxes
  data, status_code, headers = api_instance.list_conversation_inboxes_with_http_info(conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationInboxes200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_inboxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |

### Return type

[**ListConversationInboxes200Response**](ListConversationInboxes200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversation_messages

> <ListConversationDrafts200Response> list_conversation_messages(conversation_id, opts)

List conversation messages

List the messages in a conversation in reverse chronological order (newest first).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the messages. Only supports `created_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List conversation messages
  result = api_instance.list_conversation_messages(conversation_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_messages: #{e}"
end
```

#### Using the list_conversation_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationDrafts200Response>, Integer, Hash)> list_conversation_messages_with_http_info(conversation_id, opts)

```ruby
begin
  # List conversation messages
  data, status_code, headers = api_instance.list_conversation_messages_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationDrafts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversation_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the messages. Only supports &#x60;created_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListConversationDrafts200Response**](ListConversationDrafts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversations

> <ListContactConversations200Response> list_conversations(opts)

List conversations

List the conversations in the company in reverse chronological order (most recently updated first). The order will respect your company's [bump settings](https://help.front.com/t/y729th/customize-when-conversations-bump-up), which determine when conversations bump to the top. For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property `statuses`, whose value should be a list of conversation statuses (`assigned`, `unassigned`, `archived`, or `deleted`).
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the conversations. Only supports `date`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List conversations
  result = api_instance.list_conversations(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversations: #{e}"
end
```

#### Using the list_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListContactConversations200Response>, Integer, Hash)> list_conversations_with_http_info(opts)

```ruby
begin
  # List conversations
  data, status_code, headers = api_instance.list_conversations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListContactConversations200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->list_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;statuses&#x60;, whose value should be a list of conversation statuses (&#x60;assigned&#x60;, &#x60;unassigned&#x60;, &#x60;archived&#x60;, or &#x60;deleted&#x60;). | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the conversations. Only supports &#x60;date&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListContactConversations200Response**](ListContactConversations200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_conversation_links

> remove_conversation_links(conversation_id, opts)

Remove conversation links

Removes one or more links to a conversation

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  remove_conversation_links_request: FrontApi::RemoveConversationLinksRequest.new({link_ids: ['link_ids_example']}) # RemoveConversationLinksRequest | 
}

begin
  # Remove conversation links
  api_instance.remove_conversation_links(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->remove_conversation_links: #{e}"
end
```

#### Using the remove_conversation_links_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_conversation_links_with_http_info(conversation_id, opts)

```ruby
begin
  # Remove conversation links
  data, status_code, headers = api_instance.remove_conversation_links_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->remove_conversation_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **remove_conversation_links_request** | [**RemoveConversationLinksRequest**](RemoveConversationLinksRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## remove_conversation_tag

> remove_conversation_tag(conversation_id, opts)

Remove conversation tag

Removes one or more tags to a conversation

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  tag_ids: FrontApi::TagIds.new({tag_ids: ['tag_ids_example']}) # TagIds | Tag IDs to remove
}

begin
  # Remove conversation tag
  api_instance.remove_conversation_tag(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->remove_conversation_tag: #{e}"
end
```

#### Using the remove_conversation_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_conversation_tag_with_http_info(conversation_id, opts)

```ruby
begin
  # Remove conversation tag
  data, status_code, headers = api_instance.remove_conversation_tag_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->remove_conversation_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **tag_ids** | [**TagIds**](TagIds.md) | Tag IDs to remove | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## search_conversations

> <SearchConversations200Response> search_conversations(query, opts)

Search conversations

Search for conversations. Response will include a count of total matches and an array of conversations in descending order by last activity. See the [search syntax documentation](https://dev.frontapp.com/docs/search-1) for usage examples. **Note:** This endpoint is subject to [proportional rate limiting](https://dev.frontapp.com/docs/rate-limiting#additional-proportional-limiting) at 40% of your company's rate limit. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
query = 'query_example' # String | Search query string. See [Search](https://dev.frontapp.com/docs/search-1) topic for usage details.
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # Search conversations
  result = api_instance.search_conversations(query, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->search_conversations: #{e}"
end
```

#### Using the search_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchConversations200Response>, Integer, Hash)> search_conversations_with_http_info(query, opts)

```ruby
begin
  # Search conversations
  data, status_code, headers = api_instance.search_conversations_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchConversations200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->search_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | Search query string. See [Search](https://dev.frontapp.com/docs/search-1) topic for usage details. | [default to &#39;inbox:inb_123 tag:tag_345&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |

### Return type

[**SearchConversations200Response**](SearchConversations200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_conversation

> update_conversation(conversation_id, opts)

Update conversation

Update a conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  update_conversation: FrontApi::UpdateConversation.new # UpdateConversation | 
}

begin
  # Update conversation
  api_instance.update_conversation(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->update_conversation: #{e}"
end
```

#### Using the update_conversation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_conversation_with_http_info(conversation_id, opts)

```ruby
begin
  # Update conversation
  data, status_code, headers = api_instance.update_conversation_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->update_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **update_conversation** | [**UpdateConversation**](UpdateConversation.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_conversation_assignee

> update_conversation_assignee(conversation_id, opts)

Update conversation assignee

Assign or unassign a conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  update_conversation_assignee: FrontApi::UpdateConversationAssignee.new({assignee_id: 'assignee_id_example'}) # UpdateConversationAssignee | 
}

begin
  # Update conversation assignee
  api_instance.update_conversation_assignee(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->update_conversation_assignee: #{e}"
end
```

#### Using the update_conversation_assignee_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_conversation_assignee_with_http_info(conversation_id, opts)

```ruby
begin
  # Update conversation assignee
  data, status_code, headers = api_instance.update_conversation_assignee_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->update_conversation_assignee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **update_conversation_assignee** | [**UpdateConversationAssignee**](UpdateConversationAssignee.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_conversation_reminders

> update_conversation_reminders(conversation_id, opts)

Update conversation reminders

Snooze or unsnooze a conversation for the provided user. For private conversations, reminders can only be created and edited through the API for teammates that own the conversation. For shared conversations, reminders created and edited through the API are shared for all teammates within the shared inbox(es) that the conversation belongs to. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ConversationsApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
opts = {
  update_conversation_reminders: FrontApi::UpdateConversationReminders.new({teammate_id: 'teammate_id_example', scheduled_at: 3.56}) # UpdateConversationReminders | 
}

begin
  # Update conversation reminders
  api_instance.update_conversation_reminders(conversation_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->update_conversation_reminders: #{e}"
end
```

#### Using the update_conversation_reminders_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_conversation_reminders_with_http_info(conversation_id, opts)

```ruby
begin
  # Update conversation reminders
  data, status_code, headers = api_instance.update_conversation_reminders_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ConversationsApi->update_conversation_reminders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID | [default to &#39;cnv_123&#39;] |
| **update_conversation_reminders** | [**UpdateConversationReminders**](UpdateConversationReminders.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

