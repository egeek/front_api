# FrontApi::AccountsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contact_to_account**](AccountsApi.md#add_contact_to_account) | **POST** /accounts/{account_id}/contacts | Add contact to Account |
| [**create_account**](AccountsApi.md#create_account) | **POST** /accounts | Create account |
| [**delete_an_account**](AccountsApi.md#delete_an_account) | **DELETE** /accounts/{account_id} | Delete an account |
| [**fetch_an_account**](AccountsApi.md#fetch_an_account) | **GET** /accounts/{account_id} | Fetch an account |
| [**list_account_contacts**](AccountsApi.md#list_account_contacts) | **GET** /accounts/{account_id}/contacts | List account contacts |
| [**list_accounts**](AccountsApi.md#list_accounts) | **GET** /accounts | List Accounts |
| [**remove_contact_from_account**](AccountsApi.md#remove_contact_from_account) | **DELETE** /accounts/{account_id}/contacts | Remove contact from Account |
| [**update_account**](AccountsApi.md#update_account) | **PATCH** /accounts/{account_id} | Update account |


## add_contact_to_account

> add_contact_to_account(account_id, opts)

Add contact to Account

Adds a list of contacts to an Account

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
account_id = 'account_id_example' # String | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  contact_ids: FrontApi::ContactIds.new({contact_ids: ['contact_ids_example']}) # ContactIds | 
}

begin
  # Add contact to Account
  api_instance.add_contact_to_account(account_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->add_contact_to_account: #{e}"
end
```

#### Using the add_contact_to_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_contact_to_account_with_http_info(account_id, opts)

```ruby
begin
  # Add contact to Account
  data, status_code, headers = api_instance.add_contact_to_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->add_contact_to_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;acc_123&#39;] |
| **contact_ids** | [**ContactIds**](ContactIds.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_account

> <AccountResponse> create_account(opts)

Create account

Create a new account.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
opts = {
  account: FrontApi::Account.new # Account | 
}

begin
  # Create account
  result = api_instance.create_account(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> create_account_with_http_info(opts)

```ruby
begin
  # Create account
  data, status_code, headers = api_instance.create_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**Account**](Account.md) |  | [optional] |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_an_account

> delete_an_account(account_id)

Delete an account

Deletes an account

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
account_id = 'account_id_example' # String | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # Delete an account
  api_instance.delete_an_account(account_id)
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->delete_an_account: #{e}"
end
```

#### Using the delete_an_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_an_account_with_http_info(account_id)

```ruby
begin
  # Delete an account
  data, status_code, headers = api_instance.delete_an_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->delete_an_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;acc_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## fetch_an_account

> <AccountResponse> fetch_an_account(account_id)

Fetch an account

Fetches an account

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
account_id = 'account_id_example' # String | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # Fetch an account
  result = api_instance.fetch_an_account(account_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->fetch_an_account: #{e}"
end
```

#### Using the fetch_an_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> fetch_an_account_with_http_info(account_id)

```ruby
begin
  # Fetch an account
  data, status_code, headers = api_instance.fetch_an_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->fetch_an_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;acc_123&#39;] |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_account_contacts

> <ListAccountContacts200Response> list_account_contacts(account_id, opts)

List account contacts

Lists the contacts associated with an Account

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
account_id = 'account_id_example' # String | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the contacts. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List account contacts
  result = api_instance.list_account_contacts(account_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->list_account_contacts: #{e}"
end
```

#### Using the list_account_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountContacts200Response>, Integer, Hash)> list_account_contacts_with_http_info(account_id, opts)

```ruby
begin
  # List account contacts
  data, status_code, headers = api_instance.list_account_contacts_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountContacts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->list_account_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;acc_123&#39;] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the contacts. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListAccountContacts200Response**](ListAccountContacts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_accounts

> <ListAccounts200Response> list_accounts(opts)

List Accounts

List the accounts of the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the accounts. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List Accounts
  result = api_instance.list_accounts(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->list_accounts: #{e}"
end
```

#### Using the list_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccounts200Response>, Integer, Hash)> list_accounts_with_http_info(opts)

```ruby
begin
  # List Accounts
  data, status_code, headers = api_instance.list_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccounts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->list_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the accounts. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListAccounts200Response**](ListAccounts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_contact_from_account

> remove_contact_from_account(account_id, opts)

Remove contact from Account

Removes a list of contacts from an Account

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
account_id = 'account_id_example' # String | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  contact_ids: FrontApi::ContactIds.new({contact_ids: ['contact_ids_example']}) # ContactIds | 
}

begin
  # Remove contact from Account
  api_instance.remove_contact_from_account(account_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->remove_contact_from_account: #{e}"
end
```

#### Using the remove_contact_from_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_contact_from_account_with_http_info(account_id, opts)

```ruby
begin
  # Remove contact from Account
  data, status_code, headers = api_instance.remove_contact_from_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->remove_contact_from_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;acc_123&#39;] |
| **contact_ids** | [**ContactIds**](ContactIds.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_account

> <AccountResponse> update_account(account_id, opts)

Update account

Updates an account.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AccountsApi.new
account_id = 'account_id_example' # String | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  account_patch: FrontApi::AccountPatch.new # AccountPatch | 
}

begin
  # Update account
  result = api_instance.update_account(account_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> update_account_with_http_info(account_id, opts)

```ruby
begin
  # Update account
  data, status_code, headers = api_instance.update_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling AccountsApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Account ID. Alternatively, you can supply the account domain or external ID as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;acc_123&#39;] |
| **account_patch** | [**AccountPatch**](AccountPatch.md) |  | [optional] |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

