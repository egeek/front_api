# FrontApi::TagsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_child_tag**](TagsApi.md#create_child_tag) | **POST** /tags/{tag_id}/children | Create child tag |
| [**create_company_tag**](TagsApi.md#create_company_tag) | **POST** /company/tags | Create company tag |
| [**create_tag**](TagsApi.md#create_tag) | **POST** /tags | Create tag |
| [**create_team_tag**](TagsApi.md#create_team_tag) | **POST** /teams/{team_id}/tags | Create team tag |
| [**create_teammate_tag**](TagsApi.md#create_teammate_tag) | **POST** /teammates/{teammate_id}/tags | Create teammate tag |
| [**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /tags/{tag_id} | Delete tag |
| [**get_tag**](TagsApi.md#get_tag) | **GET** /tags/{tag_id} | Get tag |
| [**list_company_tags**](TagsApi.md#list_company_tags) | **GET** /company/tags | List company tags |
| [**list_tag_children**](TagsApi.md#list_tag_children) | **GET** /tags/{tag_id}/children | List tag children |
| [**list_tagged_conversations**](TagsApi.md#list_tagged_conversations) | **GET** /tags/{tag_id}/conversations | List tagged conversations |
| [**list_tags**](TagsApi.md#list_tags) | **GET** /tags | List tags |
| [**list_team_tags**](TagsApi.md#list_team_tags) | **GET** /teams/{team_id}/tags | List team tags |
| [**list_teammate_tags**](TagsApi.md#list_teammate_tags) | **GET** /teammates/{teammate_id}/tags | List teammate tags |
| [**update_a_tag**](TagsApi.md#update_a_tag) | **PATCH** /tags/{tag_id} | Update a tag |


## create_child_tag

> <TagResponse> create_child_tag(tag_id, opts)

Create child tag

Creates a child tag.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
tag_id = 'tag_id_example' # String | The tag ID
opts = {
  create_tag: FrontApi::CreateTag.new({name: 'name_example'}) # CreateTag | Child Tag to create
}

begin
  # Create child tag
  result = api_instance.create_child_tag(tag_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_child_tag: #{e}"
end
```

#### Using the create_child_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponse>, Integer, Hash)> create_child_tag_with_http_info(tag_id, opts)

```ruby
begin
  # Create child tag
  data, status_code, headers = api_instance.create_child_tag_with_http_info(tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_child_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The tag ID | [default to &#39;tag_123&#39;] |
| **create_tag** | [**CreateTag**](CreateTag.md) | Child Tag to create | [optional] |

### Return type

[**TagResponse**](TagResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_company_tag

> <TagResponse> create_company_tag(opts)

Create company tag

Create a company tag.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
opts = {
  create_tag: FrontApi::CreateTag.new({name: 'name_example'}) # CreateTag | Tag to create
}

begin
  # Create company tag
  result = api_instance.create_company_tag(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_company_tag: #{e}"
end
```

#### Using the create_company_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponse>, Integer, Hash)> create_company_tag_with_http_info(opts)

```ruby
begin
  # Create company tag
  data, status_code, headers = api_instance.create_company_tag_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_company_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag** | [**CreateTag**](CreateTag.md) | Tag to create | [optional] |

### Return type

[**TagResponse**](TagResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tag

> <TagResponse> create_tag(opts)

Create tag

Create a tag in the oldest team (workspace). This is a legacy endpoint. Use the Create company tag, Create team tag, or Create teammate tag endpoints instead.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
opts = {
  create_tag: FrontApi::CreateTag.new({name: 'name_example'}) # CreateTag | Tag to create
}

begin
  # Create tag
  result = api_instance.create_tag(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponse>, Integer, Hash)> create_tag_with_http_info(opts)

```ruby
begin
  # Create tag
  data, status_code, headers = api_instance.create_tag_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag** | [**CreateTag**](CreateTag.md) | Tag to create | [optional] |

### Return type

[**TagResponse**](TagResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_tag

> <TagResponse> create_team_tag(team_id, opts)

Create team tag

Create a tag for a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  create_tag: FrontApi::CreateTag.new({name: 'name_example'}) # CreateTag | Tag to create
}

begin
  # Create team tag
  result = api_instance.create_team_tag(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_team_tag: #{e}"
end
```

#### Using the create_team_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponse>, Integer, Hash)> create_team_tag_with_http_info(team_id, opts)

```ruby
begin
  # Create team tag
  data, status_code, headers = api_instance.create_team_tag_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_team_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |
| **create_tag** | [**CreateTag**](CreateTag.md) | Tag to create | [optional] |

### Return type

[**TagResponse**](TagResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_teammate_tag

> <TagResponse> create_teammate_tag(teammate_id, opts)

Create teammate tag

Create a tag for a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_tag: FrontApi::CreateTag.new({name: 'name_example'}) # CreateTag | Tag to create
}

begin
  # Create teammate tag
  result = api_instance.create_teammate_tag(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_teammate_tag: #{e}"
end
```

#### Using the create_teammate_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponse>, Integer, Hash)> create_teammate_tag_with_http_info(teammate_id, opts)

```ruby
begin
  # Create teammate tag
  data, status_code, headers = api_instance.create_teammate_tag_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->create_teammate_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **create_tag** | [**CreateTag**](CreateTag.md) | Tag to create | [optional] |

### Return type

[**TagResponse**](TagResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> delete_tag(tag_id)

Delete tag

Delete a tag.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
tag_id = 'tag_id_example' # String | The ID of the tag to delete

begin
  # Delete tag
  api_instance.delete_tag(tag_id)
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tag_with_http_info(tag_id)

```ruby
begin
  # Delete tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The ID of the tag to delete | [default to &#39;tag_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tag

> <TagResponse> get_tag(tag_id)

Get tag

Fetch a tag.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
tag_id = 'tag_id_example' # String | The tag ID

begin
  # Get tag
  result = api_instance.get_tag(tag_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->get_tag: #{e}"
end
```

#### Using the get_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResponse>, Integer, Hash)> get_tag_with_http_info(tag_id)

```ruby
begin
  # Get tag
  data, status_code, headers = api_instance.get_tag_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->get_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The tag ID | [default to &#39;tag_123&#39;] |

### Return type

[**TagResponse**](TagResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_company_tags

> <ListCompanyTags200Response> list_company_tags(opts)

List company tags

List the company tags.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the tags. Only supports `id`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List company tags
  result = api_instance.list_company_tags(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_company_tags: #{e}"
end
```

#### Using the list_company_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTags200Response>, Integer, Hash)> list_company_tags_with_http_info(opts)

```ruby
begin
  # List company tags
  data, status_code, headers = api_instance.list_company_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTags200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_company_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the tags. Only supports &#x60;id&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListCompanyTags200Response**](ListCompanyTags200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tag_children

> <ListCompanyTags200Response> list_tag_children(tag_id)

List tag children

List the children of a specific tag.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
tag_id = 'tag_id_example' # String | The tag ID

begin
  # List tag children
  result = api_instance.list_tag_children(tag_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_tag_children: #{e}"
end
```

#### Using the list_tag_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTags200Response>, Integer, Hash)> list_tag_children_with_http_info(tag_id)

```ruby
begin
  # List tag children
  data, status_code, headers = api_instance.list_tag_children_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTags200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_tag_children_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The tag ID | [default to &#39;tag_123&#39;] |

### Return type

[**ListCompanyTags200Response**](ListCompanyTags200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tagged_conversations

> <ListContactConversations200Response> list_tagged_conversations(tag_id, opts)

List tagged conversations

List the conversations tagged with a tag. For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
tag_id = 'tag_id_example' # String | The ID of the tag
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property `statuses`, whose value should be a list of conversation statuses (`assigned`, `unassigned`, `archived`, or `deleted`).
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List tagged conversations
  result = api_instance.list_tagged_conversations(tag_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_tagged_conversations: #{e}"
end
```

#### Using the list_tagged_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListContactConversations200Response>, Integer, Hash)> list_tagged_conversations_with_http_info(tag_id, opts)

```ruby
begin
  # List tagged conversations
  data, status_code, headers = api_instance.list_tagged_conversations_with_http_info(tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListContactConversations200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_tagged_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The ID of the tag | [default to &#39;tag_123&#39;] |
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


## list_tags

> <ListCompanyTags200Response> list_tags(opts)

List tags

List all the tags of the company that the API token has access to, whether they be company tags, team tags, or teammate tags.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the tags. Only supports `id`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List tags
  result = api_instance.list_tags(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_tags: #{e}"
end
```

#### Using the list_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTags200Response>, Integer, Hash)> list_tags_with_http_info(opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.list_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTags200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the tags. Only supports &#x60;id&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListCompanyTags200Response**](ListCompanyTags200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_tags

> <ListCompanyTags200Response> list_team_tags(team_id, opts)

List team tags

List the tags for a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the tags. Only supports `id`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List team tags
  result = api_instance.list_team_tags(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_team_tags: #{e}"
end
```

#### Using the list_team_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTags200Response>, Integer, Hash)> list_team_tags_with_http_info(team_id, opts)

```ruby
begin
  # List team tags
  data, status_code, headers = api_instance.list_team_tags_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTags200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_team_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the tags. Only supports &#x60;id&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListCompanyTags200Response**](ListCompanyTags200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_tags

> <ListCompanyTags200Response> list_teammate_tags(teammate_id, opts)

List teammate tags

List the tags for a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the tags. Only supports `id`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List teammate tags
  result = api_instance.list_teammate_tags(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_teammate_tags: #{e}"
end
```

#### Using the list_teammate_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTags200Response>, Integer, Hash)> list_teammate_tags_with_http_info(teammate_id, opts)

```ruby
begin
  # List teammate tags
  data, status_code, headers = api_instance.list_teammate_tags_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTags200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->list_teammate_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the tags. Only supports &#x60;id&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListCompanyTags200Response**](ListCompanyTags200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_a_tag

> update_a_tag(tag_id, opts)

Update a tag

Update a tag.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TagsApi.new
tag_id = 'tag_id_example' # String | The tag ID
opts = {
  update_tag: FrontApi::UpdateTag.new # UpdateTag | Child Tag to update
}

begin
  # Update a tag
  api_instance.update_a_tag(tag_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->update_a_tag: #{e}"
end
```

#### Using the update_a_tag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_a_tag_with_http_info(tag_id, opts)

```ruby
begin
  # Update a tag
  data, status_code, headers = api_instance.update_a_tag_with_http_info(tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TagsApi->update_a_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The tag ID | [default to &#39;tag_123&#39;] |
| **update_tag** | [**UpdateTag**](UpdateTag.md) | Child Tag to update | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

