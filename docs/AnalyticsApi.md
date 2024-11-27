# FrontApi::AnalyticsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_analytics_export**](AnalyticsApi.md#create_analytics_export) | **POST** /analytics/exports | Create a new analytics export. |
| [**create_analytics_report**](AnalyticsApi.md#create_analytics_report) | **POST** /analytics/reports | Create a new analytics report. |
| [**get_analytics_export**](AnalyticsApi.md#get_analytics_export) | **GET** /analytics/exports/{export_id} | Fetch an analytics export. |
| [**get_analytics_report**](AnalyticsApi.md#get_analytics_report) | **GET** /analytics/reports/{report_uid} | Fetch an analytics report. |


## create_analytics_export

> <AnalyticsExportResponse> create_analytics_export(opts)

Create a new analytics export.

Create a new analytics export of messages or events (activities) over a specific time span. The export will be executed asynchronously. The response will include a link that can be used to retrieve the export status & result. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AnalyticsApi.new
opts = {
  analytics_export_request: FrontApi::AnalyticsActivitiesExportsColumns.new({columns: [FrontApi::AnalyticsActivitiesColumns::ACTIVITY_ID]}) # AnalyticsExportRequest | 
}

begin
  # Create a new analytics export.
  result = api_instance.create_analytics_export(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytics_export: #{e}"
end
```

#### Using the create_analytics_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticsExportResponse>, Integer, Hash)> create_analytics_export_with_http_info(opts)

```ruby
begin
  # Create a new analytics export.
  data, status_code, headers = api_instance.create_analytics_export_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticsExportResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytics_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **analytics_export_request** | [**AnalyticsExportRequest**](AnalyticsExportRequest.md) |  | [optional] |

### Return type

[**AnalyticsExportResponse**](AnalyticsExportResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_analytics_report

> <AnalyticsReportResponse> create_analytics_report(opts)

Create a new analytics report.

Create a new analytics report for a set of metrics over a specific time span. Different filters (e.g. Inbox v Tag v Teammates) will be joined with AND logic, but the IDs within a filter will be joined with OR logic (e.g. Inbox A or Inbox B, Tag A or Tag B). The report will be executed asynchronously. The response will include a link that can be used to retrieve the report status & result. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AnalyticsApi.new
opts = {
  analytics_report_request: FrontApi::AnalyticsReportRequest.new({start: 3.56, _end: 3.56, metrics: [FrontApi::AnalyticsMetricId::AVG_CSAT_SURVEY_RESPONSE]}) # AnalyticsReportRequest | 
}

begin
  # Create a new analytics report.
  result = api_instance.create_analytics_report(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytics_report: #{e}"
end
```

#### Using the create_analytics_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticsReportResponse>, Integer, Hash)> create_analytics_report_with_http_info(opts)

```ruby
begin
  # Create a new analytics report.
  data, status_code, headers = api_instance.create_analytics_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticsReportResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->create_analytics_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **analytics_report_request** | [**AnalyticsReportRequest**](AnalyticsReportRequest.md) |  | [optional] |

### Return type

[**AnalyticsReportResponse**](AnalyticsReportResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_analytics_export

> <AnalyticsExportResponse> get_analytics_export(export_id)

Fetch an analytics export.

Fetch an analytics exports. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AnalyticsApi.new
export_id = 'export_id_example' # String | The export ID.

begin
  # Fetch an analytics export.
  result = api_instance.get_analytics_export(export_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_export: #{e}"
end
```

#### Using the get_analytics_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticsExportResponse>, Integer, Hash)> get_analytics_export_with_http_info(export_id)

```ruby
begin
  # Fetch an analytics export.
  data, status_code, headers = api_instance.get_analytics_export_with_http_info(export_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticsExportResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_id** | **String** | The export ID. | [default to &#39;exp_123&#39;] |

### Return type

[**AnalyticsExportResponse**](AnalyticsExportResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_analytics_report

> <AnalyticsReportResponse> get_analytics_report(report_uid)

Fetch an analytics report.

Fetch an analytics report. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AnalyticsApi.new
report_uid = 'report_uid_example' # String | The report UID.

begin
  # Fetch an analytics report.
  result = api_instance.get_analytics_report(report_uid)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_report: #{e}"
end
```

#### Using the get_analytics_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnalyticsReportResponse>, Integer, Hash)> get_analytics_report_with_http_info(report_uid)

```ruby
begin
  # Fetch an analytics report.
  data, status_code, headers = api_instance.get_analytics_report_with_http_info(report_uid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnalyticsReportResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_uid** | **String** | The report UID. | [default to &#39;723ec32796f12c6f05f6b124d8ef76191a38cec990e0f65d549206c51373f1a0&#39;] |

### Return type

[**AnalyticsReportResponse**](AnalyticsReportResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

