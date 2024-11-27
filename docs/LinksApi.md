# FrontApi::LinksApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_link**](LinksApi.md#create_link) | **POST** /links | Create link |
| [**get_link**](LinksApi.md#get_link) | **GET** /links/{link_id} | Get link |
| [**list_link_conversations**](LinksApi.md#list_link_conversations) | **GET** /links/{link_id}/conversations | List link conversations |
| [**list_links**](LinksApi.md#list_links) | **GET** /links | List links |
| [**update_a_link**](LinksApi.md#update_a_link) | **PATCH** /links/{link_id} | Update a link |


## create_link

> <LinkResponse> create_link(opts)

Create link

Create a link. You must supply either `pattern` or `external_url` in the request, but not both (`pattern` is for dynamic objects while `external_url` is for standard links). If `pattern` is provided, the API call updates the dynamic objects matching the exact pattern. If the link is resolved to an installed links integration, any name retrieved from the integration will override the provided name in the request.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::LinksApi.new
opts = {
  create_link: FrontApi::CreateLink.new # CreateLink | Link to create
}

begin
  # Create link
  result = api_instance.create_link(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->create_link: #{e}"
end
```

#### Using the create_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkResponse>, Integer, Hash)> create_link_with_http_info(opts)

```ruby
begin
  # Create link
  data, status_code, headers = api_instance.create_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->create_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_link** | [**CreateLink**](CreateLink.md) | Link to create | [optional] |

### Return type

[**LinkResponse**](LinkResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_link

> <LinkResponse> get_link(link_id)

Get link

Fetch a link.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::LinksApi.new
link_id = 'link_id_example' # String | The link ID

begin
  # Get link
  result = api_instance.get_link(link_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->get_link: #{e}"
end
```

#### Using the get_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkResponse>, Integer, Hash)> get_link_with_http_info(link_id)

```ruby
begin
  # Get link
  data, status_code, headers = api_instance.get_link_with_http_info(link_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->get_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The link ID | [default to &#39;top_123&#39;] |

### Return type

[**LinkResponse**](LinkResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_link_conversations

> <ListContactConversations200Response> list_link_conversations(link_id, opts)

List link conversations

List the conversations linked to a specific link. For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::LinksApi.new
link_id = 'link_id_example' # String | The Link ID
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property `statuses`, whose value should be a list of conversation statuses (`assigned`, `unassigned`, `archived`, or `deleted`).
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the conversations. Only supports `date`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List link conversations
  result = api_instance.list_link_conversations(link_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->list_link_conversations: #{e}"
end
```

#### Using the list_link_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListContactConversations200Response>, Integer, Hash)> list_link_conversations_with_http_info(link_id, opts)

```ruby
begin
  # List link conversations
  data, status_code, headers = api_instance.list_link_conversations_with_http_info(link_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListContactConversations200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->list_link_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The Link ID | [default to &#39;top_123&#39;] |
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


## list_links

> <ListLinks200Response> list_links(opts)

List links

List the links of the company paginated by id. Allows filtering by link type via the q.types param.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::LinksApi.new
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property `types`, whose value should be a list of link types (examples - `web`, `jira`, `asana` ).
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the links. Only supports `id`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List links
  result = api_instance.list_links(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->list_links: #{e}"
end
```

#### Using the list_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLinks200Response>, Integer, Hash)> list_links_with_http_info(opts)

```ruby
begin
  # List links
  data, status_code, headers = api_instance.list_links_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLinks200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->list_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;types&#x60;, whose value should be a list of link types (examples - &#x60;web&#x60;, &#x60;jira&#x60;, &#x60;asana&#x60; ). | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the links. Only supports &#x60;id&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListLinks200Response**](ListLinks200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_a_link

> update_a_link(link_id, opts)

Update a link

Update a link.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::LinksApi.new
link_id = 'link_id_example' # String | The link ID
opts = {
  update_link: FrontApi::UpdateLink.new # UpdateLink | Link fields to update
}

begin
  # Update a link
  api_instance.update_a_link(link_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->update_a_link: #{e}"
end
```

#### Using the update_a_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_a_link_with_http_info(link_id, opts)

```ruby
begin
  # Update a link
  data, status_code, headers = api_instance.update_a_link_with_http_info(link_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling LinksApi->update_a_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The link ID | [default to &#39;top_123&#39;] |
| **update_link** | [**UpdateLink**](UpdateLink.md) | Link fields to update | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

