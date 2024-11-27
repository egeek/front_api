# FrontApi::TokenIdentityApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_token_details**](TokenIdentityApi.md#api_token_details) | **GET** /me | API Token details |


## api_token_details

> <IdentityResponse> api_token_details

API Token details

Fetch the details of the API token.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TokenIdentityApi.new

begin
  # API Token details
  result = api_instance.api_token_details
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TokenIdentityApi->api_token_details: #{e}"
end
```

#### Using the api_token_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityResponse>, Integer, Hash)> api_token_details_with_http_info

```ruby
begin
  # API Token details
  data, status_code, headers = api_instance.api_token_details_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TokenIdentityApi->api_token_details_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IdentityResponse**](IdentityResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

