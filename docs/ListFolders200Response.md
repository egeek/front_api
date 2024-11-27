# FrontApi::ListFolders200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_pagination** | [**ListFolders200ResponsePagination**](ListFolders200ResponsePagination.md) |  | [optional] |
| **_links** | [**ListFolders200ResponseLinks**](ListFolders200ResponseLinks.md) |  | [optional] |
| **_results** | [**Array&lt;MessageTemplateFolderResponse&gt;**](MessageTemplateFolderResponse.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ListFolders200Response.new(
  _pagination: null,
  _links: null,
  _results: null
)
```

