# FrontApi::ShiftInterval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | Start of shift |  |
| **_end** | **String** | End of shift |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::ShiftInterval.new(
  start: 09:00,
  _end: 17:00
)
```

