# FrontApi::ShiftResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**ShiftResponseLinks**](ShiftResponseLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier of the shift | [optional] |
| **name** | **String** | Name of the shift | [optional] |
| **color** | **String** | Color of the shift | [optional] |
| **timezone** | **String** | A timezone name as defined in the IANA tz database | [optional] |
| **times** | [**ShiftIntervals**](ShiftIntervals.md) |  | [optional] |
| **created_at** | **Float** | The timestamp when the shift was created. | [optional] |
| **updated_at** | **Float** | The timestamp when the shift was updated. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::ShiftResponse.new(
  _links: null,
  id: shf_1bri,
  name: Scranton Business Park shifts,
  color: green,
  timezone: America/New_York,
  times: null,
  created_at: 1606943265.298,
  updated_at: 1701878404.43
)
```

