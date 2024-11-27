# FrontApi::CreateShift

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the shift |  |
| **color** | **String** | Color of the shift |  |
| **timezone** | **String** | A timezone name as defined in the IANA tz database |  |
| **times** | [**ShiftIntervals**](ShiftIntervals.md) |  |  |
| **teammate_ids** | **Array&lt;String&gt;** | List of all the teammate ids who will be part of this shift. Alternatively, you can supply emails as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1). |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::CreateShift.new(
  name: null,
  color: null,
  timezone: null,
  times: null,
  teammate_ids: null
)
```

