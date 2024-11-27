# FrontApi::ShiftsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_teammates_to_shift**](ShiftsApi.md#add_teammates_to_shift) | **POST** /shift/{shift_id}/teammates | Add teammates to shift |
| [**create_shift**](ShiftsApi.md#create_shift) | **POST** /shifts | Create shift |
| [**create_team_shift**](ShiftsApi.md#create_team_shift) | **POST** /teams/{team_id}/shifts | Create team shift |
| [**get_shift**](ShiftsApi.md#get_shift) | **GET** /shift/{shift_id} | Get shift |
| [**list_shifts**](ShiftsApi.md#list_shifts) | **GET** /shifts | List Shifts |
| [**list_shifts_teammates**](ShiftsApi.md#list_shifts_teammates) | **GET** /shift/{shift_id}/teammates | List shift&#39;s teammates |
| [**list_team_shifts**](ShiftsApi.md#list_team_shifts) | **GET** /teams/{team_id}/shifts | List team Shifts |
| [**list_teammate_shifts**](ShiftsApi.md#list_teammate_shifts) | **GET** /teammates/{teammate_id}/shifts | List Teammate Shifts |
| [**remove_teammates_from_shift**](ShiftsApi.md#remove_teammates_from_shift) | **DELETE** /shift/{shift_id}/teammates | Remove teammates from shift |
| [**update_shift**](ShiftsApi.md#update_shift) | **PATCH** /shifts/{shift_id} | Update shift |


## add_teammates_to_shift

> add_teammates_to_shift(shift_id, opts)

Add teammates to shift

Add teammates to a shift. The selected teammates must be in the team that owns the shift.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
shift_id = 'shift_id_example' # String | The Shift ID
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to add. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
}

begin
  # Add teammates to shift
  api_instance.add_teammates_to_shift(shift_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->add_teammates_to_shift: #{e}"
end
```

#### Using the add_teammates_to_shift_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_teammates_to_shift_with_http_info(shift_id, opts)

```ruby
begin
  # Add teammates to shift
  data, status_code, headers = api_instance.add_teammates_to_shift_with_http_info(shift_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->add_teammates_to_shift_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shift_id** | **String** | The Shift ID | [default to &#39;shf_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to add. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_shift

> <ShiftResponse> create_shift(opts)

Create shift

Create a shift.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
opts = {
  create_shift: FrontApi::CreateShift.new({name: 'name_example', color: 'black', timezone: 'timezone_example', times: FrontApi::ShiftIntervals.new, teammate_ids: ['teammate_ids_example']}) # CreateShift | Shift to create details
}

begin
  # Create shift
  result = api_instance.create_shift(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->create_shift: #{e}"
end
```

#### Using the create_shift_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShiftResponse>, Integer, Hash)> create_shift_with_http_info(opts)

```ruby
begin
  # Create shift
  data, status_code, headers = api_instance.create_shift_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShiftResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->create_shift_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_shift** | [**CreateShift**](CreateShift.md) | Shift to create details | [optional] |

### Return type

[**ShiftResponse**](ShiftResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team_shift

> <ShiftResponse> create_team_shift(team_id, opts)

Create team shift

Create a shift for a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
team_id = 'team_id_example' # String | The Team ID
opts = {
  create_shift: FrontApi::CreateShift.new({name: 'name_example', color: 'black', timezone: 'timezone_example', times: FrontApi::ShiftIntervals.new, teammate_ids: ['teammate_ids_example']}) # CreateShift | Shift to create details
}

begin
  # Create team shift
  result = api_instance.create_team_shift(team_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->create_team_shift: #{e}"
end
```

#### Using the create_team_shift_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShiftResponse>, Integer, Hash)> create_team_shift_with_http_info(team_id, opts)

```ruby
begin
  # Create team shift
  data, status_code, headers = api_instance.create_team_shift_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShiftResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->create_team_shift_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The Team ID | [default to &#39;tim_123&#39;] |
| **create_shift** | [**CreateShift**](CreateShift.md) | Shift to create details | [optional] |

### Return type

[**ShiftResponse**](ShiftResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_shift

> <ShiftResponse> get_shift(shift_id)

Get shift

Fetch a shift.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
shift_id = 'shift_id_example' # String | The Shift ID

begin
  # Get shift
  result = api_instance.get_shift(shift_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->get_shift: #{e}"
end
```

#### Using the get_shift_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShiftResponse>, Integer, Hash)> get_shift_with_http_info(shift_id)

```ruby
begin
  # Get shift
  data, status_code, headers = api_instance.get_shift_with_http_info(shift_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShiftResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->get_shift_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shift_id** | **String** | The Shift ID | [default to &#39;shf_123&#39;] |

### Return type

[**ShiftResponse**](ShiftResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_shifts

> <ListShifts200Response> list_shifts

List Shifts

List the shifts.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new

begin
  # List Shifts
  result = api_instance.list_shifts
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_shifts: #{e}"
end
```

#### Using the list_shifts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListShifts200Response>, Integer, Hash)> list_shifts_with_http_info

```ruby
begin
  # List Shifts
  data, status_code, headers = api_instance.list_shifts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListShifts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_shifts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListShifts200Response**](ListShifts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_shifts_teammates

> <ListCommentMentions200Response> list_shifts_teammates(shift_id)

List shift's teammates

List the teammates assigned to a shift.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
shift_id = 'shift_id_example' # String | The Shift ID

begin
  # List shift's teammates
  result = api_instance.list_shifts_teammates(shift_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_shifts_teammates: #{e}"
end
```

#### Using the list_shifts_teammates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommentMentions200Response>, Integer, Hash)> list_shifts_teammates_with_http_info(shift_id)

```ruby
begin
  # List shift's teammates
  data, status_code, headers = api_instance.list_shifts_teammates_with_http_info(shift_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommentMentions200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_shifts_teammates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shift_id** | **String** | The Shift ID | [default to &#39;shf_123&#39;] |

### Return type

[**ListCommentMentions200Response**](ListCommentMentions200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_shifts

> <ListShifts200Response> list_team_shifts(team_id)

List team Shifts

List the shifts for a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
team_id = 'team_id_example' # String | The team ID

begin
  # List team Shifts
  result = api_instance.list_team_shifts(team_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_team_shifts: #{e}"
end
```

#### Using the list_team_shifts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListShifts200Response>, Integer, Hash)> list_team_shifts_with_http_info(team_id)

```ruby
begin
  # List team Shifts
  data, status_code, headers = api_instance.list_team_shifts_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListShifts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_team_shifts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |

### Return type

[**ListShifts200Response**](ListShifts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_shifts

> <ListShifts200Response> list_teammate_shifts(teammate_id)

List Teammate Shifts

Lists all the shifts for the teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # List Teammate Shifts
  result = api_instance.list_teammate_shifts(teammate_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_teammate_shifts: #{e}"
end
```

#### Using the list_teammate_shifts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListShifts200Response>, Integer, Hash)> list_teammate_shifts_with_http_info(teammate_id)

```ruby
begin
  # List Teammate Shifts
  data, status_code, headers = api_instance.list_teammate_shifts_with_http_info(teammate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListShifts200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->list_teammate_shifts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |

### Return type

[**ListShifts200Response**](ListShifts200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_teammates_from_shift

> remove_teammates_from_shift(shift_id, opts)

Remove teammates from shift

Remove teammates from a shift.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
shift_id = 'shift_id_example' # String | The Shift ID
opts = {
  teammate_ids: FrontApi::TeammateIds.new({teammate_ids: ['teammate_ids_example']}) # TeammateIds | Teammate IDs to remove. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
}

begin
  # Remove teammates from shift
  api_instance.remove_teammates_from_shift(shift_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->remove_teammates_from_shift: #{e}"
end
```

#### Using the remove_teammates_from_shift_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_teammates_from_shift_with_http_info(shift_id, opts)

```ruby
begin
  # Remove teammates from shift
  data, status_code, headers = api_instance.remove_teammates_from_shift_with_http_info(shift_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->remove_teammates_from_shift_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shift_id** | **String** | The Shift ID | [default to &#39;shf_123&#39;] |
| **teammate_ids** | [**TeammateIds**](TeammateIds.md) | Teammate IDs to remove. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_shift

> update_shift(shift_id, opts)

Update shift

Update a shift.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ShiftsApi.new
shift_id = 'shift_id_example' # String | The Shift ID
opts = {
  update_shift: FrontApi::UpdateShift.new # UpdateShift | Updated Shift Body
}

begin
  # Update shift
  api_instance.update_shift(shift_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->update_shift: #{e}"
end
```

#### Using the update_shift_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_shift_with_http_info(shift_id, opts)

```ruby
begin
  # Update shift
  data, status_code, headers = api_instance.update_shift_with_http_info(shift_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ShiftsApi->update_shift_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shift_id** | **String** | The Shift ID | [default to &#39;shf_123&#39;] |
| **update_shift** | [**UpdateShift**](UpdateShift.md) | Updated Shift Body | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

