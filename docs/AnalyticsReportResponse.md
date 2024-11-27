# FrontApi::AnalyticsReportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**AnalyticsReportResponseLinks**](AnalyticsReportResponseLinks.md) |  | [optional] |
| **status** | **String** | Status of the report. | [optional] |
| **progress** | **Integer** | Number ranging from 0 to 100 corresponding to the percentage of the analytics processed. | [optional] |
| **metrics** | [**Array&lt;AnalyticsScalar&gt;**](AnalyticsScalar.md) | The metrics computed for the report. | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::AnalyticsReportResponse.new(
  _links: null,
  status: done,
  progress: 100,
  metrics: null
)
```

