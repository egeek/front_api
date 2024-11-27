# FrontApi::ListMessageTemplates200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListMessageTemplates200ResponsePagination**](ListMessageTemplates200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListMessageTemplates200ResponseLinks**](ListMessageTemplates200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;MessageTemplateResponse&gt;**](MessageTemplateResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListMessageTemplates200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

