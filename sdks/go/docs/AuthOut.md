# AuthOut

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthToken** | **string** | The JWT authentication token. This must be passed in the Authorization header on subsequent requests. | [optional] 
**UserId** | Pointer to **int32** | The id of the authenticated user. | [optional] 
**Message** | **string** | If authentication failed, this will contain the reason why. | [optional] 
**IsError** | **bool** | This will be true if the authentication was successful, and false if not. | [optional] 
**StatusCode** | **int32** | The HTTP status code returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


