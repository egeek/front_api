# FrontApi::MergeContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_contact_id** | **String** | Optional contact ID to merge the other contacts into. | [optional] |
| **contact_ids** | **Array&lt;String&gt;** | Array of all the contact IDs of the contacts to be merged.  If a target contact id is provided and that contact id is not in this array, the length of this array must be between 1 and 49.  If no target contact id is provided or it is contained in this array, the length must be between 2 and 50. |  |

## Example

```ruby
require 'front_api'

instance = FrontApi::MergeContacts.new(
  target_contact_id: null,
  contact_ids: null
)
```

