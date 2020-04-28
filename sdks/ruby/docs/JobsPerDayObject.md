# BJR::JobsPerDayObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | The date the counts are for. | [optional] 
**processed** | **Integer** | The total number of jobs that were processed for the day. | [optional] 
**failed** | **Integer** | The total number of jobs that failed for the day. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::JobsPerDayObject.new(date: null,
                                 processed: null,
                                 failed: null)
```


