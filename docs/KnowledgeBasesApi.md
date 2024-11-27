# FrontApi::KnowledgeBasesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_a_knowledge_base**](KnowledgeBasesApi.md#create_a_knowledge_base) | **POST** /knowledge_bases | Create a knowledge base |
| [**create_article_in_a_knowledge_base_in_default_locale**](KnowledgeBasesApi.md#create_article_in_a_knowledge_base_in_default_locale) | **POST** /knowledge_bases/{knowledge_base_id}/articles | Create article in a knowledge base in default locale |
| [**create_article_in_a_knowledge_base_in_specified_locale**](KnowledgeBasesApi.md#create_article_in_a_knowledge_base_in_specified_locale) | **POST** /knowledge_bases/{knowledge_base_id}/locales/{locale}/articles | Create article in a knowledge base in specified locale |
| [**create_knowledge_base_category_in_default_locale**](KnowledgeBasesApi.md#create_knowledge_base_category_in_default_locale) | **POST** /knowledge_bases/{knowledge_base_id}/categories | Create knowledge base category in default locale |
| [**create_knowledge_base_category_in_specified_locale**](KnowledgeBasesApi.md#create_knowledge_base_category_in_specified_locale) | **POST** /knowledge_bases/{knowledge_base_id}/locales/{locale}/categories | Create knowledge base category in specified locale |
| [**get_a_knowledge_base**](KnowledgeBasesApi.md#get_a_knowledge_base) | **GET** /knowledge_bases/{knowledge_base_id} | Get a knowledge base |
| [**get_a_knowledge_base_with_content_in_default_locale**](KnowledgeBasesApi.md#get_a_knowledge_base_with_content_in_default_locale) | **GET** /knowledge_bases/{knowledge_base_id}/content | Get a knowledge base with content in default locale |
| [**get_a_knowledge_base_with_content_in_specified_locale**](KnowledgeBasesApi.md#get_a_knowledge_base_with_content_in_specified_locale) | **GET** /knowledge_bases/{knowledge_base_id}/locales/{locale}/content | Get a knowledge base with content in specified locale |
| [**list_knowledge_bases**](KnowledgeBasesApi.md#list_knowledge_bases) | **GET** /knowledge_bases | List knowledge bases |
| [**update_knowledge_base_in_default_locale**](KnowledgeBasesApi.md#update_knowledge_base_in_default_locale) | **PATCH** /knowledge_bases/{knowledge_base_id}/content | Update knowledge base in default locale |
| [**update_knowledge_base_in_specified_locale**](KnowledgeBasesApi.md#update_knowledge_base_in_specified_locale) | **PATCH** /knowledge_bases/{knowledge_base_id}/locales/{locale}/content | Update knowledge base in specified locale |


## create_a_knowledge_base

> <KnowledgeBaseResponse> create_a_knowledge_base(opts)

Create a knowledge base

Creates a knowledge base.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
opts = {
  knowledge_base_create: FrontApi::KnowledgeBaseCreate.new({name: 'name_example'}) # KnowledgeBaseCreate | 
}

begin
  # Create a knowledge base
  result = api_instance.create_a_knowledge_base(opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_a_knowledge_base: #{e}"
end
```

#### Using the create_a_knowledge_base_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseResponse>, Integer, Hash)> create_a_knowledge_base_with_http_info(opts)

```ruby
begin
  # Create a knowledge base
  data, status_code, headers = api_instance.create_a_knowledge_base_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_a_knowledge_base_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_create** | [**KnowledgeBaseCreate**](KnowledgeBaseCreate.md) |  | [optional] |

### Return type

[**KnowledgeBaseResponse**](KnowledgeBaseResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_article_in_a_knowledge_base_in_default_locale

> <KnowledgeBaseArticleResponse> create_article_in_a_knowledge_base_in_default_locale(knowledge_base_id, opts)

Create article in a knowledge base in default locale

Creates an article in a knowledge base in the default locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to create the article in
opts = {
  knowledge_base_article_create: FrontApi::KnowledgeBaseArticleCreate.new # KnowledgeBaseArticleCreate | 
}

begin
  # Create article in a knowledge base in default locale
  result = api_instance.create_article_in_a_knowledge_base_in_default_locale(knowledge_base_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_article_in_a_knowledge_base_in_default_locale: #{e}"
end
```

#### Using the create_article_in_a_knowledge_base_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleResponse>, Integer, Hash)> create_article_in_a_knowledge_base_in_default_locale_with_http_info(knowledge_base_id, opts)

```ruby
begin
  # Create article in a knowledge base in default locale
  data, status_code, headers = api_instance.create_article_in_a_knowledge_base_in_default_locale_with_http_info(knowledge_base_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_article_in_a_knowledge_base_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to create the article in | [default to &#39;knb_123&#39;] |
| **knowledge_base_article_create** | [**KnowledgeBaseArticleCreate**](KnowledgeBaseArticleCreate.md) |  | [optional] |

### Return type

[**KnowledgeBaseArticleResponse**](KnowledgeBaseArticleResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_article_in_a_knowledge_base_in_specified_locale

> <KnowledgeBaseArticleResponse> create_article_in_a_knowledge_base_in_specified_locale(knowledge_base_id, locale, opts)

Create article in a knowledge base in specified locale

Create an article for a given locale in a knowledge base.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to create the article in
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the article's content
opts = {
  knowledge_base_article_create: FrontApi::KnowledgeBaseArticleCreate.new # KnowledgeBaseArticleCreate | 
}

begin
  # Create article in a knowledge base in specified locale
  result = api_instance.create_article_in_a_knowledge_base_in_specified_locale(knowledge_base_id, locale, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_article_in_a_knowledge_base_in_specified_locale: #{e}"
end
```

#### Using the create_article_in_a_knowledge_base_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleResponse>, Integer, Hash)> create_article_in_a_knowledge_base_in_specified_locale_with_http_info(knowledge_base_id, locale, opts)

```ruby
begin
  # Create article in a knowledge base in specified locale
  data, status_code, headers = api_instance.create_article_in_a_knowledge_base_in_specified_locale_with_http_info(knowledge_base_id, locale, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_article_in_a_knowledge_base_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to create the article in | [default to &#39;knb_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the article&#39;s content | [default to &#39;en&#39;] |
| **knowledge_base_article_create** | [**KnowledgeBaseArticleCreate**](KnowledgeBaseArticleCreate.md) |  | [optional] |

### Return type

[**KnowledgeBaseArticleResponse**](KnowledgeBaseArticleResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_knowledge_base_category_in_default_locale

> <KnowledgeBaseCategoryResponse> create_knowledge_base_category_in_default_locale(knowledge_base_id, opts)

Create knowledge base category in default locale

Creates a knowledge base category in the default locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to create the category in
opts = {
  knowledge_base_category_create: FrontApi::KnowledgeBaseCategoryCreate.new({name: 'name_example'}) # KnowledgeBaseCategoryCreate | 
}

begin
  # Create knowledge base category in default locale
  result = api_instance.create_knowledge_base_category_in_default_locale(knowledge_base_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_knowledge_base_category_in_default_locale: #{e}"
end
```

#### Using the create_knowledge_base_category_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseCategoryResponse>, Integer, Hash)> create_knowledge_base_category_in_default_locale_with_http_info(knowledge_base_id, opts)

```ruby
begin
  # Create knowledge base category in default locale
  data, status_code, headers = api_instance.create_knowledge_base_category_in_default_locale_with_http_info(knowledge_base_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseCategoryResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_knowledge_base_category_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to create the category in | [default to &#39;knb_123&#39;] |
| **knowledge_base_category_create** | [**KnowledgeBaseCategoryCreate**](KnowledgeBaseCategoryCreate.md) |  | [optional] |

### Return type

[**KnowledgeBaseCategoryResponse**](KnowledgeBaseCategoryResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_knowledge_base_category_in_specified_locale

> <KnowledgeBaseCategoryResponse> create_knowledge_base_category_in_specified_locale(knowledge_base_id, locale, opts)

Create knowledge base category in specified locale

Creates a knowledge base category for a given locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to create the category in
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the category's content
opts = {
  knowledge_base_category_create: FrontApi::KnowledgeBaseCategoryCreate.new({name: 'name_example'}) # KnowledgeBaseCategoryCreate | 
}

begin
  # Create knowledge base category in specified locale
  result = api_instance.create_knowledge_base_category_in_specified_locale(knowledge_base_id, locale, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_knowledge_base_category_in_specified_locale: #{e}"
end
```

#### Using the create_knowledge_base_category_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseCategoryResponse>, Integer, Hash)> create_knowledge_base_category_in_specified_locale_with_http_info(knowledge_base_id, locale, opts)

```ruby
begin
  # Create knowledge base category in specified locale
  data, status_code, headers = api_instance.create_knowledge_base_category_in_specified_locale_with_http_info(knowledge_base_id, locale, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseCategoryResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->create_knowledge_base_category_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to create the category in | [default to &#39;knb_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the category&#39;s content | [default to &#39;en&#39;] |
| **knowledge_base_category_create** | [**KnowledgeBaseCategoryCreate**](KnowledgeBaseCategoryCreate.md) |  | [optional] |

### Return type

[**KnowledgeBaseCategoryResponse**](KnowledgeBaseCategoryResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_a_knowledge_base

> <KnowledgeBaseSlimResponse> get_a_knowledge_base(knowledge_base_id)

Get a knowledge base

Fetches a knowledge base.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to fetch

begin
  # Get a knowledge base
  result = api_instance.get_a_knowledge_base(knowledge_base_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->get_a_knowledge_base: #{e}"
end
```

#### Using the get_a_knowledge_base_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseSlimResponse>, Integer, Hash)> get_a_knowledge_base_with_http_info(knowledge_base_id)

```ruby
begin
  # Get a knowledge base
  data, status_code, headers = api_instance.get_a_knowledge_base_with_http_info(knowledge_base_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseSlimResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->get_a_knowledge_base_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to fetch | [default to &#39;knb_123&#39;] |

### Return type

[**KnowledgeBaseSlimResponse**](KnowledgeBaseSlimResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_knowledge_base_with_content_in_default_locale

> <KnowledgeBaseResponse> get_a_knowledge_base_with_content_in_default_locale(knowledge_base_id)

Get a knowledge base with content in default locale

Fetches a knowledge base with its content in the default locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to fetch

begin
  # Get a knowledge base with content in default locale
  result = api_instance.get_a_knowledge_base_with_content_in_default_locale(knowledge_base_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->get_a_knowledge_base_with_content_in_default_locale: #{e}"
end
```

#### Using the get_a_knowledge_base_with_content_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseResponse>, Integer, Hash)> get_a_knowledge_base_with_content_in_default_locale_with_http_info(knowledge_base_id)

```ruby
begin
  # Get a knowledge base with content in default locale
  data, status_code, headers = api_instance.get_a_knowledge_base_with_content_in_default_locale_with_http_info(knowledge_base_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->get_a_knowledge_base_with_content_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to fetch | [default to &#39;knb_123&#39;] |

### Return type

[**KnowledgeBaseResponse**](KnowledgeBaseResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_knowledge_base_with_content_in_specified_locale

> <KnowledgeBaseResponse> get_a_knowledge_base_with_content_in_specified_locale(knowledge_base_id, locale)

Get a knowledge base with content in specified locale

Fetches a knowledge base with its content for a given locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to fetch
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch

begin
  # Get a knowledge base with content in specified locale
  result = api_instance.get_a_knowledge_base_with_content_in_specified_locale(knowledge_base_id, locale)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->get_a_knowledge_base_with_content_in_specified_locale: #{e}"
end
```

#### Using the get_a_knowledge_base_with_content_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseResponse>, Integer, Hash)> get_a_knowledge_base_with_content_in_specified_locale_with_http_info(knowledge_base_id, locale)

```ruby
begin
  # Get a knowledge base with content in specified locale
  data, status_code, headers = api_instance.get_a_knowledge_base_with_content_in_specified_locale_with_http_info(knowledge_base_id, locale)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->get_a_knowledge_base_with_content_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to fetch | [default to &#39;knb_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch | [default to &#39;en&#39;] |

### Return type

[**KnowledgeBaseResponse**](KnowledgeBaseResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_knowledge_bases

> <ListKnowledgeBases200Response> list_knowledge_bases

List knowledge bases

List the knowledge bases of the company.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new

begin
  # List knowledge bases
  result = api_instance.list_knowledge_bases
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->list_knowledge_bases: #{e}"
end
```

#### Using the list_knowledge_bases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListKnowledgeBases200Response>, Integer, Hash)> list_knowledge_bases_with_http_info

```ruby
begin
  # List knowledge bases
  data, status_code, headers = api_instance.list_knowledge_bases_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListKnowledgeBases200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->list_knowledge_bases_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListKnowledgeBases200Response**](ListKnowledgeBases200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_knowledge_base_in_default_locale

> <KnowledgeBaseResponse> update_knowledge_base_in_default_locale(knowledge_base_id, opts)

Update knowledge base in default locale

Updates a knowledge base in the default locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to update
opts = {
  knowledge_base_patch: FrontApi::KnowledgeBasePatch.new # KnowledgeBasePatch | 
}

begin
  # Update knowledge base in default locale
  result = api_instance.update_knowledge_base_in_default_locale(knowledge_base_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->update_knowledge_base_in_default_locale: #{e}"
end
```

#### Using the update_knowledge_base_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseResponse>, Integer, Hash)> update_knowledge_base_in_default_locale_with_http_info(knowledge_base_id, opts)

```ruby
begin
  # Update knowledge base in default locale
  data, status_code, headers = api_instance.update_knowledge_base_in_default_locale_with_http_info(knowledge_base_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->update_knowledge_base_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to update | [default to &#39;knb_123&#39;] |
| **knowledge_base_patch** | [**KnowledgeBasePatch**](KnowledgeBasePatch.md) |  | [optional] |

### Return type

[**KnowledgeBaseResponse**](KnowledgeBaseResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_knowledge_base_in_specified_locale

> <KnowledgeBaseResponse> update_knowledge_base_in_specified_locale(knowledge_base_id, locale, opts)

Update knowledge base in specified locale

Updates a knowledge base for a given locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBasesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base to update
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content
opts = {
  knowledge_base_patch: FrontApi::KnowledgeBasePatch.new # KnowledgeBasePatch | 
}

begin
  # Update knowledge base in specified locale
  result = api_instance.update_knowledge_base_in_specified_locale(knowledge_base_id, locale, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->update_knowledge_base_in_specified_locale: #{e}"
end
```

#### Using the update_knowledge_base_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseResponse>, Integer, Hash)> update_knowledge_base_in_specified_locale_with_http_info(knowledge_base_id, locale, opts)

```ruby
begin
  # Update knowledge base in specified locale
  data, status_code, headers = api_instance.update_knowledge_base_in_specified_locale_with_http_info(knowledge_base_id, locale, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBasesApi->update_knowledge_base_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base to update | [default to &#39;knb_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content | [default to &#39;en&#39;] |
| **knowledge_base_patch** | [**KnowledgeBasePatch**](KnowledgeBasePatch.md) |  | [optional] |

### Return type

[**KnowledgeBaseResponse**](KnowledgeBaseResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

