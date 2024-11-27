# FrontApi::MessageTemplatesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_child_template**](MessageTemplatesApi.md#create_child_template) | **POST** /message_template_folders/{message_template_folder_id}/message_templates | Create child template |
| [**create_message_template**](MessageTemplatesApi.md#create_message_template) | **POST** /message_templates | Create message template |
| [**create_team_message_template**](MessageTemplatesApi.md#create_team_message_template) | **POST** /teams/{team_id}/message_templates | Create team message template |
| [**create_teammate_message_template**](MessageTemplatesApi.md#create_teammate_message_template) | **POST** /teammates/{teammate_id}/message_templates | Create teammate message template |
| [**delete_message_template**](MessageTemplatesApi.md#delete_message_template) | **DELETE** /message_templates/{message_template_id} | Delete message template |
| [**get_child_templates**](MessageTemplatesApi.md#get_child_templates) | **GET** /message_template_folders/{message_template_folder_id}/message_templates | Get child templates |
| [**get_message_template**](MessageTemplatesApi.md#get_message_template) | **GET** /message_templates/{message_template_id} | Get message template |
| [**list_message_templates**](MessageTemplatesApi.md#list_message_templates) | **GET** /message_templates | List message templates |
| [**list_team_message_templates**](MessageTemplatesApi.md#list_team_message_templates) | **GET** /teams/{team_id}/message_templates | List team message templates |
| [**list_teammate_message_templates**](MessageTemplatesApi.md#list_teammate_message_templates) | **GET** /teammates/{teammate_id}/message_templates | List teammate message templates |
| [**update_message_template**](MessageTemplatesApi.md#update_message_template) | **PATCH** /message_templates/{message_template_id} | Update message template |


## create_child_template

> <MessageTemplateResponse> create_child_template(message_template_folder_id, opts)

Create child template

Create a new message template as a child of the given folder

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
message_template_folder_id = 'message_template_folder_id_example' # String | The parent message template folder ID
opts = {
  create_message_template_as_child: FrontApi::CreateMessageTemplateAsChild.new({name: 'Out of Office', body: 'Sorry, I'm OOO until October 25th.'}) # CreateMessageTemplateAsChild | Message template to create
}

begin
  # Create child template
  result = api_instance.create_child_template(message_template_folder_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_child_template: #{e}"
end
```

#### Using the create_child_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateResponse>, Integer, Hash)> create_child_template_with_http_info(message_template_folder_id, opts)

```ruby
begin
  # Create child template
  data, status_code, headers = api_instance.create_child_template_with_http_info(message_template_folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_child_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_folder_id** | **String** | The parent message template folder ID | [default to &#39;rsf_123&#39;] |
| **create_message_template_as_child** | [**CreateMessageTemplateAsChild**](CreateMessageTemplateAsChild.md) | Message template to create | [optional] |

### Return type

[**MessageTemplateResponse**](MessageTemplateResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_message_template

> <MessageTemplateResponse> create_message_template(opts)

Create message template

Create a new message template.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
opts = {
  create_shared_message_template: FrontApi::CreateSharedMessageTemplate.new({name: 'Out of Office', body: 'Sorry, I'm OOO until October 25th.'}) # CreateSharedMessageTemplate | Message template to create
}

begin
  # Create message template
  result = api_instance.create_message_template(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_message_template: #{e}"
end
```

#### Using the create_message_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateResponse>, Integer, Hash)> create_message_template_with_http_info(opts)

```ruby
begin
  # Create message template
  data, status_code, headers = api_instance.create_message_template_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_message_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_shared_message_template** | [**CreateSharedMessageTemplate**](CreateSharedMessageTemplate.md) | Message template to create | [optional] |

### Return type

[**MessageTemplateResponse**](MessageTemplateResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_message_template

> <MessageTemplateResponse> create_team_message_template(team_id, opts)

Create team message template

Create a new message template for the given team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  create_shared_message_template: FrontApi::CreateSharedMessageTemplate.new({name: 'Out of Office', body: 'Sorry, I'm OOO until October 25th.'}) # CreateSharedMessageTemplate | Message template to create
}

begin
  # Create team message template
  result = api_instance.create_team_message_template(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_team_message_template: #{e}"
end
```

#### Using the create_team_message_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateResponse>, Integer, Hash)> create_team_message_template_with_http_info(team_id, opts)

```ruby
begin
  # Create team message template
  data, status_code, headers = api_instance.create_team_message_template_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_team_message_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_55c8c149&#39;] |
| **create_shared_message_template** | [**CreateSharedMessageTemplate**](CreateSharedMessageTemplate.md) | Message template to create | [optional] |

### Return type

[**MessageTemplateResponse**](MessageTemplateResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_teammate_message_template

> <MessageTemplateResponse> create_teammate_message_template(teammate_id, opts)

Create teammate message template

Create a new message template for the given teammate

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_private_message_template: FrontApi::CreatePrivateMessageTemplate.new({name: 'Out of Office', body: 'Sorry, I'm OOO until October 25th.'}) # CreatePrivateMessageTemplate | Message template to create
}

begin
  # Create teammate message template
  result = api_instance.create_teammate_message_template(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_teammate_message_template: #{e}"
end
```

#### Using the create_teammate_message_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateResponse>, Integer, Hash)> create_teammate_message_template_with_http_info(teammate_id, opts)

```ruby
begin
  # Create teammate message template
  data, status_code, headers = api_instance.create_teammate_message_template_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->create_teammate_message_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **create_private_message_template** | [**CreatePrivateMessageTemplate**](CreatePrivateMessageTemplate.md) | Message template to create | [optional] |

### Return type

[**MessageTemplateResponse**](MessageTemplateResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_message_template

> delete_message_template(message_template_id)

Delete message template

Delete a message template

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
message_template_id = 'message_template_id_example' # String | The message template ID

begin
  # Delete message template
  api_instance.delete_message_template(message_template_id)
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->delete_message_template: #{e}"
end
```

#### Using the delete_message_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_message_template_with_http_info(message_template_id)

```ruby
begin
  # Delete message template
  data, status_code, headers = api_instance.delete_message_template_with_http_info(message_template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->delete_message_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_id** | **String** | The message template ID | [default to &#39;rsp_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_child_templates

> <ListFolders200Response> get_child_templates(message_template_folder_id)

Get child templates

Fetch the child message templates of a message template folder.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
message_template_folder_id = 'message_template_folder_id_example' # String | The message template folder ID

begin
  # Get child templates
  result = api_instance.get_child_templates(message_template_folder_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->get_child_templates: #{e}"
end
```

#### Using the get_child_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFolders200Response>, Integer, Hash)> get_child_templates_with_http_info(message_template_folder_id)

```ruby
begin
  # Get child templates
  data, status_code, headers = api_instance.get_child_templates_with_http_info(message_template_folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFolders200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->get_child_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_folder_id** | **String** | The message template folder ID | [default to &#39;rsf_123&#39;] |

### Return type

[**ListFolders200Response**](ListFolders200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_message_template

> <MessageTemplateResponse> get_message_template(message_template_id)

Get message template

Fetch a message template.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
message_template_id = 'message_template_id_example' # String | The message template ID

begin
  # Get message template
  result = api_instance.get_message_template(message_template_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->get_message_template: #{e}"
end
```

#### Using the get_message_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateResponse>, Integer, Hash)> get_message_template_with_http_info(message_template_id)

```ruby
begin
  # Get message template
  data, status_code, headers = api_instance.get_message_template_with_http_info(message_template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->get_message_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_id** | **String** | The message template ID | [default to &#39;rsp_123&#39;] |

### Return type

[**MessageTemplateResponse**](MessageTemplateResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_message_templates

> <ListMessageTemplates200Response> list_message_templates(opts)

List message templates

List the message templates.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
opts = {
  sort_by: 'sort_by_example', # String | Field used to sort the message templates. Either `created_at`, `updated_at`, or `sort_order`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List message templates
  result = api_instance.list_message_templates(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->list_message_templates: #{e}"
end
```

#### Using the list_message_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMessageTemplates200Response>, Integer, Hash)> list_message_templates_with_http_info(opts)

```ruby
begin
  # List message templates
  data, status_code, headers = api_instance.list_message_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMessageTemplates200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->list_message_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort_by** | **String** | Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListMessageTemplates200Response**](ListMessageTemplates200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_message_templates

> <ListMessageTemplates200Response> list_team_message_templates(team_id, opts)

List team message templates

List the message templates belonging to the requested team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  sort_by: 'sort_by_example', # String | Field used to sort the message templates. Either `created_at`, `updated_at`, or `sort_order`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List team message templates
  result = api_instance.list_team_message_templates(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->list_team_message_templates: #{e}"
end
```

#### Using the list_team_message_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMessageTemplates200Response>, Integer, Hash)> list_team_message_templates_with_http_info(team_id, opts)

```ruby
begin
  # List team message templates
  data, status_code, headers = api_instance.list_team_message_templates_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMessageTemplates200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->list_team_message_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_55c8c149&#39;] |
| **sort_by** | **String** | Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListMessageTemplates200Response**](ListMessageTemplates200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_message_templates

> <ListMessageTemplates200Response> list_teammate_message_templates(teammate_id, opts)

List teammate message templates

List the message templates belonging to the requested teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  sort_by: 'sort_by_example', # String | Field used to sort the message templates. Either `created_at`, `updated_at`, or `sort_order`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List teammate message templates
  result = api_instance.list_teammate_message_templates(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->list_teammate_message_templates: #{e}"
end
```

#### Using the list_teammate_message_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMessageTemplates200Response>, Integer, Hash)> list_teammate_message_templates_with_http_info(teammate_id, opts)

```ruby
begin
  # List teammate message templates
  data, status_code, headers = api_instance.list_teammate_message_templates_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMessageTemplates200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->list_teammate_message_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **sort_by** | **String** | Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListMessageTemplates200Response**](ListMessageTemplates200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_message_template

> <MessageTemplateResponse> update_message_template(message_template_id, opts)

Update message template

Update message template

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplatesApi.new
message_template_id = 'message_template_id_example' # String | The message template ID
opts = {
  update_message_template: FrontApi::UpdateMessageTemplate.new # UpdateMessageTemplate | Message template to update
}

begin
  # Update message template
  result = api_instance.update_message_template(message_template_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->update_message_template: #{e}"
end
```

#### Using the update_message_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateResponse>, Integer, Hash)> update_message_template_with_http_info(message_template_id, opts)

```ruby
begin
  # Update message template
  data, status_code, headers = api_instance.update_message_template_with_http_info(message_template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplatesApi->update_message_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_id** | **String** | The message template ID | [default to &#39;rsp_123&#39;] |
| **update_message_template** | [**UpdateMessageTemplate**](UpdateMessageTemplate.md) | Message template to update | [optional] |

### Return type

[**MessageTemplateResponse**](MessageTemplateResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

