# AuthOut


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_token** | **str** | The JWT authentication token. This must be passed in the Authorization header on subsequent requests. | [optional] 
**user_id** | **int, none_type** | The id of the authenticated user. | [optional] 
**message** | **str** | If authentication failed, this will contain the reason why. | [optional] 
**is_error** | **bool** | This will be true if the authentication was successful, and false if not. | [optional] 
**status_code** | **int** | The HTTP status code returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


