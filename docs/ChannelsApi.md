# FrontApi::ChannelsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_a_channel**](ChannelsApi.md#create_a_channel) | **POST** /inboxes/{inbox_id}/channels | Create a channel |
| [**get_channel**](ChannelsApi.md#get_channel) | **GET** /channels/{channel_id} | Get channel |
| [**list_channels**](ChannelsApi.md#list_channels) | **GET** /channels | List channels |
| [**list_team_channels**](ChannelsApi.md#list_team_channels) | **GET** /teams/{team_id}/channels | List team channels |
| [**list_teammate_channels**](ChannelsApi.md#list_teammate_channels) | **GET** /teammates/{teammate_id}/channels | List teammate channels |
| [**update_channel**](ChannelsApi.md#update_channel) | **PATCH** /channels/{channel_id} | Update Channel |
| [**validate_channel**](ChannelsApi.md#validate_channel) | **POST** /channels/{channel_id}/validate | Validate channel |


## create_a_channel

> create_a_channel(inbox_id, opts)

Create a channel

Create a channel in an inbox.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ChannelsApi.new
inbox_id = 'inbox_id_example' # String | The Inbox ID
opts = {
  create_channel: FrontApi::CreateChannel.new({type: 'custom'}) # CreateChannel | Channel to create
}

begin
  # Create a channel
  api_instance.create_a_channel(inbox_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->create_a_channel: #{e}"
end
```

#### Using the create_a_channel_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_a_channel_with_http_info(inbox_id, opts)

```ruby
begin
  # Create a channel
  data, status_code, headers = api_instance.create_a_channel_with_http_info(inbox_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->create_a_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox_id** | **String** | The Inbox ID | [default to &#39;inb_123&#39;] |
| **create_channel** | [**CreateChannel**](CreateChannel.md) | Channel to create | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_channel

> <ChannelResponse> get_channel(channel_id)

Get channel

Fetch a channel.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ChannelsApi.new
channel_id = 'channel_id_example' # String | The Channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # Get channel
  result = api_instance.get_channel(channel_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->get_channel: #{e}"
end
```

#### Using the get_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChannelResponse>, Integer, Hash)> get_channel_with_http_info(channel_id)

```ruby
begin
  # Get channel
  data, status_code, headers = api_instance.get_channel_with_http_info(channel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChannelResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->get_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The Channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;cha_123&#39;] |

### Return type

[**ChannelResponse**](ChannelResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_channels

> <ListChannels200Response> list_channels

List channels

List the channels of the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ChannelsApi.new

begin
  # List channels
  result = api_instance.list_channels
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->list_channels: #{e}"
end
```

#### Using the list_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannels200Response>, Integer, Hash)> list_channels_with_http_info

```ruby
begin
  # List channels
  data, status_code, headers = api_instance.list_channels_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannels200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->list_channels_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListChannels200Response**](ListChannels200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_channels

> <ListChannels200Response> list_team_channels(team_id)

List team channels

List the channels of a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ChannelsApi.new
team_id = 'team_id_example' # String | The team ID

begin
  # List team channels
  result = api_instance.list_team_channels(team_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->list_team_channels: #{e}"
end
```

#### Using the list_team_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannels200Response>, Integer, Hash)> list_team_channels_with_http_info(team_id)

```ruby
begin
  # List team channels
  data, status_code, headers = api_instance.list_team_channels_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannels200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->list_team_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |

### Return type

[**ListChannels200Response**](ListChannels200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_channels

> <ListChannels200Response> list_teammate_channels(teammate_id)

List teammate channels

List the channels of a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ChannelsApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # List teammate channels
  result = api_instance.list_teammate_channels(teammate_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->list_teammate_channels: #{e}"
end
```

#### Using the list_teammate_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChannels200Response>, Integer, Hash)> list_teammate_channels_with_http_info(teammate_id)

```ruby
begin
  # List teammate channels
  data, status_code, headers = api_instance.list_teammate_channels_with_http_info(teammate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChannels200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->list_teammate_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |

### Return type

[**ListChannels200Response**](ListChannels200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_channel

> update_channel(channel_id, opts)

Update Channel

Update a channel.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ChannelsApi.new
channel_id = 'channel_id_example' # String | The Channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  update_channel: FrontApi::UpdateChannel.new # UpdateChannel | Channel details
}

begin
  # Update Channel
  api_instance.update_channel(channel_id, opts)
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->update_channel: #{e}"
end
```

#### Using the update_channel_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_channel_with_http_info(channel_id, opts)

```ruby
begin
  # Update Channel
  data, status_code, headers = api_instance.update_channel_with_http_info(channel_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->update_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The Channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;cha_123&#39;] |
| **update_channel** | [**UpdateChannel**](UpdateChannel.md) | Channel details | [optional] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## validate_channel

> <ValidateChannel202Response> validate_channel(channel_id)

Validate channel

Asynchronously validate an SMTP channel (this endpoint is irrelevant to other channel types). When you create an SMTP channel via the API, [create a channel](https://dev.frontapp.com/reference/post_inboxes-inbox-id-channels) with type smtp and the send_as set to the needed email address. You then [configure the email provider](https://help.front.com/en/articles/2081), after which you use this endpoint to asynchronously validate the SMTP settings.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ChannelsApi.new
channel_id = 'channel_id_example' # String | The Channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # Validate channel
  result = api_instance.validate_channel(channel_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->validate_channel: #{e}"
end
```

#### Using the validate_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateChannel202Response>, Integer, Hash)> validate_channel_with_http_info(channel_id)

```ruby
begin
  # Validate channel
  data, status_code, headers = api_instance.validate_channel_with_http_info(channel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateChannel202Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ChannelsApi->validate_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The Channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;cha_123&#39;] |

### Return type

[**ValidateChannel202Response**](ValidateChannel202Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

