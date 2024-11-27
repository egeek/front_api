# FrontApi::KnowledgeBaseCategoriesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_a_knowledge_base_category**](KnowledgeBaseCategoriesApi.md#delete_a_knowledge_base_category) | **DELETE** /knowledge_base_categories/{category_id} | Delete a knowledge base category |
| [**get_a_knowledge_base_category**](KnowledgeBaseCategoriesApi.md#get_a_knowledge_base_category) | **GET** /knowledge_base_categories/{category_id} | Get a knowledge base category |
| [**get_knowledge_base_category_content_in_default_locale**](KnowledgeBaseCategoriesApi.md#get_knowledge_base_category_content_in_default_locale) | **GET** /knowledge_base_categories/{category_id}/content | Get knowledge base category content in default locale |
| [**get_knowledge_base_category_with_content_in_specified_locale**](KnowledgeBaseCategoriesApi.md#get_knowledge_base_category_with_content_in_specified_locale) | **GET** /knowledge_base_categories/{category_id}/locales/{locale}/content | Get knowledge base category with content in specified locale |
| [**list_categories_in_a_knowledge_base**](KnowledgeBaseCategoriesApi.md#list_categories_in_a_knowledge_base) | **GET** /knowledge_bases/{knowledge_base_id}/categories | List categories in a knowledge base |
| [**update_knowledge_base_category_in_default_locale**](KnowledgeBaseCategoriesApi.md#update_knowledge_base_category_in_default_locale) | **PATCH** /knowledge_base_categories/{category_id}/content | Update knowledge base category in default locale |
| [**update_knowledge_base_category_in_specified_locale**](KnowledgeBaseCategoriesApi.md#update_knowledge_base_category_in_specified_locale) | **PATCH** /knowledge_base_categories/{category_id}/locales/{locale}/content | Update knowledge base category in specified locale |


## delete_a_knowledge_base_category

> delete_a_knowledge_base_category(category_id)

Delete a knowledge base category

Deletes a knowledge base category.  > ⚠️ Warning > > When a category is deleted, all articles in the category are also deleted.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseCategoriesApi.new
category_id = 'category_id_example' # String | The ID of the category to delete

begin
  # Delete a knowledge base category
  api_instance.delete_a_knowledge_base_category(category_id)
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->delete_a_knowledge_base_category: #{e}"
end
```

#### Using the delete_a_knowledge_base_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_a_knowledge_base_category_with_http_info(category_id)

```ruby
begin
  # Delete a knowledge base category
  data, status_code, headers = api_instance.delete_a_knowledge_base_category_with_http_info(category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->delete_a_knowledge_base_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category to delete | [default to &#39;kbc_123&#39;] |

### Return type

nil (empty response body)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_a_knowledge_base_category

> <KnowledgeBaseCategorySlimResponse> get_a_knowledge_base_category(category_id)

Get a knowledge base category

Fetches a knowledge base category.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseCategoriesApi.new
category_id = 'category_id_example' # String | The ID of the category to fetch

begin
  # Get a knowledge base category
  result = api_instance.get_a_knowledge_base_category(category_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->get_a_knowledge_base_category: #{e}"
end
```

#### Using the get_a_knowledge_base_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseCategorySlimResponse>, Integer, Hash)> get_a_knowledge_base_category_with_http_info(category_id)

```ruby
begin
  # Get a knowledge base category
  data, status_code, headers = api_instance.get_a_knowledge_base_category_with_http_info(category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseCategorySlimResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->get_a_knowledge_base_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category to fetch | [default to &#39;kbc_123&#39;] |

### Return type

[**KnowledgeBaseCategorySlimResponse**](KnowledgeBaseCategorySlimResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_knowledge_base_category_content_in_default_locale

> <KnowledgeBaseCategoryResponse> get_knowledge_base_category_content_in_default_locale(category_id)

Get knowledge base category content in default locale

Fetches a knowledge base category with content in the default locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseCategoriesApi.new
category_id = 'category_id_example' # String | The ID of the category to fetch

begin
  # Get knowledge base category content in default locale
  result = api_instance.get_knowledge_base_category_content_in_default_locale(category_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->get_knowledge_base_category_content_in_default_locale: #{e}"
end
```

#### Using the get_knowledge_base_category_content_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseCategoryResponse>, Integer, Hash)> get_knowledge_base_category_content_in_default_locale_with_http_info(category_id)

```ruby
begin
  # Get knowledge base category content in default locale
  data, status_code, headers = api_instance.get_knowledge_base_category_content_in_default_locale_with_http_info(category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseCategoryResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->get_knowledge_base_category_content_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category to fetch | [default to &#39;kbc_123&#39;] |

### Return type

[**KnowledgeBaseCategoryResponse**](KnowledgeBaseCategoryResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_knowledge_base_category_with_content_in_specified_locale

> <KnowledgeBaseCategoryResponse> get_knowledge_base_category_with_content_in_specified_locale(category_id, locale)

Get knowledge base category with content in specified locale

Fetches a knowledge base category with content for a given locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseCategoriesApi.new
category_id = 'category_id_example' # String | The ID of the category to fetch
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch

begin
  # Get knowledge base category with content in specified locale
  result = api_instance.get_knowledge_base_category_with_content_in_specified_locale(category_id, locale)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->get_knowledge_base_category_with_content_in_specified_locale: #{e}"
end
```

#### Using the get_knowledge_base_category_with_content_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseCategoryResponse>, Integer, Hash)> get_knowledge_base_category_with_content_in_specified_locale_with_http_info(category_id, locale)

```ruby
begin
  # Get knowledge base category with content in specified locale
  data, status_code, headers = api_instance.get_knowledge_base_category_with_content_in_specified_locale_with_http_info(category_id, locale)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseCategoryResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->get_knowledge_base_category_with_content_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category to fetch | [default to &#39;kbc_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch | [default to &#39;en&#39;] |

### Return type

[**KnowledgeBaseCategoryResponse**](KnowledgeBaseCategoryResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_categories_in_a_knowledge_base

> <ListCategoriesInAKnowledgeBase200Response> list_categories_in_a_knowledge_base(knowledge_base_id, opts)

List categories in a knowledge base

List categories in a knowledge base.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseCategoriesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List categories in a knowledge base
  result = api_instance.list_categories_in_a_knowledge_base(knowledge_base_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->list_categories_in_a_knowledge_base: #{e}"
end
```

#### Using the list_categories_in_a_knowledge_base_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCategoriesInAKnowledgeBase200Response>, Integer, Hash)> list_categories_in_a_knowledge_base_with_http_info(knowledge_base_id, opts)

```ruby
begin
  # List categories in a knowledge base
  data, status_code, headers = api_instance.list_categories_in_a_knowledge_base_with_http_info(knowledge_base_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCategoriesInAKnowledgeBase200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->list_categories_in_a_knowledge_base_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base | [default to &#39;knb_123&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |

### Return type

[**ListCategoriesInAKnowledgeBase200Response**](ListCategoriesInAKnowledgeBase200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_knowledge_base_category_in_default_locale

> <KnowledgeBaseCategoryResponse> update_knowledge_base_category_in_default_locale(category_id, opts)

Update knowledge base category in default locale

Updates a knowledge base category in the default locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseCategoriesApi.new
category_id = 'category_id_example' # String | The ID of the category to update
opts = {
  knowledge_base_category_patch: FrontApi::KnowledgeBaseCategoryPatch.new # KnowledgeBaseCategoryPatch | 
}

begin
  # Update knowledge base category in default locale
  result = api_instance.update_knowledge_base_category_in_default_locale(category_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->update_knowledge_base_category_in_default_locale: #{e}"
end
```

#### Using the update_knowledge_base_category_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseCategoryResponse>, Integer, Hash)> update_knowledge_base_category_in_default_locale_with_http_info(category_id, opts)

```ruby
begin
  # Update knowledge base category in default locale
  data, status_code, headers = api_instance.update_knowledge_base_category_in_default_locale_with_http_info(category_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseCategoryResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->update_knowledge_base_category_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category to update | [default to &#39;kbc_123&#39;] |
| **knowledge_base_category_patch** | [**KnowledgeBaseCategoryPatch**](KnowledgeBaseCategoryPatch.md) |  | [optional] |

### Return type

[**KnowledgeBaseCategoryResponse**](KnowledgeBaseCategoryResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_knowledge_base_category_in_specified_locale

> <KnowledgeBaseCategoryResponse> update_knowledge_base_category_in_specified_locale(category_id, locale, opts)

Update knowledge base category in specified locale

Updates a knowledge base category for a given locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseCategoriesApi.new
category_id = 'category_id_example' # String | The ID of the category to update
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content
opts = {
  knowledge_base_category_patch: FrontApi::KnowledgeBaseCategoryPatch.new # KnowledgeBaseCategoryPatch | 
}

begin
  # Update knowledge base category in specified locale
  result = api_instance.update_knowledge_base_category_in_specified_locale(category_id, locale, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->update_knowledge_base_category_in_specified_locale: #{e}"
end
```

#### Using the update_knowledge_base_category_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseCategoryResponse>, Integer, Hash)> update_knowledge_base_category_in_specified_locale_with_http_info(category_id, locale, opts)

```ruby
begin
  # Update knowledge base category in specified locale
  data, status_code, headers = api_instance.update_knowledge_base_category_in_specified_locale_with_http_info(category_id, locale, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseCategoryResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseCategoriesApi->update_knowledge_base_category_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category to update | [default to &#39;kbc_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content | [default to &#39;en&#39;] |
| **knowledge_base_category_patch** | [**KnowledgeBaseCategoryPatch**](KnowledgeBaseCategoryPatch.md) |  | [optional] |

### Return type

[**KnowledgeBaseCategoryResponse**](KnowledgeBaseCategoryResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

