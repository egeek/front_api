# FrontApi::ContactNoteResponses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | [**TeammateResponse**](TeammateResponse.md) |  | [optional] |
| **body** | **String** | Content of the note | [optional] |
| **created_at** | **Float** | Date at which the note have been created | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ContactNoteResponses.new(
  author: null,
  body: Mrs. Allen is our most important client … because every client is our most important client.,
  created_at: 1701806790.536
)
```

