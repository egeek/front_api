# FrontApi::RulesApi

All URIs are relative to *https://api2.frontapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_rule**](RulesApi.md#get_rule) | **GET** /rules/{rule_id} | Get rule |
| [**list_all_company_rules**](RulesApi.md#list_all_company_rules) | **GET** /company/rules | List all company rules |
| [**list_rules**](RulesApi.md#list_rules) | **GET** /rules | List rules |
| [**list_team_rules**](RulesApi.md#list_team_rules) | **GET** /teams/{team_id}/rules | List team rules |
| [**list_teammate_rules**](RulesApi.md#list_teammate_rules) | **GET** /teammates/{teammate_id}/rules | List teammate rules |


## get_rule

> <RuleResponse> get_rule(rule_id)

Get rule

Fetch a rule.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::RulesApi.new
rule_id = 'rule_id_example' # String | The Rule ID

begin
  # Get rule
  result = api_instance.get_rule(rule_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->get_rule: #{e}"
end
```

#### Using the get_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RuleResponse>, Integer, Hash)> get_rule_with_http_info(rule_id)

```ruby
begin
  # Get rule
  data, status_code, headers = api_instance.get_rule_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RuleResponse>
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->get_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The Rule ID | [default to &#39;rul_123&#39;] |

### Return type

[**RuleResponse**](RuleResponse.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_company_rules

> <ListAllCompanyRules200Response> list_all_company_rules

List all company rules

List the company rules.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::RulesApi.new

begin
  # List all company rules
  result = api_instance.list_all_company_rules
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_all_company_rules: #{e}"
end
```

#### Using the list_all_company_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllCompanyRules200Response>, Integer, Hash)> list_all_company_rules_with_http_info

```ruby
begin
  # List all company rules
  data, status_code, headers = api_instance.list_all_company_rules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllCompanyRules200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_all_company_rules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAllCompanyRules200Response**](ListAllCompanyRules200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rules

> <ListAllCompanyRules200Response> list_rules

List rules

List the rules of the company.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::RulesApi.new

begin
  # List rules
  result = api_instance.list_rules
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_rules: #{e}"
end
```

#### Using the list_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllCompanyRules200Response>, Integer, Hash)> list_rules_with_http_info

```ruby
begin
  # List rules
  data, status_code, headers = api_instance.list_rules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllCompanyRules200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_rules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAllCompanyRules200Response**](ListAllCompanyRules200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_rules

> <ListAllCompanyRules200Response> list_team_rules(team_id)

List team rules

List the rules of a team (workspace).

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::RulesApi.new
team_id = 'team_id_example' # String | The team ID

begin
  # List team rules
  result = api_instance.list_team_rules(team_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_team_rules: #{e}"
end
```

#### Using the list_team_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllCompanyRules200Response>, Integer, Hash)> list_team_rules_with_http_info(team_id)

```ruby
begin
  # List team rules
  data, status_code, headers = api_instance.list_team_rules_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllCompanyRules200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_team_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | The team ID | [default to &#39;tim_123&#39;] |

### Return type

[**ListAllCompanyRules200Response**](ListAllCompanyRules200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teammate_rules

> <ListAllCompanyRules200Response> list_teammate_rules(teammate_id)

List teammate rules

List the rules of a teammate.

### Examples

```ruby
require 'time'
require 'front_api'
# setup authorization
FrontApi.configure do |config|
  # Configure Bearer authorization (JWT): http
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FrontApi::RulesApi.new
teammate_id = 'teammate_id_example' # String | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).

begin
  # List teammate rules
  result = api_instance.list_teammate_rules(teammate_id)
  p result
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_teammate_rules: #{e}"
end
```

#### Using the list_teammate_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllCompanyRules200Response>, Integer, Hash)> list_teammate_rules_with_http_info(teammate_id)

```ruby
begin
  # List teammate rules
  data, status_code, headers = api_instance.list_teammate_rules_with_http_info(teammate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllCompanyRules200Response>
rescue FrontApi::ApiError => e
  puts "Error when calling RulesApi->list_teammate_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teammate_id** | **String** | The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [default to &#39;tea_123&#39;] |

### Return type

[**ListAllCompanyRules200Response**](ListAllCompanyRules200Response.md)

### Authorization

[http](../README.md#http)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

