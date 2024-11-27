# FrontApi::ContactsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact**](ContactsApi.md#create_contact) | **POST** /contacts | Create contact |
| [**create_team_contact**](ContactsApi.md#create_team_contact) | **POST** /teams/{team_id}/contacts | Create team contact |
| [**create_teammate_contact**](ContactsApi.md#create_teammate_contact) | **POST** /teammates/{teammate_id}/contacts | Create teammate contact |
| [**delete_a_contact**](ContactsApi.md#delete_a_contact) | **DELETE** /contacts/{contact_id} | Delete a contact |
| [**get_contact**](ContactsApi.md#get_contact) | **GET** /contacts/{contact_id} | Get contact |
| [**list_contact_conversations**](ContactsApi.md#list_contact_conversations) | **GET** /contacts/{contact_id}/conversations | List contact conversations |
| [**list_contacts**](ContactsApi.md#list_contacts) | **GET** /contacts | List contacts |
| [**list_team_contacts**](ContactsApi.md#list_team_contacts) | **GET** /teams/{team_id}/contacts | List team contacts |
| [**list_teammate_contacts**](ContactsApi.md#list_teammate_contacts) | **GET** /teammates/{teammate_id}/contacts | List teammate contacts |
| [**merge_contacts**](ContactsApi.md#merge_contacts) | **POST** /contacts/merge | Merge contacts |
| [**update_a_contact**](ContactsApi.md#update_a_contact) | **PATCH** /contacts/{contact_id} | Update a contact |


## create_contact

> <ContactResponse> create_contact(opts)

Create contact

Create a new contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
opts = {
  create_contact: FrontApi::CreateContact.new({handles: [FrontApi::ContactHandle.new({handle: 'dwight@limitlesspaper.com', source: 'twitter'})]}) # CreateContact | 
}

begin
  # Create contact
  result = api_instance.create_contact(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactResponse>, Integer, Hash)> create_contact_with_http_info(opts)

```ruby
begin
  # Create contact
  data, status_code, headers = api_instance.create_contact_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_contact** | [**CreateContact**](CreateContact.md) |  | [optional] |

### Return type

[**ContactResponse**](ContactResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_contact

> <ContactResponse> create_team_contact(team_id, opts)

Create team contact

Create a contact for a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  create_contact: FrontApi::CreateContact.new({handles: [FrontApi::ContactHandle.new({handle: 'dwight@limitlesspaper.com', source: 'twitter'})]}) # CreateContact | 
}

begin
  # Create team contact
  result = api_instance.create_team_contact(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->create_team_contact: #{e}"
end
```

#### Using the create_team_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactResponse>, Integer, Hash)> create_team_contact_with_http_info(team_id, opts)

```ruby
begin
  # Create team contact
  data, status_code, headers = api_instance.create_team_contact_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->create_team_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |
| **create_contact** | [**CreateContact**](CreateContact.md) |  | [optional] |

### Return type

[**ContactResponse**](ContactResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_teammate_contact

> <ContactResponse> create_teammate_contact(teammate_id, opts)

Create teammate contact

Create a contact for a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_contact: FrontApi::CreateContact.new({handles: [FrontApi::ContactHandle.new({handle: 'dwight@limitlesspaper.com', source: 'twitter'})]}) # CreateContact | 
}

begin
  # Create teammate contact
  result = api_instance.create_teammate_contact(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->create_teammate_contact: #{e}"
end
```

#### Using the create_teammate_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactResponse>, Integer, Hash)> create_teammate_contact_with_http_info(teammate_id, opts)

```ruby
begin
  # Create teammate contact
  data, status_code, headers = api_instance.create_teammate_contact_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->create_teammate_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **create_contact** | [**CreateContact**](CreateContact.md) |  | [optional] |

### Return type

[**ContactResponse**](ContactResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_a_contact

> delete_a_contact(contact_id)

Delete a contact

Delete a contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
contact_id = 'contact_id_example' # String | The contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # Delete a contact
  api_instance.delete_a_contact(contact_id)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->delete_a_contact: #{e}"
end
```

#### Using the delete_a_contact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_a_contact_with_http_info(contact_id)

```ruby
begin
  # Delete a contact
  data, status_code, headers = api_instance.delete_a_contact_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->delete_a_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact

> <ContactResponse> get_contact(contact_id)

Get contact

Fetch a contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
contact_id = 'contact_id_example' # String | The contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # Get contact
  result = api_instance.get_contact(contact_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->get_contact: #{e}"
end
```

#### Using the get_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactResponse>, Integer, Hash)> get_contact_with_http_info(contact_id)

```ruby
begin
  # Get contact
  data, status_code, headers = api_instance.get_contact_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->get_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |

### Return type

[**ContactResponse**](ContactResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_contact_conversations

> <ListContactConversations200Response> list_contact_conversations(contact_id, opts)

List contact conversations

List the conversations for a contact in reverse chronological order (newest first). For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
contact_id = 'contact_id_example' # String | The Contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property `statuses`, whose value should be a list of conversation statuses (`assigned`, `unassigned`, `archived`, or `deleted`).
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List contact conversations
  result = api_instance.list_contact_conversations(contact_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_contact_conversations: #{e}"
end
```

#### Using the list_contact_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListContactConversations200Response>, Integer, Hash)> list_contact_conversations_with_http_info(contact_id, opts)

```ruby
begin
  # List contact conversations
  data, status_code, headers = api_instance.list_contact_conversations_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListContactConversations200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_contact_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The Contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |
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


## list_contacts

> <ListAccountContacts200Response> list_contacts(opts)

List contacts

List the contacts of the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with the optional properties `updated_after` and `updated_before`, whose value should be a timestamp in seconds with up to 3 decimal places.
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the contacts. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List contacts
  result = api_instance.list_contacts(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_contacts: #{e}"
end
```

#### Using the list_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountContacts200Response>, Integer, Hash)> list_contacts_with_http_info(opts)

```ruby
begin
  # List contacts
  data, status_code, headers = api_instance.list_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountContacts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | [Search query object](https://dev.frontapp.com/docs/query-object-q) with the optional properties &#x60;updated_after&#x60; and &#x60;updated_before&#x60;, whose value should be a timestamp in seconds with up to 3 decimal places. | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the contacts. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListAccountContacts200Response**](ListAccountContacts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_contacts

> <ListAccountContacts200Response> list_team_contacts(team_id, opts)

List team contacts

List the contacts of a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with the optional properties `updated_after` and `updated_before`, whose value should be a timestamp in seconds with up to 3 decimal places.
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the contacts. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List team contacts
  result = api_instance.list_team_contacts(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_team_contacts: #{e}"
end
```

#### Using the list_team_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountContacts200Response>, Integer, Hash)> list_team_contacts_with_http_info(team_id, opts)

```ruby
begin
  # List team contacts
  data, status_code, headers = api_instance.list_team_contacts_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountContacts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_team_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |
| **q** | **String** | [Search query object](https://dev.frontapp.com/docs/query-object-q) with the optional properties &#x60;updated_after&#x60; and &#x60;updated_before&#x60;, whose value should be a timestamp in seconds with up to 3 decimal places. | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the contacts. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListAccountContacts200Response**](ListAccountContacts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_contacts

> <ListAccountContacts200Response> list_teammate_contacts(teammate_id, opts)

List teammate contacts

List the contacts of a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with the optional properties `updated_after` and `updated_before`, whose value should be a timestamp in seconds with up to 3 decimal places.
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the contacts. Either `created_at` or `updated_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List teammate contacts
  result = api_instance.list_teammate_contacts(teammate_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_teammate_contacts: #{e}"
end
```

#### Using the list_teammate_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountContacts200Response>, Integer, Hash)> list_teammate_contacts_with_http_info(teammate_id, opts)

```ruby
begin
  # List teammate contacts
  data, status_code, headers = api_instance.list_teammate_contacts_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountContacts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->list_teammate_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **q** | **String** | [Search query object](https://dev.frontapp.com/docs/query-object-q) with the optional properties &#x60;updated_after&#x60; and &#x60;updated_before&#x60;, whose value should be a timestamp in seconds with up to 3 decimal places. | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the contacts. Either &#x60;created_at&#x60; or &#x60;updated_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListAccountContacts200Response**](ListAccountContacts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## merge_contacts

> <ContactResponse> merge_contacts(opts)

Merge contacts

Merges the contacts specified into a single contact, deleting the merged-in contacts. If a target contact ID is supplied, the other contacts will be merged into that one. Otherwise, some contact in the contact ID list will be treated as the target contact. Merge conflicts will be resolved in the following ways:   * name will prioritize manually-updated and non-private contact names   * descriptions will be concatenated and separated by newlines in order from     oldest to newest with the (optional) target contact's description first   * all handles, groups, links, and notes will be preserved   * other conflicts will use the most recently updated contact's value 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
opts = {
  merge_contacts: FrontApi::MergeContacts.new({contact_ids: ['contact_ids_example']}) # MergeContacts | 
}

begin
  # Merge contacts
  result = api_instance.merge_contacts(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->merge_contacts: #{e}"
end
```

#### Using the merge_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactResponse>, Integer, Hash)> merge_contacts_with_http_info(opts)

```ruby
begin
  # Merge contacts
  data, status_code, headers = api_instance.merge_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->merge_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merge_contacts** | [**MergeContacts**](MergeContacts.md) |  | [optional] |

### Return type

[**ContactResponse**](ContactResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_a_contact

> update_a_contact(contact_id, opts)

Update a contact

Updates a contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactsApi.new
contact_id = 'contact_id_example' # String | The contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  contact: FrontApi::Contact.new # Contact | 
}

begin
  # Update a contact
  api_instance.update_a_contact(contact_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->update_a_contact: #{e}"
end
```

#### Using the update_a_contact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_a_contact_with_http_info(contact_id, opts)

```ruby
begin
  # Update a contact
  data, status_code, headers = api_instance.update_a_contact_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactsApi->update_a_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |
| **contact** | [**Contact**](Contact.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

