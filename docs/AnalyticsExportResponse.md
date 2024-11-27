# FrontApi::AnalyticsExportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**AnalyticsExportResponseLinks**](AnalyticsExportResponseLinks.md) |  | [optional] |
| **status** | **String** | Status of the analytics | [optional] |
| **progress** | **Integer** | Number ranging from 0 to 100 corresponding to the percentage of the analytics processed. | [optional] |
| **url** | **String** | The URL from which the export data can be downloaded. Only displays after you make a GET request to the link included in the POST response. | [optional] |
| **filename** | **String** | The filename of the export with extension included. Only displays after you make a GET request to the link included in the POST response. | [optional] |
| **size** | **Float** | Size (in bytes) of the export data. Only displays after you make a GET request to the link included in the POST response. | [optional] |
| **created_at** | **Float** | Timestamp (in seconds) at which the export was requested. | [optional] |
| **filters** | [**AnalyticsFilters**](AnalyticsFilters.md) |  | [optional] |

## Example

```ruby
require 'front_api'

instance = FrontApi::AnalyticsExportResponse.new(
  _links: null,
  status: running,
  progress: 20,
  url: https://api.frontapp.com/analytics/exports/exp_o9y1a/download,
  filename: export-messages-yourCompany-2023-07-19-212d-e55df0.csv,
  size: 26639,
  created_at: 1703103649.159,
  filters: null
)
```

