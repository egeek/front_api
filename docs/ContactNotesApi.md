# FrontApi::ContactNotesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_note**](ContactNotesApi.md#add_note) | **POST** /contacts/{contact_id}/notes | Add note |
| [**list_notes**](ContactNotesApi.md#list_notes) | **GET** /contacts/{contact_id}/notes | List notes |


## add_note

> <ContactNoteResponses> add_note(contact_id, opts)

Add note

Create a new note on a contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactNotesApi.new
contact_id = 'contact_id_example' # String | The contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
opts = {
  create_contact_note: FrontApi::CreateContactNote.new({author_id: 'author_id_example', body: 'body_example'}) # CreateContactNote | 
}

begin
  # Add note
  result = api_instance.add_note(contact_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactNotesApi->add_note: #{e}"
end
```

#### Using the add_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactNoteResponses>, Integer, Hash)> add_note_with_http_info(contact_id, opts)

```ruby
begin
  # Add note
  data, status_code, headers = api_instance.add_note_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactNoteResponses>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactNotesApi->add_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |
| **create_contact_note** | [**CreateContactNote**](CreateContactNote.md) |  | [optional] |

### Return type

[**ContactNoteResponses**](ContactNoteResponses.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_notes

> <ListNotes202Response> list_notes(contact_id)

List notes

List the notes added to a contact.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::ContactNotesApi.new
contact_id = 'contact_id_example' # String | The contact ID. Alternatively, you can supply the contact's source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # List notes
  result = api_instance.list_notes(contact_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling ContactNotesApi->list_notes: #{e}"
end
```

#### Using the list_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListNotes202Response>, Integer, Hash)> list_notes_with_http_info(contact_id)

```ruby
begin
  # List notes
  data, status_code, headers = api_instance.list_notes_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListNotes202Response>
rescue FrontApi::ApiError => e
  puts "Error when calling ContactNotesApi->list_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;crd_123&#39;] |

### Return type

[**ListNotes202Response**](ListNotes202Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

