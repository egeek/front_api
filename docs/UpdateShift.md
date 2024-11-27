# FrontApi::UpdateShift

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the shift | [optional] |
| **color** | **String** | Color of the shift | [optional] |
| **timezone** | **String** | A timezone name as defined in the IANA tz database | [optional] |
| **times** | [**ShiftIntervals**](ShiftIntervals.md) |  | [optional] |
| **teammate_ids** | **Array&lt;String&gt;** | List of all the teammate ids who will be part of this shift. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::UpdateShift.new(
  name: null,
  color: null,
  timezone: null,
  times: null,
  teammate_ids: null
)
```

