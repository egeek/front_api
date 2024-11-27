# FrontApi::TeamsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_teammates_to_team**](TeamsApi.md#add_teammates_to_team) | **POST** /teams/{team_id}/teammates | Add teammates to team |
| [**get_team**](TeamsApi.md#get_team) | **GET** /teams/{team_id} | Get team |
| [**list_teams**](TeamsApi.md#list_teams) | **GET** /teams | List teams |
| [**remove_teammates_from_team**](TeamsApi.md#remove_teammates_from_team) | **DELETE** /teams/{team_id}/teammates | Remove teammates from team |


## add_teammates_to_team

> add_teammates_to_team(team_id, opts)

Add teammates to team

Add one or more teammates to a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeamsApi.new
team_id = 'team_id_example' # String | The Team ID
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to add. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
}

begin
  # Add teammates to team
  api_instance.add_teammates_to_team(team_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->add_teammates_to_team: #{e}"
end
```

#### Using the add_teammates_to_team_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_teammates_to_team_with_http_info(team_id, opts)

```ruby
begin
  # Add teammates to team
  data, status_code, headers = api_instance.add_teammates_to_team_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->add_teammates_to_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The Team ID | [default to &#39;tim_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to add. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_team

> <TeamResponse> get_team(team_id)

Get team

Fetch a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeamsApi.new
team_id = 'team_id_example' # String | The Team ID

begin
  # Get team
  result = api_instance.get_team(team_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->get_team: #{e}"
end
```

#### Using the get_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamResponse>, Integer, Hash)> get_team_with_http_info(team_id)

```ruby
begin
  # Get team
  data, status_code, headers = api_instance.get_team_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->get_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The Team ID | [default to &#39;tim_123&#39;] |

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> <ListCompanyTeammateGroupTeams200Response> list_teams

List teams

List the teams (workspaces) in the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeamsApi.new

begin
  # List teams
  result = api_instance.list_teams
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->list_teams: #{e}"
end
```

#### Using the list_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCompanyTeammateGroupTeams200Response>, Integer, Hash)> list_teams_with_http_info

```ruby
begin
  # List teams
  data, status_code, headers = api_instance.list_teams_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCompanyTeammateGroupTeams200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->list_teams_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListCompanyTeammateGroupTeams200Response**](ListCompanyTeammateGroupTeams200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_teammates_from_team

> remove_teammates_from_team(team_id, opts)

Remove teammates from team

Remove one or more teammates from a team (workspace). Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::TeamsApi.new
team_id = 'team_id_example' # String | The Team ID
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to remove from the team
}

begin
  # Remove teammates from team
  api_instance.remove_teammates_from_team(team_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->remove_teammates_from_team: #{e}"
end
```

#### Using the remove_teammates_from_team_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_teammates_from_team_with_http_info(team_id, opts)

```ruby
begin
  # Remove teammates from team
  data, status_code, headers = api_instance.remove_teammates_from_team_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling TeamsApi->remove_teammates_from_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The Team ID | [default to &#39;tim_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to remove from the team | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

