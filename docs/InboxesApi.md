# FrontApi::InboxesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_inbox_access**](InboxesApi.md#add_inbox_access) | **POST** /inboxes/{inbox_id}/teammates | Add inbox access |
| [**create_inbox**](InboxesApi.md#create_inbox) | **POST** /inboxes | Create inbox |
| [**create_team_inbox**](InboxesApi.md#create_team_inbox) | **POST** /teams/{team_id}/inboxes | Create team inbox |
| [**get_inbox**](InboxesApi.md#get_inbox) | **GET** /inboxes/{inbox_id} | Get inbox |
| [**list_inbox_access**](InboxesApi.md#list_inbox_access) | **GET** /inboxes/{inbox_id}/teammates | List inbox access |
| [**list_inbox_channels**](InboxesApi.md#list_inbox_channels) | **GET** /inboxes/{inbox_id}/channels | List inbox channels |
| [**list_inbox_conversations**](InboxesApi.md#list_inbox_conversations) | **GET** /inboxes/{inbox_id}/conversations | List inbox conversations |
| [**list_inboxes**](InboxesApi.md#list_inboxes) | **GET** /inboxes | List inboxes |
| [**list_team_inboxes**](InboxesApi.md#list_team_inboxes) | **GET** /teams/{team_id}/inboxes | List team inboxes |
| [**removes_inbox_access**](InboxesApi.md#removes_inbox_access) | **DELETE** /inboxes/{inbox_id}/teammates | Removes inbox access |


## add_inbox_access

> add_inbox_access(inbox_id, opts)

Add inbox access

Give access to one or more teammates to an inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to add. Alternatively, you can supply teammate emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
}

begin
  # Add inbox access
  api_instance.add_inbox_access(inbox_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->add_inbox_access: #{e}"
end
```

#### Using the add_inbox_access_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_inbox_access_with_http_info(inbox_id, opts)

```ruby
begin
  # Add inbox access
  data, status_code, headers = api_instance.add_inbox_access_with_http_info(inbox_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->add_inbox_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to add. Alternatively, you can supply teammate emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_inbox

> create_inbox(opts)

Create inbox

Create an inbox in the default team (workspace). The default team will be the oldest team created that still exists at the time of the request.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
opts = {
  create_inbox: FrontApi::CreateInbox.new({name: 'name_example'}) # CreateInbox | Inbox details
}

begin
  # Create inbox
  api_instance.create_inbox(opts)
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->create_inbox: #{e}"
end
```

#### Using the create_inbox_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_inbox_with_http_info(opts)

```ruby
begin
  # Create inbox
  data, status_code, headers = api_instance.create_inbox_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->create_inbox_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_inbox** | [**CreateInbox**](CreateInbox.md) | Inbox details | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_team_inbox

> create_team_inbox(team_id, opts)

Create team inbox

Create an inbox for a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  create_inbox: FrontApi::CreateInbox.new({name: 'name_example'}) # CreateInbox | Inbox details
}

begin
  # Create team inbox
  api_instance.create_team_inbox(team_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->create_team_inbox: #{e}"
end
```

#### Using the create_team_inbox_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_team_inbox_with_http_info(team_id, opts)

```ruby
begin
  # Create team inbox
  data, status_code, headers = api_instance.create_team_inbox_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->create_team_inbox_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |
| **create_inbox** | [**CreateInbox**](CreateInbox.md) | Inbox details | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_inbox

> <InboxResponse> get_inbox(inbox_id)

Get inbox

Fetch an inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID

begin
  # Get inbox
  result = api_instance.get_inbox(inbox_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->get_inbox: #{e}"
end
```

#### Using the get_inbox_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InboxResponse>, Integer, Hash)> get_inbox_with_http_info(inbox_id)

```ruby
begin
  # Get inbox
  data, status_code, headers = api_instance.get_inbox_with_http_info(inbox_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InboxResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->get_inbox_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |

### Return type

[**InboxResponse**](InboxResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inbox_access

> <ListCommentMentions200Response> list_inbox_access(inbox_id)

List inbox access

List the teammates with access to an inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID

begin
  # List inbox access
  result = api_instance.list_inbox_access(inbox_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inbox_access: #{e}"
end
```

#### Using the list_inbox_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommentMentions200Response>, Integer, Hash)> list_inbox_access_with_http_info(inbox_id)

```ruby
begin
  # List inbox access
  data, status_code, headers = api_instance.list_inbox_access_with_http_info(inbox_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommentMentions200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inbox_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |

### Return type

[**ListCommentMentions200Response**](ListCommentMentions200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inbox_channels

> <ListChannels200Response> list_inbox_channels(inbox_id)

List inbox channels

List the channels in an inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID

begin
  # List inbox channels
  result = api_instance.list_inbox_channels(inbox_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inbox_channels: #{e}"
end
```

#### Using the list_inbox_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannels200Response>, Integer, Hash)> list_inbox_channels_with_http_info(inbox_id)

```ruby
begin
  # List inbox channels
  data, status_code, headers = api_instance.list_inbox_channels_with_http_info(inbox_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannels200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inbox_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |

### Return type

[**ListChannels200Response**](ListChannels200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inbox_conversations

> <ListContactConversations200Response> list_inbox_conversations(inbox_id, opts)

List inbox conversations

List the conversations in an inbox. For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property `statuses`, whose value should be a list of conversation statuses (`assigned`, `unassigned`, `archived`, or `deleted`).
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List inbox conversations
  result = api_instance.list_inbox_conversations(inbox_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inbox_conversations: #{e}"
end
```

#### Using the list_inbox_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListContactConversations200Response>, Integer, Hash)> list_inbox_conversations_with_http_info(inbox_id, opts)

```ruby
begin
  # List inbox conversations
  data, status_code, headers = api_instance.list_inbox_conversations_with_http_info(inbox_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListContactConversations200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inbox_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |
| **q** | **String** | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;statuses&#x60;, whose value should be a list of conversation statuses (&#x60;assigned&#x60;, &#x60;unassigned&#x60;, &#x60;archived&#x60;, or &#x60;deleted&#x60;). | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |

### Return type

[**ListContactConversations200Response**](ListContactConversations200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inboxes

> <ListConversationInboxes200Response> list_inboxes

List inboxes

List the inboxes of the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new

begin
  # List inboxes
  result = api_instance.list_inboxes
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inboxes: #{e}"
end
```

#### Using the list_inboxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationInboxes200Response>, Integer, Hash)> list_inboxes_with_http_info

```ruby
begin
  # List inboxes
  data, status_code, headers = api_instance.list_inboxes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationInboxes200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_inboxes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListConversationInboxes200Response**](ListConversationInboxes200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_inboxes

> <ListConversationInboxes200Response> list_team_inboxes(team_id)

List team inboxes

List the inboxes belonging to a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
team_id = 'team_id_example' # String | The team ID

begin
  # List team inboxes
  result = api_instance.list_team_inboxes(team_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_team_inboxes: #{e}"
end
```

#### Using the list_team_inboxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationInboxes200Response>, Integer, Hash)> list_team_inboxes_with_http_info(team_id)

```ruby
begin
  # List team inboxes
  data, status_code, headers = api_instance.list_team_inboxes_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationInboxes200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->list_team_inboxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |

### Return type

[**ListConversationInboxes200Response**](ListConversationInboxes200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## removes_inbox_access

> removes_inbox_access(inbox_id, opts)

Removes inbox access

Remove access of one or more teammates from an inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::InboxesApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to remove. Alternatively, you can supply teammate emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
}

begin
  # Removes inbox access
  api_instance.removes_inbox_access(inbox_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->removes_inbox_access: #{e}"
end
```

#### Using the removes_inbox_access_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> removes_inbox_access_with_http_info(inbox_id, opts)

```ruby
begin
  # Removes inbox access
  data, status_code, headers = api_instance.removes_inbox_access_with_http_info(inbox_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling InboxesApi->removes_inbox_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to remove. Alternatively, you can supply teammate emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

