# FrontApi::EventsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_event**](EventsApi.md#get_event) | **GET** /events/{event_id} | Get event |
| [**list_events**](EventsApi.md#list_events) | **GET** /events | List events |


## get_event

> <EventResponse> get_event(event_id)

Get event

Fetch an event. Refer to the [Events](https://dev.frontapp.com/reference/events) topic for more information, including sorting and filtering. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::EventsApi.new
event_id = 'event_id_example' # String | The event ID

begin
  # Get event
  result = api_instance.get_event(event_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> get_event_with_http_info(event_id)

```ruby
begin
  # Get event
  data, status_code, headers = api_instance.get_event_with_http_info(event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling EventsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The event ID | [default to &#39;evt_55c8c149&#39;] |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> <ListConversationEvents200Response> list_events(opts)

List events

Lists all the detailed events which occured in the inboxes of the company ordered in reverse chronological order (newest first). Refer to the [Events](https://dev.frontapp.com/reference/events) topic for more information, including sorting and filtering. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::EventsApi.new
opts = {
  q: 'q_example', # String | [Search query object](https://dev.frontapp.com/docs/query-object-q) with optional properties `before`, `after`, or `types`. `before` and `after` should be a timestamp in seconds with up to 3 decimal places. `types` should be a list of [event types](https://dev.frontapp.com/reference/events).
  limit: 56, # Integer | Max number of results per page (max 15)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f', # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  sort_by: 'sort_by_example', # String | Field used to sort the events. Only supports `created_at`.
  sort_order: 'asc' # String | Order by which results should be sorted
}

begin
  # List events
  result = api_instance.list_events(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling EventsApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversationEvents200Response>, Integer, Hash)> list_events_with_http_info(opts)

```ruby
begin
  # List events
  data, status_code, headers = api_instance.list_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversationEvents200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling EventsApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | [Search query object](https://dev.frontapp.com/docs/query-object-q) with optional properties &#x60;before&#x60;, &#x60;after&#x60;, or &#x60;types&#x60;. &#x60;before&#x60; and &#x60;after&#x60; should be a timestamp in seconds with up to 3 decimal places. &#x60;types&#x60; should be a list of [event types](https://dev.frontapp.com/reference/events). | [optional] |
| **limit** | **Integer** | Max number of results per page (max 15) | [optional][default to 15] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **sort_by** | **String** | Field used to sort the events. Only supports &#x60;created_at&#x60;. | [optional] |
| **sort_order** | **String** | Order by which results should be sorted | [optional] |

### Return type

[**ListConversationEvents200Response**](ListConversationEvents200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

