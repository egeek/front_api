# FrontApi::TeammatesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_teammate**](TeammatesApi.md#get_teammate) | **GET** /teammates/{teammate_id} | Get teammate |
| [**list_assigned_conversations**](TeammatesApi.md#list_assigned_conversations) | **GET** /teammates/{teammate_id}/conversations | List assigned conversations |
| [**list_teammate_inboxes**](TeammatesApi.md#list_teammate_inboxes) | **GET** /teammates/{teammate_id}/inboxes | List teammate inboxes |
| [**list_teammates**](TeammatesApi.md#list_teammates) | **GET** /teammates | List teammates |
| [**update_teammate**](TeammatesApi.md#update_teammate) | **PATCH** /teammates/{teammate_id} | Update teammate |


## get_teammate

> <TeammateResponse> get_teammate(teammate_id)

Get teammate

Fetch a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammatesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # Get teammate
  result = api_instance.get_teammate(teammate_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->get_teammate: #{e}"
end
```

#### Using the get_teammate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeammateResponse>, Integer, Hash)> get_teammate_with_http_info(teammate_id)

```ruby
begin
  # Get teammate
  data, status_code, headers = api_instance.get_teammate_with_http_info(teammate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeammateResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->get_teammate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |

### Return type

[**TeammateResponse**](TeammateResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_assigned_conversations

> <ListContactConversations200Response> list_assigned_conversations(teammate_id, opts)

List assigned conversations

List the conversations assigned to a teammate in reverse chronological order (most recently updated first). For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammatesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property `statuses`, whose value should be a list of conversation statuses (`assigned`, `unassigned`, `archived`, or `deleted`).
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List assigned conversations
  result = api_instance.list_assigned_conversations(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->list_assigned_conversations: #{e}"
end
```

#### Using the list_assigned_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListContactConversations200Response>, Integer, Hash)> list_assigned_conversations_with_http_info(teammate_id, opts)

```ruby
begin
  # List assigned conversations
  data, status_code, headers = api_instance.list_assigned_conversations_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListContactConversations200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->list_assigned_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
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


## list_teammate_inboxes

> <ListConversationInboxes200Response> list_teammate_inboxes(teammate_id)

List teammate inboxes

Returns list of inboxes the teammate has access to.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammatesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # List teammate inboxes
  result = api_instance.list_teammate_inboxes(teammate_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->list_teammate_inboxes: #{e}"
end
```

#### Using the list_teammate_inboxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationInboxes200Response>, Integer, Hash)> list_teammate_inboxes_with_http_info(teammate_id)

```ruby
begin
  # List teammate inboxes
  data, status_code, headers = api_instance.list_teammate_inboxes_with_http_info(teammate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationInboxes200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->list_teammate_inboxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |

### Return type

[**ListConversationInboxes200Response**](ListConversationInboxes200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammates

> <ListCommentMentions200Response> list_teammates

List teammates

List the teammates in the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammatesApi.new

begin
  # List teammates
  result = api_instance.list_teammates
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->list_teammates: #{e}"
end
```

#### Using the list_teammates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommentMentions200Response>, Integer, Hash)> list_teammates_with_http_info

```ruby
begin
  # List teammates
  data, status_code, headers = api_instance.list_teammates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommentMentions200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->list_teammates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListCommentMentions200Response**](ListCommentMentions200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_teammate

> update_teammate(teammate_id, opts)

Update teammate

Update a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammatesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  update_teammate: FrontApi::UpdateTeammate.new # UpdateTeammate | 
}

begin
  # Update teammate
  api_instance.update_teammate(teammate_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->update_teammate: #{e}"
end
```

#### Using the update_teammate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_teammate_with_http_info(teammate_id, opts)

```ruby
begin
  # Update teammate
  data, status_code, headers = api_instance.update_teammate_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammatesApi->update_teammate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **update_teammate** | [**UpdateTeammate**](UpdateTeammate.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

