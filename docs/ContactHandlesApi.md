# FrontApi::ContactHandlesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contact_handle**](ContactHandlesApi.md#add_contact_handle) | **POST** /contacts/{contact_id}/handles | Add contact handle |
| [**delete_contact_handle**](ContactHandlesApi.md#delete_contact_handle) | **DELETE** /contacts/{contact_id}/handles | Delete contact handle |


## add_contact_handle

> add_contact_handle(contact_id, opts)

Add contact handle

Adds a new handle to a contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactHandlesApi.new
contact_id = 'contact_id_example' # String | The contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  contact_handle: FrontApi::ContactHandle.new({handle: 'dwight@limitlesspaper.com', source: 'twitter'}) # ContactHandle | 
}

begin
  # Add contact handle
  api_instance.add_contact_handle(contact_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactHandlesApi->add_contact_handle: #{e}"
end
```

#### Using the add_contact_handle_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_contact_handle_with_http_info(contact_id, opts)

```ruby
begin
  # Add contact handle
  data, status_code, headers = api_instance.add_contact_handle_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactHandlesApi->add_contact_handle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |
| **contact_handle** | [**ContactHandle**](ContactHandle.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_contact_handle

> delete_contact_handle(contact_id, opts)

Delete contact handle

Remove a handle from a contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactHandlesApi.new
contact_id = 'contact_id_example' # String | The contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  delete_contact_handle: FrontApi::DeleteContactHandle.new({handle: 'dwight@limitlesspaper.com', source: 'twitter'}) # DeleteContactHandle | 
}

begin
  # Delete contact handle
  api_instance.delete_contact_handle(contact_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactHandlesApi->delete_contact_handle: #{e}"
end
```

#### Using the delete_contact_handle_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_handle_with_http_info(contact_id, opts)

```ruby
begin
  # Delete contact handle
  data, status_code, headers = api_instance.delete_contact_handle_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactHandlesApi->delete_contact_handle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |
| **delete_contact_handle** | [**DeleteContactHandle**](DeleteContactHandle.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

