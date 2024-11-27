# FrontApi::KnowledgeBaseArticlesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_an_article**](KnowledgeBaseArticlesApi.md#delete_an_article) | **DELETE** /knowledge_base_articles/{article_id} | Delete an article |
| [**download_attachment_from_an_article**](KnowledgeBaseArticlesApi.md#download_attachment_from_an_article) | **GET** /knowledge_base_articles/{article_id}/download/{attachment_id} | Download attachment from an article |
| [**get_a_knowledge_base_article**](KnowledgeBaseArticlesApi.md#get_a_knowledge_base_article) | **GET** /knowledge_base_articles/{article_id} | Get a knowledge base article |
| [**get_knowledge_base_article_with_content_in_default_locale**](KnowledgeBaseArticlesApi.md#get_knowledge_base_article_with_content_in_default_locale) | **GET** /knowledge_base_articles/{article_id}/content | Get knowledge base article with content in default locale |
| [**get_knowledge_base_article_with_content_in_specified_locale**](KnowledgeBaseArticlesApi.md#get_knowledge_base_article_with_content_in_specified_locale) | **GET** /knowledge_base_articles/{article_id}/locales/{locale}/content | Get knowledge base article with content in specified locale |
| [**list_articles_in_a_category**](KnowledgeBaseArticlesApi.md#list_articles_in_a_category) | **GET** /knowledge_base_categories/{category_id}/articles | List articles in a category |
| [**list_articles_in_a_knowledge_base**](KnowledgeBaseArticlesApi.md#list_articles_in_a_knowledge_base) | **GET** /knowledge_bases/{knowledge_base_id}/articles | List articles in a knowledge base |
| [**update_article_content_in_default_locale**](KnowledgeBaseArticlesApi.md#update_article_content_in_default_locale) | **PATCH** /knowledge_base_articles/{article_id}/content | Update article content in default locale. |
| [**update_article_content_in_specified_locale**](KnowledgeBaseArticlesApi.md#update_article_content_in_specified_locale) | **PATCH** /knowledge_base_articles/{article_id}/locales/{locale}/content | Update article content in specified locale |


## delete_an_article

> <KnowledgeBaseArticleSlimResponse> delete_an_article(article_id)

Delete an article

Deletes an article and all its content and translations.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
article_id = 'article_id_example' # String | The ID of the article to delete

begin
  # Delete an article
  result = api_instance.delete_an_article(article_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->delete_an_article: #{e}"
end
```

#### Using the delete_an_article_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleSlimResponse>, Integer, Hash)> delete_an_article_with_http_info(article_id)

```ruby
begin
  # Delete an article
  data, status_code, headers = api_instance.delete_an_article_with_http_info(article_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleSlimResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->delete_an_article_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **article_id** | **String** | The ID of the article to delete | [default to &#39;kba_123&#39;] |

### Return type

[**KnowledgeBaseArticleSlimResponse**](KnowledgeBaseArticleSlimResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_attachment_from_an_article

> <Attachment> download_attachment_from_an_article(article_id, attachment_id)

Download attachment from an article

Downloads the attachment from an article.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
article_id = 'article_id_example' # String | The ID of the article
attachment_id = 'attachment_id_example' # String | The ID of the file to download

begin
  # Download attachment from an article
  result = api_instance.download_attachment_from_an_article(article_id, attachment_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->download_attachment_from_an_article: #{e}"
end
```

#### Using the download_attachment_from_an_article_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attachment>, Integer, Hash)> download_attachment_from_an_article_with_http_info(article_id, attachment_id)

```ruby
begin
  # Download attachment from an article
  data, status_code, headers = api_instance.download_attachment_from_an_article_with_http_info(article_id, attachment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attachment>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->download_attachment_from_an_article_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **article_id** | **String** | The ID of the article | [default to &#39;kba_123&#39;] |
| **attachment_id** | **String** | The ID of the file to download |  |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_knowledge_base_article

> <KnowledgeBaseArticleSlimResponse> get_a_knowledge_base_article(article_id)

Get a knowledge base article

Fetches a knowledge base article.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
article_id = 'article_id_example' # String | The ID of the article to fetch

begin
  # Get a knowledge base article
  result = api_instance.get_a_knowledge_base_article(article_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->get_a_knowledge_base_article: #{e}"
end
```

#### Using the get_a_knowledge_base_article_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleSlimResponse>, Integer, Hash)> get_a_knowledge_base_article_with_http_info(article_id)

```ruby
begin
  # Get a knowledge base article
  data, status_code, headers = api_instance.get_a_knowledge_base_article_with_http_info(article_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleSlimResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->get_a_knowledge_base_article_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **article_id** | **String** | The ID of the article to fetch | [default to &#39;kba_123&#39;] |

### Return type

[**KnowledgeBaseArticleSlimResponse**](KnowledgeBaseArticleSlimResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_knowledge_base_article_with_content_in_default_locale

> <KnowledgeBaseArticleResponse> get_knowledge_base_article_with_content_in_default_locale(article_id)

Get knowledge base article with content in default locale

Fetches a knowledge base article with content in the default locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
article_id = 'article_id_example' # String | The ID of the article to fetch

begin
  # Get knowledge base article with content in default locale
  result = api_instance.get_knowledge_base_article_with_content_in_default_locale(article_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->get_knowledge_base_article_with_content_in_default_locale: #{e}"
end
```

#### Using the get_knowledge_base_article_with_content_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleResponse>, Integer, Hash)> get_knowledge_base_article_with_content_in_default_locale_with_http_info(article_id)

```ruby
begin
  # Get knowledge base article with content in default locale
  data, status_code, headers = api_instance.get_knowledge_base_article_with_content_in_default_locale_with_http_info(article_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->get_knowledge_base_article_with_content_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **article_id** | **String** | The ID of the article to fetch | [default to &#39;kba_123&#39;] |

### Return type

[**KnowledgeBaseArticleResponse**](KnowledgeBaseArticleResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_knowledge_base_article_with_content_in_specified_locale

> <KnowledgeBaseArticleResponse> get_knowledge_base_article_with_content_in_specified_locale(article_id, locale)

Get knowledge base article with content in specified locale

Fetches a knowledge base article with content for a given locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
article_id = 'article_id_example' # String | The ID of the article to fetch
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch

begin
  # Get knowledge base article with content in specified locale
  result = api_instance.get_knowledge_base_article_with_content_in_specified_locale(article_id, locale)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->get_knowledge_base_article_with_content_in_specified_locale: #{e}"
end
```

#### Using the get_knowledge_base_article_with_content_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleResponse>, Integer, Hash)> get_knowledge_base_article_with_content_in_specified_locale_with_http_info(article_id, locale)

```ruby
begin
  # Get knowledge base article with content in specified locale
  data, status_code, headers = api_instance.get_knowledge_base_article_with_content_in_specified_locale_with_http_info(article_id, locale)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->get_knowledge_base_article_with_content_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **article_id** | **String** | The ID of the article to fetch | [default to &#39;kba_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch | [default to &#39;en&#39;] |

### Return type

[**KnowledgeBaseArticleResponse**](KnowledgeBaseArticleResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_articles_in_a_category

> <ListArticlesInACategory200Response> list_articles_in_a_category(category_id, opts)

List articles in a category

List articles in a category.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
category_id = 'category_id_example' # String | The ID of the category
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List articles in a category
  result = api_instance.list_articles_in_a_category(category_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->list_articles_in_a_category: #{e}"
end
```

#### Using the list_articles_in_a_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListArticlesInACategory200Response>, Integer, Hash)> list_articles_in_a_category_with_http_info(category_id, opts)

```ruby
begin
  # List articles in a category
  data, status_code, headers = api_instance.list_articles_in_a_category_with_http_info(category_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListArticlesInACategory200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->list_articles_in_a_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category | [default to &#39;kbc_123&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |

### Return type

[**ListArticlesInACategory200Response**](ListArticlesInACategory200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_articles_in_a_knowledge_base

> <ListArticlesInACategory200Response> list_articles_in_a_knowledge_base(knowledge_base_id, opts)

List articles in a knowledge base

List articles in a knowledge base  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
knowledge_base_id = 'knowledge_base_id_example' # String | The ID of the knowledge base
opts = {
  limit: 25, # Integer | Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  page_token: 'https://yourCompany.api.frontapp.com/endpoint?limit=25&page_token=92f32bcd7625333caf4e0f8fc26d920c812f' # String | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
}

begin
  # List articles in a knowledge base
  result = api_instance.list_articles_in_a_knowledge_base(knowledge_base_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->list_articles_in_a_knowledge_base: #{e}"
end
```

#### Using the list_articles_in_a_knowledge_base_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListArticlesInACategory200Response>, Integer, Hash)> list_articles_in_a_knowledge_base_with_http_info(knowledge_base_id, opts)

```ruby
begin
  # List articles in a knowledge base
  data, status_code, headers = api_instance.list_articles_in_a_knowledge_base_with_http_info(knowledge_base_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListArticlesInACategory200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->list_articles_in_a_knowledge_base_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **knowledge_base_id** | **String** | The ID of the knowledge base | [default to &#39;knb_123&#39;] |
| **limit** | **Integer** | Max number of results per [page](https://dev.frontapp.com/docs/pagination) | [optional] |
| **page_token** | **String** | Token to use to request the [next page](https://dev.frontapp.com/docs/pagination) | [optional] |

### Return type

[**ListArticlesInACategory200Response**](ListArticlesInACategory200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_article_content_in_default_locale

> <KnowledgeBaseArticleResponse> update_article_content_in_default_locale(article_id, opts)

Update article content in default locale.

Updates an article's content in the default locale  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
article_id = 'article_id_example' # String | The ID of the article to update
opts = {
  knowledge_base_article_patch: FrontApi::KnowledgeBaseArticlePatch.new # KnowledgeBaseArticlePatch | 
}

begin
  # Update article content in default locale.
  result = api_instance.update_article_content_in_default_locale(article_id, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->update_article_content_in_default_locale: #{e}"
end
```

#### Using the update_article_content_in_default_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleResponse>, Integer, Hash)> update_article_content_in_default_locale_with_http_info(article_id, opts)

```ruby
begin
  # Update article content in default locale.
  data, status_code, headers = api_instance.update_article_content_in_default_locale_with_http_info(article_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->update_article_content_in_default_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **article_id** | **String** | The ID of the article to update | [default to &#39;kba_123&#39;] |
| **knowledge_base_article_patch** | [**KnowledgeBaseArticlePatch**](KnowledgeBaseArticlePatch.md) |  | [optional] |

### Return type

[**KnowledgeBaseArticleResponse**](KnowledgeBaseArticleResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_article_content_in_specified_locale

> <KnowledgeBaseArticleResponse> update_article_content_in_specified_locale(article_id, locale, opts)

Update article content in specified locale

Updates an article's content for a given locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::KnowledgeBaseArticlesApi.new
article_id = 'article_id_example' # String | The ID of the article to update
locale = 'locale_example' # String | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content
opts = {
  knowledge_base_article_patch: FrontApi::KnowledgeBaseArticlePatch.new # KnowledgeBaseArticlePatch | 
}

begin
  # Update article content in specified locale
  result = api_instance.update_article_content_in_specified_locale(article_id, locale, opts)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->update_article_content_in_specified_locale: #{e}"
end
```

#### Using the update_article_content_in_specified_locale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KnowledgeBaseArticleResponse>, Integer, Hash)> update_article_content_in_specified_locale_with_http_info(article_id, locale, opts)

```ruby
begin
  # Update article content in specified locale
  data, status_code, headers = api_instance.update_article_content_in_specified_locale_with_http_info(article_id, locale, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KnowledgeBaseArticleResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling KnowledgeBaseArticlesApi->update_article_content_in_specified_locale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **article_id** | **String** | The ID of the article to update | [default to &#39;kba_123&#39;] |
| **locale** | **String** | The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content | [default to &#39;en&#39;] |
| **knowledge_base_article_patch** | [**KnowledgeBaseArticlePatch**](KnowledgeBaseArticlePatch.md) |  | [optional] |

### Return type

[**KnowledgeBaseArticleResponse**](KnowledgeBaseArticleResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

