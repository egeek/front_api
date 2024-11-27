# FrontApi::CustomFieldsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_account_custom_fields**](CustomFieldsApi.md#list_account_custom_fields) | **GET** /accounts/custom_fields | List Account&#39;s custom fields |
| [**list_contact_custom_fields**](CustomFieldsApi.md#list_contact_custom_fields) | **GET** /contacts/custom_fields | List Contact&#39;s custom fields |
| [**list_conversation_custom_fields**](CustomFieldsApi.md#list_conversation_custom_fields) | **GET** /conversations/custom_fields | List Conversation&#39;s custom fields |
| [**list_custom_fields**](CustomFieldsApi.md#list_custom_fields) | **GET** /custom_fields | List Contact&#39;s custom fields |
| [**list_inbox_custom_fields**](CustomFieldsApi.md#list_inbox_custom_fields) | **GET** /inboxes/custom_fields | List Inbox&#39;s custom fields |
| [**list_link_custom_fields**](CustomFieldsApi.md#list_link_custom_fields) | **GET** /links/custom_fields | List Link&#39;s custom fields |
| [**list_teammate_custom_fields**](CustomFieldsApi.md#list_teammate_custom_fields) | **GET** /teammates/custom_fields | List Teammate&#39;s custom fields |


## list_account_custom_fields

> <ListAccountCustomFields200Response> list_account_custom_fields

List Account's custom fields

Lists the custom fields that can be attached to an Account.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CustomFieldsApi.new

begin
  # List Account's custom fields
  result = api_instance.list_account_custom_fields
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_account_custom_fields: #{e}"
end
```

#### Using the list_account_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCustomFields200Response>, Integer, Hash)> list_account_custom_fields_with_http_info

```ruby
begin
  # List Account's custom fields
  data, status_code, headers = api_instance.list_account_custom_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCustomFields200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_account_custom_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountCustomFields200Response**](ListAccountCustomFields200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_contact_custom_fields

> <ListAccountCustomFields200Response> list_contact_custom_fields

List Contact's custom fields

Lists the custom fields that can be attached to a Contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CustomFieldsApi.new

begin
  # List Contact's custom fields
  result = api_instance.list_contact_custom_fields
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_contact_custom_fields: #{e}"
end
```

#### Using the list_contact_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCustomFields200Response>, Integer, Hash)> list_contact_custom_fields_with_http_info

```ruby
begin
  # List Contact's custom fields
  data, status_code, headers = api_instance.list_contact_custom_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCustomFields200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_contact_custom_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountCustomFields200Response**](ListAccountCustomFields200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversation_custom_fields

> <ListAccountCustomFields200Response> list_conversation_custom_fields

List Conversation's custom fields

Lists the custom fields that can be attached to a Conversation.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CustomFieldsApi.new

begin
  # List Conversation's custom fields
  result = api_instance.list_conversation_custom_fields
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_conversation_custom_fields: #{e}"
end
```

#### Using the list_conversation_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCustomFields200Response>, Integer, Hash)> list_conversation_custom_fields_with_http_info

```ruby
begin
  # List Conversation's custom fields
  data, status_code, headers = api_instance.list_conversation_custom_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCustomFields200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_conversation_custom_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountCustomFields200Response**](ListAccountCustomFields200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_fields

> <ListAccountCustomFields200Response> list_custom_fields

List Contact's custom fields

Lists the custom fields that can be attached to a Contact.  > ⚠️ Deprecated endpoint > > This endpoint has been deprecated. Please use the fully compatible `GET /contacts/custom_fields` endpoint instead. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CustomFieldsApi.new

begin
  # List Contact's custom fields
  result = api_instance.list_custom_fields
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields: #{e}"
end
```

#### Using the list_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCustomFields200Response>, Integer, Hash)> list_custom_fields_with_http_info

```ruby
begin
  # List Contact's custom fields
  data, status_code, headers = api_instance.list_custom_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCustomFields200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountCustomFields200Response**](ListAccountCustomFields200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inbox_custom_fields

> <ListAccountCustomFields200Response> list_inbox_custom_fields

List Inbox's custom fields

Lists the custom fields that can be attached to an Inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CustomFieldsApi.new

begin
  # List Inbox's custom fields
  result = api_instance.list_inbox_custom_fields
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_inbox_custom_fields: #{e}"
end
```

#### Using the list_inbox_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCustomFields200Response>, Integer, Hash)> list_inbox_custom_fields_with_http_info

```ruby
begin
  # List Inbox's custom fields
  data, status_code, headers = api_instance.list_inbox_custom_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCustomFields200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_inbox_custom_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountCustomFields200Response**](ListAccountCustomFields200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_link_custom_fields

> <ListAccountCustomFields200Response> list_link_custom_fields

List Link's custom fields

Lists the custom fields that can be attached to a Link.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CustomFieldsApi.new

begin
  # List Link's custom fields
  result = api_instance.list_link_custom_fields
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_link_custom_fields: #{e}"
end
```

#### Using the list_link_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCustomFields200Response>, Integer, Hash)> list_link_custom_fields_with_http_info

```ruby
begin
  # List Link's custom fields
  data, status_code, headers = api_instance.list_link_custom_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCustomFields200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_link_custom_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountCustomFields200Response**](ListAccountCustomFields200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_custom_fields

> <ListAccountCustomFields200Response> list_teammate_custom_fields

List Teammate's custom fields

Lists the custom fields that can be attached to a Teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::CustomFieldsApi.new

begin
  # List Teammate's custom fields
  result = api_instance.list_teammate_custom_fields
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_teammate_custom_fields: #{e}"
end
```

#### Using the list_teammate_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCustomFields200Response>, Integer, Hash)> list_teammate_custom_fields_with_http_info

```ruby
begin
  # List Teammate's custom fields
  data, status_code, headers = api_instance.list_teammate_custom_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCustomFields200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling CustomFieldsApi->list_teammate_custom_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountCustomFields200Response**](ListAccountCustomFields200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

