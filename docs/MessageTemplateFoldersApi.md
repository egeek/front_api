# FrontApi::MessageTemplateFoldersApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_child_folder**](MessageTemplateFoldersApi.md#create_child_folder) | **POST** /message_template_folders/{message_template_folder_id}/message_template_folders | Create child folder |
| [**create_folder**](MessageTemplateFoldersApi.md#create_folder) | **POST** /message_template_folders | Create folder |
| [**create_team_folder**](MessageTemplateFoldersApi.md#create_team_folder) | **POST** /teams/{team_id}/message_template_folders | Create team folder |
| [**create_teammate_folder**](MessageTemplateFoldersApi.md#create_teammate_folder) | **POST** /teammates/{teammate_id}/message_template_folders | Create teammate folder |
| [**delete_folder**](MessageTemplateFoldersApi.md#delete_folder) | **DELETE** /message_template_folders/{message_template_folder_id} | Delete folder |
| [**get_child_folders**](MessageTemplateFoldersApi.md#get_child_folders) | **GET** /message_template_folders/{message_template_folder_id}/message_template_folders | Get child folders |
| [**get_folder**](MessageTemplateFoldersApi.md#get_folder) | **GET** /message_template_folders/{message_template_folder_id} | Get folder |
| [**list_folders**](MessageTemplateFoldersApi.md#list_folders) | **GET** /message_template_folders | List folders |
| [**list_team_folders**](MessageTemplateFoldersApi.md#list_team_folders) | **GET** /teams/{team_id}/message_template_folders | List team folders |
| [**list_teammate_folders**](MessageTemplateFoldersApi.md#list_teammate_folders) | **GET** /teammates/{teammate_id}/message_template_folders | List teammate folders |
| [**update_folder**](MessageTemplateFoldersApi.md#update_folder) | **PATCH** /message_template_folders/{message_template_folder_id} | Update folder |


## create_child_folder

> <MessageTemplateFolderResponse> create_child_folder(message_template_folder_id, opts)

Create child folder

Create a new message template folder as a child of the given folder

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
message_template_folder_id = 'message_template_folder_id_example' # String | The parent message template folder ID
opts = {
  create_message_template_folder_as_child: FrontApi::CreateMessageTemplateFolderAsChild.new({name: 'PTO templates'}) # CreateMessageTemplateFolderAsChild | Message template folder to create
}

begin
  # Create child folder
  result = api_instance.create_child_folder(message_template_folder_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_child_folder: #{e}"
end
```

#### Using the create_child_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateFolderResponse>, Integer, Hash)> create_child_folder_with_http_info(message_template_folder_id, opts)

```ruby
begin
  # Create child folder
  data, status_code, headers = api_instance.create_child_folder_with_http_info(message_template_folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateFolderResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_child_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_folder_id** | **String** | The parent message template folder ID | [default to &#39;rsf_123&#39;] |
| **create_message_template_folder_as_child** | [**CreateMessageTemplateFolderAsChild**](CreateMessageTemplateFolderAsChild.md) | Message template folder to create | [optional] |

### Return type

[**MessageTemplateFolderResponse**](MessageTemplateFolderResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_folder

> <MessageTemplateFolderResponse> create_folder(opts)

Create folder

Create a new message template folder.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
opts = {
  create_message_template_folder: FrontApi::CreateMessageTemplateFolder.new({name: 'PTO templates'}) # CreateMessageTemplateFolder | Message template folder to create
}

begin
  # Create folder
  result = api_instance.create_folder(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_folder: #{e}"
end
```

#### Using the create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateFolderResponse>, Integer, Hash)> create_folder_with_http_info(opts)

```ruby
begin
  # Create folder
  data, status_code, headers = api_instance.create_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateFolderResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_message_template_folder** | [**CreateMessageTemplateFolder**](CreateMessageTemplateFolder.md) | Message template folder to create | [optional] |

### Return type

[**MessageTemplateFolderResponse**](MessageTemplateFolderResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_folder

> <MessageTemplateFolderResponse> create_team_folder(team_id, opts)

Create team folder

Create a new message template folder belonging to the requested team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  create_message_template_folder: FrontApi::CreateMessageTemplateFolder.new({name: 'PTO templates'}) # CreateMessageTemplateFolder | Message template folder to create
}

begin
  # Create team folder
  result = api_instance.create_team_folder(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_team_folder: #{e}"
end
```

#### Using the create_team_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateFolderResponse>, Integer, Hash)> create_team_folder_with_http_info(team_id, opts)

```ruby
begin
  # Create team folder
  data, status_code, headers = api_instance.create_team_folder_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateFolderResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_team_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_55c8c149&#39;] |
| **create_message_template_folder** | [**CreateMessageTemplateFolder**](CreateMessageTemplateFolder.md) | Message template folder to create | [optional] |

### Return type

[**MessageTemplateFolderResponse**](MessageTemplateFolderResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_teammate_folder

> <MessageTemplateFolderResponse> create_teammate_folder(teammate_id, opts)

Create teammate folder

Create a new message template folder belonging to the requested teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_message_template_folder: FrontApi::CreateMessageTemplateFolder.new({name: 'PTO templates'}) # CreateMessageTemplateFolder | Message template folder to create
}

begin
  # Create teammate folder
  result = api_instance.create_teammate_folder(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_teammate_folder: #{e}"
end
```

#### Using the create_teammate_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateFolderResponse>, Integer, Hash)> create_teammate_folder_with_http_info(teammate_id, opts)

```ruby
begin
  # Create teammate folder
  data, status_code, headers = api_instance.create_teammate_folder_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateFolderResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->create_teammate_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **create_message_template_folder** | [**CreateMessageTemplateFolder**](CreateMessageTemplateFolder.md) | Message template folder to create | [optional] |

### Return type

[**MessageTemplateFolderResponse**](MessageTemplateFolderResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_folder

> <DeleteFolder202Response> delete_folder(message_template_folder_id)

Delete folder

Delete a message template folder and child folders/templates

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
message_template_folder_id = 'message_template_folder_id_example' # String | The message template folder id

begin
  # Delete folder
  result = api_instance.delete_folder(message_template_folder_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->delete_folder: #{e}"
end
```

#### Using the delete_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFolder202Response>, Integer, Hash)> delete_folder_with_http_info(message_template_folder_id)

```ruby
begin
  # Delete folder
  data, status_code, headers = api_instance.delete_folder_with_http_info(message_template_folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFolder202Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->delete_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_folder_id** | **String** | The message template folder id | [default to &#39;rsf_123&#39;] |

### Return type

[**DeleteFolder202Response**](DeleteFolder202Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_child_folders

> <ListFolders200Response> get_child_folders(message_template_folder_id)

Get child folders

Fetch the child message templates folders of a message template folder.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
message_template_folder_id = 'message_template_folder_id_example' # String | The message template folder ID

begin
  # Get child folders
  result = api_instance.get_child_folders(message_template_folder_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->get_child_folders: #{e}"
end
```

#### Using the get_child_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFolders200Response>, Integer, Hash)> get_child_folders_with_http_info(message_template_folder_id)

```ruby
begin
  # Get child folders
  data, status_code, headers = api_instance.get_child_folders_with_http_info(message_template_folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFolders200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->get_child_folders_with_http_info: #{e}"
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


## get_folder

> <MessageTemplateFolderResponse> get_folder(message_template_folder_id)

Get folder

Fetch a message template folder.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
message_template_folder_id = 'message_template_folder_id_example' # String | The message template folder ID

begin
  # Get folder
  result = api_instance.get_folder(message_template_folder_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->get_folder: #{e}"
end
```

#### Using the get_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateFolderResponse>, Integer, Hash)> get_folder_with_http_info(message_template_folder_id)

```ruby
begin
  # Get folder
  data, status_code, headers = api_instance.get_folder_with_http_info(message_template_folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateFolderResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->get_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_folder_id** | **String** | The message template folder ID | [default to &#39;rsf_123&#39;] |

### Return type

[**MessageTemplateFolderResponse**](MessageTemplateFolderResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_folders

> <ListFolders200Response> list_folders(opts)

List folders

List the message template folders.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
opts = {
  sort_by: 'sort_by_example', # String | Field used to sort the message template folders. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List folders
  result = api_instance.list_folders(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->list_folders: #{e}"
end
```

#### Using the list_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFolders200Response>, Integer, Hash)> list_folders_with_http_info(opts)

```ruby
begin
  # List folders
  data, status_code, headers = api_instance.list_folders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFolders200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->list_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort_by** | **String** | Field used to sort the message template folders. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListFolders200Response**](ListFolders200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_folders

> <ListFolders200Response> list_team_folders(team_id, opts)

List team folders

List the message template folders belonging to the requested team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  sort_by: 'sort_by_example', # String | Field used to sort the message template folders. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List team folders
  result = api_instance.list_team_folders(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->list_team_folders: #{e}"
end
```

#### Using the list_team_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFolders200Response>, Integer, Hash)> list_team_folders_with_http_info(team_id, opts)

```ruby
begin
  # List team folders
  data, status_code, headers = api_instance.list_team_folders_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFolders200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->list_team_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_55c8c149&#39;] |
| **sort_by** | **String** | Field used to sort the message template folders. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListFolders200Response**](ListFolders200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_folders

> <ListFolders200Response> list_teammate_folders(teammate_id, opts)

List teammate folders

List the message template folders belonging to the requested teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  sort_by: 'sort_by_example', # String | Field used to sort the message template folders. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List teammate folders
  result = api_instance.list_teammate_folders(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->list_teammate_folders: #{e}"
end
```

#### Using the list_teammate_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFolders200Response>, Integer, Hash)> list_teammate_folders_with_http_info(teammate_id, opts)

```ruby
begin
  # List teammate folders
  data, status_code, headers = api_instance.list_teammate_folders_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFolders200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->list_teammate_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **sort_by** | **String** | Field used to sort the message template folders. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListFolders200Response**](ListFolders200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_folder

> <MessageTemplateFolderResponse> update_folder(message_template_folder_id, opts)

Update folder

Update message template folder

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::MessageTemplateFoldersApi.new
message_template_folder_id = 'message_template_folder_id_example' # String | The message template folder ID
opts = {
  update_message_template_folder: FrontApi::UpdateMessageTemplateFolder.new # UpdateMessageTemplateFolder | Message template folder to update
}

begin
  # Update folder
  result = api_instance.update_folder(message_template_folder_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->update_folder: #{e}"
end
```

#### Using the update_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageTemplateFolderResponse>, Integer, Hash)> update_folder_with_http_info(message_template_folder_id, opts)

```ruby
begin
  # Update folder
  data, status_code, headers = api_instance.update_folder_with_http_info(message_template_folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageTemplateFolderResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling MessageTemplateFoldersApi->update_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_template_folder_id** | **String** | The message template folder ID | [default to &#39;rsf_123&#39;] |
| **update_message_template_folder** | [**UpdateMessageTemplateFolder**](UpdateMessageTemplateFolder.md) | Message template folder to update | [optional] |

### Return type

[**MessageTemplateFolderResponse**](MessageTemplateFolderResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

