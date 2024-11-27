# FrontApi::TeammateGroupsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_company_teammate_group_team_inboxes**](TeammateGroupsApi.md#add_company_teammate_group_team_inboxes) | **POST** /teammate_groups/{teammate_group_id}/inboxes | Add teammate group team inboxes |
| [**add_company_teammate_group_teammates**](TeammateGroupsApi.md#add_company_teammate_group_teammates) | **POST** /teammate_groups/{teammate_group_id}/teammates | Add teammate group teammates |
| [**add_company_teammate_group_teams**](TeammateGroupsApi.md#add_company_teammate_group_teams) | **POST** /teammate_groups/{teammate_group_id}/teams | Add teammate group teams |
| [**create_company_teammate_group**](TeammateGroupsApi.md#create_company_teammate_group) | **POST** /teammate_groups | Create teammate group |
| [**delete_company_teammate_group**](TeammateGroupsApi.md#delete_company_teammate_group) | **DELETE** /teammate_groups/{teammate_group_id} | Delete teammate group |
| [**get_company_teammate_group**](TeammateGroupsApi.md#get_company_teammate_group) | **GET** /teammate_groups/{teammate_group_id} | Get teammate group |
| [**list_company_teammate_group_team_inboxes**](TeammateGroupsApi.md#list_company_teammate_group_team_inboxes) | **GET** /teammate_groups/{teammate_group_id}/inboxes | List teammate group team inboxes |
| [**list_company_teammate_group_teammates**](TeammateGroupsApi.md#list_company_teammate_group_teammates) | **GET** /teammate_groups/{teammate_group_id}/teammates | List teammate group teammates |
| [**list_company_teammate_group_teams**](TeammateGroupsApi.md#list_company_teammate_group_teams) | **GET** /teammate_groups/{teammate_group_id}/teams | List teammate group teams |
| [**list_company_teammate_groups**](TeammateGroupsApi.md#list_company_teammate_groups) | **GET** /teammate_groups | List teammate groups |
| [**remove_company_teammate_group_team_inboxes**](TeammateGroupsApi.md#remove_company_teammate_group_team_inboxes) | **DELETE** /teammate_groups/{teammate_group_id}/inboxes | Remove teammate group team inboxes |
| [**remove_company_teammate_group_teammates**](TeammateGroupsApi.md#remove_company_teammate_group_teammates) | **DELETE** /teammate_groups/{teammate_group_id}/teammates | Remove teammate group teammates |
| [**remove_company_teammate_group_teams**](TeammateGroupsApi.md#remove_company_teammate_group_teams) | **DELETE** /teammate_groups/{teammate_group_id}/teams | Remove teammate group teams |
| [**update_a_company_teammate_group**](TeammateGroupsApi.md#update_a_company_teammate_group) | **PATCH** /teammate_groups/{teammate_group_id} | Update a teammate group |


## add_company_teammate_group_team_inboxes

> add_company_teammate_group_team_inboxes(teammate_group_id, opts)

Add teammate group team inboxes

Links non-public inboxes to the teammate group. The inbox must be part of a team that has been added to the teammate group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.
opts = {
  inbox_ids: FrontApi::InboxIds.new({inbox_ids: ['inbox_ids_example']}) # InboxIds | Inbox IDs to add
}

begin
  # Add teammate group team inboxes
  api_instance.add_company_teammate_group_team_inboxes(teammate_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->add_company_teammate_group_team_inboxes: #{e}"
end
```

#### Using the add_company_teammate_group_team_inboxes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_company_teammate_group_team_inboxes_with_http_info(teammate_group_id, opts)

```ruby
begin
  # Add teammate group team inboxes
  data, status_code, headers = api_instance.add_company_teammate_group_team_inboxes_with_http_info(teammate_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->add_company_teammate_group_team_inboxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |
| **inbox_ids** | [**InboxIds**](InboxIds.md) | Inbox IDs to add | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## add_company_teammate_group_teammates

> add_company_teammate_group_teammates(teammate_group_id, opts)

Add teammate group teammates

Add teammate group teammates. Note - You cannot modify a teammate group that is managed by SCIM.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to add. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
}

begin
  # Add teammate group teammates
  api_instance.add_company_teammate_group_teammates(teammate_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->add_company_teammate_group_teammates: #{e}"
end
```

#### Using the add_company_teammate_group_teammates_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_company_teammate_group_teammates_with_http_info(teammate_group_id, opts)

```ruby
begin
  # Add teammate group teammates
  data, status_code, headers = api_instance.add_company_teammate_group_teammates_with_http_info(teammate_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->add_company_teammate_group_teammates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to add. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## add_company_teammate_group_teams

> add_company_teammate_group_teams(teammate_group_id, opts)

Add teammate group teams

Adds teams to the teammate group. Any teams added to the teammate group will automatically link public inboxes. Non-public inboxes can be added to the teammate group separately.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.
opts = {
  team_ids: FrontApi::TeamIds.new({team_ids: ['team_ids_example']}) # TeamIds | Team IDs to add
}

begin
  # Add teammate group teams
  api_instance.add_company_teammate_group_teams(teammate_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->add_company_teammate_group_teams: #{e}"
end
```

#### Using the add_company_teammate_group_teams_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_company_teammate_group_teams_with_http_info(teammate_group_id, opts)

```ruby
begin
  # Add teammate group teams
  data, status_code, headers = api_instance.add_company_teammate_group_teams_with_http_info(teammate_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->add_company_teammate_group_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |
| **team_ids** | [**TeamIds**](TeamIds.md) | Team IDs to add | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_company_teammate_group

> <TeammateGroupResponse> create_company_teammate_group(opts)

Create teammate group

Create a new teammate group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
opts = {
  create_teammate_group: FrontApi::CreateTeammateGroup.new({name: 'name_example'}) # CreateTeammateGroup | 
}

begin
  # Create teammate group
  result = api_instance.create_company_teammate_group(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->create_company_teammate_group: #{e}"
end
```

#### Using the create_company_teammate_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeammateGroupResponse>, Integer, Hash)> create_company_teammate_group_with_http_info(opts)

```ruby
begin
  # Create teammate group
  data, status_code, headers = api_instance.create_company_teammate_group_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeammateGroupResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->create_company_teammate_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_teammate_group** | [**CreateTeammateGroup**](CreateTeammateGroup.md) |  | [optional] |

### Return type

[**TeammateGroupResponse**](TeammateGroupResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_company_teammate_group

> delete_company_teammate_group(teammate_group_id)

Delete teammate group

Deletes a teammate group. Note - You cannot delete a teammate group that is managed by SCIM.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.

begin
  # Delete teammate group
  api_instance.delete_company_teammate_group(teammate_group_id)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->delete_company_teammate_group: #{e}"
end
```

#### Using the delete_company_teammate_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_company_teammate_group_with_http_info(teammate_group_id)

```ruby
begin
  # Delete teammate group
  data, status_code, headers = api_instance.delete_company_teammate_group_with_http_info(teammate_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->delete_company_teammate_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_company_teammate_group

> <TeammateGroupResponse> get_company_teammate_group(teammate_group_id)

Get teammate group

Fetch a teammate group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.

begin
  # Get teammate group
  result = api_instance.get_company_teammate_group(teammate_group_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->get_company_teammate_group: #{e}"
end
```

#### Using the get_company_teammate_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeammateGroupResponse>, Integer, Hash)> get_company_teammate_group_with_http_info(teammate_group_id)

```ruby
begin
  # Get teammate group
  data, status_code, headers = api_instance.get_company_teammate_group_with_http_info(teammate_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeammateGroupResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->get_company_teammate_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |

### Return type

[**TeammateGroupResponse**](TeammateGroupResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_company_teammate_group_team_inboxes

> <ListConversationInboxes200Response> list_company_teammate_group_team_inboxes(teammate_group_id)

List teammate group team inboxes

List inboxes that the teammate group has access to via its associated teams.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.

begin
  # List teammate group team inboxes
  result = api_instance.list_company_teammate_group_team_inboxes(teammate_group_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_group_team_inboxes: #{e}"
end
```

#### Using the list_company_teammate_group_team_inboxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationInboxes200Response>, Integer, Hash)> list_company_teammate_group_team_inboxes_with_http_info(teammate_group_id)

```ruby
begin
  # List teammate group team inboxes
  data, status_code, headers = api_instance.list_company_teammate_group_team_inboxes_with_http_info(teammate_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationInboxes200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_group_team_inboxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |

### Return type

[**ListConversationInboxes200Response**](ListConversationInboxes200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_company_teammate_group_teammates

> <ListCommentMentions200Response> list_company_teammate_group_teammates(teammate_group_id)

List teammate group teammates

List teammate group teammates.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.

begin
  # List teammate group teammates
  result = api_instance.list_company_teammate_group_teammates(teammate_group_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_group_teammates: #{e}"
end
```

#### Using the list_company_teammate_group_teammates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommentMentions200Response>, Integer, Hash)> list_company_teammate_group_teammates_with_http_info(teammate_group_id)

```ruby
begin
  # List teammate group teammates
  data, status_code, headers = api_instance.list_company_teammate_group_teammates_with_http_info(teammate_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommentMentions200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_group_teammates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |

### Return type

[**ListCommentMentions200Response**](ListCommentMentions200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_company_teammate_group_teams

> <ListCompanyTeammateGroupTeams200Response> list_company_teammate_group_teams(teammate_group_id)

List teammate group teams

List teams added to the teammate group. Any teams added to the teammate group will automatically link public inboxes.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.

begin
  # List teammate group teams
  result = api_instance.list_company_teammate_group_teams(teammate_group_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_group_teams: #{e}"
end
```

#### Using the list_company_teammate_group_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTeammateGroupTeams200Response>, Integer, Hash)> list_company_teammate_group_teams_with_http_info(teammate_group_id)

```ruby
begin
  # List teammate group teams
  data, status_code, headers = api_instance.list_company_teammate_group_teams_with_http_info(teammate_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTeammateGroupTeams200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_group_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |

### Return type

[**ListCompanyTeammateGroupTeams200Response**](ListCompanyTeammateGroupTeams200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_company_teammate_groups

> <ListCompanyTeammateGroups200Response> list_company_teammate_groups

List teammate groups

List the teammate groups in the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new

begin
  # List teammate groups
  result = api_instance.list_company_teammate_groups
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_groups: #{e}"
end
```

#### Using the list_company_teammate_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTeammateGroups200Response>, Integer, Hash)> list_company_teammate_groups_with_http_info

```ruby
begin
  # List teammate groups
  data, status_code, headers = api_instance.list_company_teammate_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTeammateGroups200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->list_company_teammate_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListCompanyTeammateGroups200Response**](ListCompanyTeammateGroups200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_company_teammate_group_team_inboxes

> remove_company_teammate_group_team_inboxes(teammate_group_id, opts)

Remove teammate group team inboxes

Unlinks non-public inboxes from the teammate group.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.
opts = {
  inbox_ids: FrontApi::InboxIds.new({inbox_ids: ['inbox_ids_example']}) # InboxIds | Inbox IDs to remove
}

begin
  # Remove teammate group team inboxes
  api_instance.remove_company_teammate_group_team_inboxes(teammate_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->remove_company_teammate_group_team_inboxes: #{e}"
end
```

#### Using the remove_company_teammate_group_team_inboxes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_company_teammate_group_team_inboxes_with_http_info(teammate_group_id, opts)

```ruby
begin
  # Remove teammate group team inboxes
  data, status_code, headers = api_instance.remove_company_teammate_group_team_inboxes_with_http_info(teammate_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->remove_company_teammate_group_team_inboxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |
| **inbox_ids** | [**InboxIds**](InboxIds.md) | Inbox IDs to remove | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## remove_company_teammate_group_teammates

> remove_company_teammate_group_teammates(teammate_group_id, opts)

Remove teammate group teammates

Remove teammate group teammates. Note - You cannot modify a teammate group that is managed by SCIM.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to remove. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
}

begin
  # Remove teammate group teammates
  api_instance.remove_company_teammate_group_teammates(teammate_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->remove_company_teammate_group_teammates: #{e}"
end
```

#### Using the remove_company_teammate_group_teammates_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_company_teammate_group_teammates_with_http_info(teammate_group_id, opts)

```ruby
begin
  # Remove teammate group teammates
  data, status_code, headers = api_instance.remove_company_teammate_group_teammates_with_http_info(teammate_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->remove_company_teammate_group_teammates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to remove. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## remove_company_teammate_group_teams

> remove_company_teammate_group_teams(teammate_group_id, opts)

Remove teammate group teams

Remove teams from the teammate group. Unlinks to any associated team inboxes.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.
opts = {
  team_ids: FrontApi::TeamIds.new({team_ids: ['team_ids_example']}) # TeamIds | Team IDs to remove.
}

begin
  # Remove teammate group teams
  api_instance.remove_company_teammate_group_teams(teammate_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->remove_company_teammate_group_teams: #{e}"
end
```

#### Using the remove_company_teammate_group_teams_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_company_teammate_group_teams_with_http_info(teammate_group_id, opts)

```ruby
begin
  # Remove teammate group teams
  data, status_code, headers = api_instance.remove_company_teammate_group_teams_with_http_info(teammate_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->remove_company_teammate_group_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |
| **team_ids** | [**TeamIds**](TeamIds.md) | Team IDs to remove. | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_a_company_teammate_group

> update_a_company_teammate_group(teammate_group_id, opts)

Update a teammate group

Updates a teammate group. Note - You cannot modify a teammate group that is managed by SCIM.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeammateGroupsApi.new
teammate_group_id = 'teammate_group_id_example' # String | The teammate group ID.
opts = {
  update_teammate_group: FrontApi::UpdateTeammateGroup.new # UpdateTeammateGroup | 
}

begin
  # Update a teammate group
  api_instance.update_a_company_teammate_group(teammate_group_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->update_a_company_teammate_group: #{e}"
end
```

#### Using the update_a_company_teammate_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_a_company_teammate_group_with_http_info(teammate_group_id, opts)

```ruby
begin
  # Update a teammate group
  data, status_code, headers = api_instance.update_a_company_teammate_group_with_http_info(teammate_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeammateGroupsApi->update_a_company_teammate_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_group_id** | **String** | The teammate group ID. | [default to &#39;cir_123&#39;] |
| **update_teammate_group** | [**UpdateTeammateGroup**](UpdateTeammateGroup.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

