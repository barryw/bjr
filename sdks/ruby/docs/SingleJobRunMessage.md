# BJR::SingleJobRunMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | The status message returned from the API call. | [optional] 
**is_error** | **Boolean** | True if there was an error performing the API call. | [optional] 
**object_type** | **String** | The type of object being returned. | [optional] 
**status_code** | **Integer** | The HTTP status code returned. | [optional] 
**object** | [**SingleJobRun**](SingleJobRun.md) |  | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::SingleJobRunMessage.new(message: null,
                                 is_error: null,
                                 object_type: null,
                                 status_code: null,
                                 object: null)
```


