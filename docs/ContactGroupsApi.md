# FrontApi::ContactGroupsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contacts_to_group**](ContactGroupsApi.md#add_contacts_to_group) | **POST** /contact_groups/{contact_group_id}/contacts | Add contacts to group |
| [**create_group**](ContactGroupsApi.md#create_group) | **POST** /contact_groups | Create group |
| [**create_team_group**](ContactGroupsApi.md#create_team_group) | **POST** /teams/{team_id}/contact_groups | Create team group |
| [**create_teammate_group**](ContactGroupsApi.md#create_teammate_group) | **POST** /teammates/{teammate_id}/contact_groups | Create teammate group |
| [**delete_group**](ContactGroupsApi.md#delete_group) | **DELETE** /contact_groups/{contact_group_id} | Delete group |
| [**list_contacts_in_group**](ContactGroupsApi.md#list_contacts_in_group) | **GET** /contact_groups/{contact_group_id}/contacts | List contacts in group |
| [**list_groups**](ContactGroupsApi.md#list_groups) | **GET** /contact_groups | List groups |
| [**list_team_groups**](ContactGroupsApi.md#list_team_groups) | **GET** /teams/{team_id}/contact_groups | List team groups |
| [**list_teammate_groups**](ContactGroupsApi.md#list_teammate_groups) | **GET** /teammates/{teammate_id}/contact_groups | List teammate groups |
| [**remove_contacts_from_group**](ContactGroupsApi.md#remove_contacts_from_group) | **DELETE** /contact_groups/{contact_group_id}/contacts | Remove contacts from group |


## add_contacts_to_group

> add_contacts_to_group(contact_group_id, opts)

Add contacts to group

Add contacts to the requested group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
contact_group_id = 'contact_group_id_example' # String | The contact group ID
opts = {
  add_contacts_to_group: FrontApi::AddContactsToGroup.new({contact_ids: ['contact_ids_example']}) # AddContactsToGroup | 
}

begin
  # Add contacts to group
  api_instance.add_contacts_to_group(contact_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->add_contacts_to_group: #{e}"
end
```

#### Using the add_contacts_to_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_contacts_to_group_with_http_info(contact_group_id, opts)

```ruby
begin
  # Add contacts to group
  data, status_code, headers = api_instance.add_contacts_to_group_with_http_info(contact_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->add_contacts_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_group_id** | **String** | The contact group ID | [default to &#39;grp_123&#39;] |
| **add_contacts_to_group** | [**AddContactsToGroup**](AddContactsToGroup.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_group

> create_group(opts)

Create group

Create a new contact group in the default team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
opts = {
  create_contact_group: FrontApi::CreateContactGroup.new({name: 'name_example'}) # CreateContactGroup | 
}

begin
  # Create group
  api_instance.create_group(opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_group_with_http_info(opts)

```ruby
begin
  # Create group
  data, status_code, headers = api_instance.create_group_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_contact_group** | [**CreateContactGroup**](CreateContactGroup.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_team_group

> create_team_group(team_id, opts)

Create team group

Create a new contact group for the requested team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
team_id = 'team_id_example' # String | The team ID
opts = {
  create_contact_group: FrontApi::CreateContactGroup.new({name: 'name_example'}) # CreateContactGroup | 
}

begin
  # Create team group
  api_instance.create_team_group(team_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->create_team_group: #{e}"
end
```

#### Using the create_team_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_team_group_with_http_info(team_id, opts)

```ruby
begin
  # Create team group
  data, status_code, headers = api_instance.create_team_group_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->create_team_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |
| **create_contact_group** | [**CreateContactGroup**](CreateContactGroup.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_teammate_group

> create_teammate_group(teammate_id, opts)

Create teammate group

Create a new contact group for the requested teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_contact_group: FrontApi::CreateContactGroup.new({name: 'name_example'}) # CreateContactGroup | 
}

begin
  # Create teammate group
  api_instance.create_teammate_group(teammate_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->create_teammate_group: #{e}"
end
```

#### Using the create_teammate_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_teammate_group_with_http_info(teammate_id, opts)

```ruby
begin
  # Create teammate group
  data, status_code, headers = api_instance.create_teammate_group_with_http_info(teammate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->create_teammate_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |
| **create_contact_group** | [**CreateContactGroup**](CreateContactGroup.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_group

> delete_group(contact_group_id)

Delete group

Delete a contact group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
contact_group_id = 'contact_group_id_example' # String | The contact group ID

begin
  # Delete group
  api_instance.delete_group(contact_group_id)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_with_http_info(contact_group_id)

```ruby
begin
  # Delete group
  data, status_code, headers = api_instance.delete_group_with_http_info(contact_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_group_id** | **String** | The contact group ID | [default to &#39;grp_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_contacts_in_group

> <ListAccountContacts200Response> list_contacts_in_group(contact_group_id, opts)

List contacts in group

List the contacts belonging to the requested group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
contact_group_id = 'contact_group_id_example' # String | The contact group ID
opts = {
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  limit: 25 # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List contacts in group
  result = api_instance.list_contacts_in_group(contact_group_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_contacts_in_group: #{e}"
end
```

#### Using the list_contacts_in_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountContacts200Response>, Integer, Hash)> list_contacts_in_group_with_http_info(contact_group_id, opts)

```ruby
begin
  # List contacts in group
  data, status_code, headers = api_instance.list_contacts_in_group_with_http_info(contact_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountContacts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_contacts_in_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_group_id** | **String** | The contact group ID | [default to &#39;grp_123&#39;] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |

### Return type

[**ListAccountContacts200Response**](ListAccountContacts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_groups

> <ListGroups200Response> list_groups

List groups

List the contact groups.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new

begin
  # List groups
  result = api_instance.list_groups
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_groups: #{e}"
end
```

#### Using the list_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroups200Response>, Integer, Hash)> list_groups_with_http_info

```ruby
begin
  # List groups
  data, status_code, headers = api_instance.list_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroups200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListGroups200Response**](ListGroups200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_groups

> <ListGroups200Response> list_team_groups(team_id)

List team groups

List contact groups belonging to the requested team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
team_id = 'team_id_example' # String | The team ID

begin
  # List team groups
  result = api_instance.list_team_groups(team_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_team_groups: #{e}"
end
```

#### Using the list_team_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroups200Response>, Integer, Hash)> list_team_groups_with_http_info(team_id)

```ruby
begin
  # List team groups
  data, status_code, headers = api_instance.list_team_groups_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroups200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_team_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |

### Return type

[**ListGroups200Response**](ListGroups200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_groups

> <ListGroups200Response> list_teammate_groups(teammate_id)

List teammate groups

List the contact groups belonging to the requested teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # List teammate groups
  result = api_instance.list_teammate_groups(teammate_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_teammate_groups: #{e}"
end
```

#### Using the list_teammate_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroups200Response>, Integer, Hash)> list_teammate_groups_with_http_info(teammate_id)

```ruby
begin
  # List teammate groups
  data, status_code, headers = api_instance.list_teammate_groups_with_http_info(teammate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroups200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->list_teammate_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |

### Return type

[**ListGroups200Response**](ListGroups200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_contacts_from_group

> remove_contacts_from_group(contact_group_id, opts)

Remove contacts from group

Remove contacts from the requested group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactGroupsApi.new
contact_group_id = 'contact_group_id_example' # String | The contact group ID
opts = {
  remove_contacts_from_group: FrontApi::RemoveContactsFromGroup.new({contact_ids: ['contact_ids_example']}) # RemoveContactsFromGroup | 
}

begin
  # Remove contacts from group
  api_instance.remove_contacts_from_group(contact_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->remove_contacts_from_group: #{e}"
end
```

#### Using the remove_contacts_from_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_contacts_from_group_with_http_info(contact_group_id, opts)

```ruby
begin
  # Remove contacts from group
  data, status_code, headers = api_instance.remove_contacts_from_group_with_http_info(contact_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ContactGroupsApi->remove_contacts_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_group_id** | **String** | The contact group ID | [default to &#39;grp_123&#39;] |
| **remove_contacts_from_group** | [**RemoveContactsFromGroup**](RemoveContactsFromGroup.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

