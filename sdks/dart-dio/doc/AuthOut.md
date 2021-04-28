# BJR.model.AuthOut

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authToken** | **String** | The JWT authentication token. This must be passed in the Authorization header on subsequent requests. | [optional] 
**userId** | **int** | The id of the authenticated user. | [optional] 
**message** | **String** | If authentication failed, this will contain the reason why. | [optional] 
**isError** | **bool** | This will be true if the authentication was successful, and false if not. | [optional] 
**statusCode** | **int** | The HTTP status code returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


