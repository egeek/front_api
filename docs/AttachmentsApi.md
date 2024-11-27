# FrontApi::AttachmentsApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_attachment**](AttachmentsApi.md#download_attachment) | **GET** /download/{attachment_link_id} | Download attachment |


## download_attachment

> <Attachment> download_attachment(attachment_link_id)

Download attachment

Download an attachment file.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::AttachmentsApi.new
attachment_link_id = 'attachment_link_id_example' # String | The Attachment ID

begin
  # Download attachment
  result = api_instance.download_attachment(attachment_link_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling AttachmentsApi->download_attachment: #{e}"
end
```

#### Using the download_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attachment>, Integer, Hash)> download_attachment_with_http_info(attachment_link_id)

```ruby
begin
  # Download attachment
  data, status_code, headers = api_instance.download_attachment_with_http_info(attachment_link_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attachment>
rescue FrontApi::ApiError => e
  puts "Error when calling AttachmentsApi->download_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachment_link_id** | **String** | The Attachment ID | [default to &#39;fil_55c8c149&#39;] |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

