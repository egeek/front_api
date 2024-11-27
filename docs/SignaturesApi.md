# FrontApi::SignaturesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_team_signature**](SignaturesApi.md#create_team_signature) | **POST** /teams/{team_id}/signatures | Create team signature |
| [**create_teammate_signature**](SignaturesApi.md#create_teammate_signature) | **POST** /teammates/{teammate_id}/signatures | Create teammate signature |
| [**delete_signature**](SignaturesApi.md#delete_signature) | **DELETE** /signatures/{signature_id} | Delete signature |
| [**get_signatures**](SignaturesApi.md#get_signatures) | **GET** /signatures/{signature_id} | Get signatures |
| [**list_team_signatures**](SignaturesApi.md#list_team_signatures) | **GET** /teams/{team_id}/signatures | List team signatures |
| [**list_teammate_signatures**](SignaturesApi.md#list_teammate_signatures) | **GET** /teammates/{teammate_id}/signatures | List teammate signatures |
| [**update_signature**](SignaturesApi.md#update_signature) | **PATCH** /signatures/{signature_id} | Update signature |


## create_team_signature

> <SignatureResponse> create_team_signature(team_id, opts)

Create team signature

Create a new signature for the given team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::SignaturesApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  create_shared_signature: FrontApi::CreateSharedSignature.new({name: 'name_example', body: 'body_example'}) # CreateSharedSignature | Signature to create
}

begin
  # Create team signature
  result = api_instance.create_team_signature(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->create_team_signature: #{e}"
end
```

#### Using the create_team_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureResponse>, Integer, Hash)> create_team_signature_with_http_info(team_id, opts)

```ruby
begin
  # Create team signature
  data, status_code, headers = api_instance.create_team_signature_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->create_team_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |
| **create_shared_signature** | [**CreateSharedSignature**](CreateSharedSignature.md) | Signature to create | [optional] |

### Return type

[**SignatureResponse**](SignatureResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_teammate_signature

> <SignatureResponse> create_teammate_signature(teammate_id, opts)

Create teammate signature

Create a new signature for the given teammate

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::SignaturesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_private_signature: FrontApi::CreatePrivateSignature.new({name: 'name_example', body: 'body_example'}) # CreatePrivateSignature | Signature to create
}

begin
  # Create teammate signature
  result = api_instance.create_teammate_signature(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->create_teammate_signature: #{e}"
end
```

#### Using the create_teammate_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureResponse>, Integer, Hash)> create_teammate_signature_with_http_info(teammate_id, opts)

```ruby
begin
  # Create teammate signature
  data, status_code, headers = api_instance.create_teammate_signature_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->create_teammate_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **create_private_signature** | [**CreatePrivateSignature**](CreatePrivateSignature.md) | Signature to create | [optional] |

### Return type

[**SignatureResponse**](SignatureResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_signature

> delete_signature(signature_id)

Delete signature

Delete signature

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::SignaturesApi.new
signature_id = 'signature_id_example' # String | The signature ID

begin
  # Delete signature
  api_instance.delete_signature(signature_id)
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->delete_signature: #{e}"
end
```

#### Using the delete_signature_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_with_http_info(signature_id)

```ruby
begin
  # Delete signature
  data, status_code, headers = api_instance.delete_signature_with_http_info(signature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->delete_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_id** | **String** | The signature ID | [default to &#39;sig_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_signatures

> <SignatureResponse> get_signatures(signature_id)

Get signatures

Get the given signature.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::SignaturesApi.new
signature_id = 'signature_id_example' # String | The signature ID

begin
  # Get signatures
  result = api_instance.get_signatures(signature_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->get_signatures: #{e}"
end
```

#### Using the get_signatures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureResponse>, Integer, Hash)> get_signatures_with_http_info(signature_id)

```ruby
begin
  # Get signatures
  data, status_code, headers = api_instance.get_signatures_with_http_info(signature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->get_signatures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_id** | **String** | The signature ID | [default to &#39;sig_123&#39;] |

### Return type

[**SignatureResponse**](SignatureResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_signatures

> <ListTeammateSignatures200Response> list_team_signatures(team_id)

List team signatures

List the signatures belonging to the given team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::SignaturesApi.new
team_id = 'team_id_example' # String | The team ID

begin
  # List team signatures
  result = api_instance.list_team_signatures(team_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->list_team_signatures: #{e}"
end
```

#### Using the list_team_signatures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTeammateSignatures200Response>, Integer, Hash)> list_team_signatures_with_http_info(team_id)

```ruby
begin
  # List team signatures
  data, status_code, headers = api_instance.list_team_signatures_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTeammateSignatures200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->list_team_signatures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |

### Return type

[**ListTeammateSignatures200Response**](ListTeammateSignatures200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_signatures

> <ListTeammateSignatures200Response> list_teammate_signatures(teammate_id)

List teammate signatures

List the signatures belonging to the given teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::SignaturesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # List teammate signatures
  result = api_instance.list_teammate_signatures(teammate_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->list_teammate_signatures: #{e}"
end
```

#### Using the list_teammate_signatures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTeammateSignatures200Response>, Integer, Hash)> list_teammate_signatures_with_http_info(teammate_id)

```ruby
begin
  # List teammate signatures
  data, status_code, headers = api_instance.list_teammate_signatures_with_http_info(teammate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTeammateSignatures200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->list_teammate_signatures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |

### Return type

[**ListTeammateSignatures200Response**](ListTeammateSignatures200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_signature

> <SignatureResponse> update_signature(signature_id, opts)

Update signature

Update signature

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::SignaturesApi.new
signature_id = 'signature_id_example' # String | The signature ID
opts = {
  update_signature: FrontApi::UpdateSignature.new # UpdateSignature | Signature to update
}

begin
  # Update signature
  result = api_instance.update_signature(signature_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->update_signature: #{e}"
end
```

#### Using the update_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureResponse>, Integer, Hash)> update_signature_with_http_info(signature_id, opts)

```ruby
begin
  # Update signature
  data, status_code, headers = api_instance.update_signature_with_http_info(signature_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling SignaturesApi->update_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_id** | **String** | The signature ID | [default to &#39;sig_123&#39;] |
| **update_signature** | [**UpdateSignature**](UpdateSignature.md) | Signature to update | [optional] |

### Return type

[**SignatureResponse**](SignatureResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

