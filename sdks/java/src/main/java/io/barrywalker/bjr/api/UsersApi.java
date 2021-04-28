/*
 * BJR API V1
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package io.barrywalker.bjr.api;

import io.barrywalker.bjr.ApiCallback;
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.ApiResponse;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.Pair;
import io.barrywalker.bjr.ProgressRequestBody;
import io.barrywalker.bjr.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import io.barrywalker.bjr.model.SingleUserMessage;
import io.barrywalker.bjr.model.UserArrayMessage;
import io.barrywalker.bjr.model.UserNewIn;
import io.barrywalker.bjr.model.UserUpdateIn;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UsersApi {
    private ApiClient localVarApiClient;

    public UsersApi() {
        this(Configuration.getDefaultApiClient());
    }

    public UsersApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    /**
     * Build call for createUser
     * @param userNewIn  (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 201 </td><td> User created successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Username already exists </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call createUserCall(UserNewIn userNewIn, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = userNewIn;

        // create path and map variables
        String localVarPath = "/user_api";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "bearerAuth" };
        return localVarApiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call createUserValidateBeforeCall(UserNewIn userNewIn, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = createUserCall(userNewIn, _callback);
        return localVarCall;

    }

    /**
     * Creates a user
     * Create a new user. Only root users are allowed to create new users.
     * @param userNewIn  (optional)
     * @return SingleUserMessage
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 201 </td><td> User created successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Username already exists </td><td>  -  </td></tr>
     </table>
     */
    public SingleUserMessage createUser(UserNewIn userNewIn) throws ApiException {
        ApiResponse<SingleUserMessage> localVarResp = createUserWithHttpInfo(userNewIn);
        return localVarResp.getData();
    }

    /**
     * Creates a user
     * Create a new user. Only root users are allowed to create new users.
     * @param userNewIn  (optional)
     * @return ApiResponse&lt;SingleUserMessage&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 201 </td><td> User created successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Username already exists </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<SingleUserMessage> createUserWithHttpInfo(UserNewIn userNewIn) throws ApiException {
        okhttp3.Call localVarCall = createUserValidateBeforeCall(userNewIn, null);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Creates a user (asynchronously)
     * Create a new user. Only root users are allowed to create new users.
     * @param userNewIn  (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 201 </td><td> User created successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> Username already exists </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call createUserAsync(UserNewIn userNewIn, final ApiCallback<SingleUserMessage> _callback) throws ApiException {

        okhttp3.Call localVarCall = createUserValidateBeforeCall(userNewIn, _callback);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for deleteUser
     * @param id  (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> User deleted successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> You cannot delete yourself. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call deleteUserCall(Integer id, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/user_api/{id}"
            .replaceAll("\\{" + "id" + "\\}", localVarApiClient.escapeString(id.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "bearerAuth" };
        return localVarApiClient.buildCall(localVarPath, "DELETE", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call deleteUserValidateBeforeCall(Integer id, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling deleteUser(Async)");
        }
        

        okhttp3.Call localVarCall = deleteUserCall(id, _callback);
        return localVarCall;

    }

    /**
     * Deletes a user
     * Deletes a user. Only root users can delete other users.
     * @param id  (required)
     * @return SingleUserMessage
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> User deleted successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> You cannot delete yourself. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
     </table>
     */
    public SingleUserMessage deleteUser(Integer id) throws ApiException {
        ApiResponse<SingleUserMessage> localVarResp = deleteUserWithHttpInfo(id);
        return localVarResp.getData();
    }

    /**
     * Deletes a user
     * Deletes a user. Only root users can delete other users.
     * @param id  (required)
     * @return ApiResponse&lt;SingleUserMessage&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> User deleted successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> You cannot delete yourself. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<SingleUserMessage> deleteUserWithHttpInfo(Integer id) throws ApiException {
        okhttp3.Call localVarCall = deleteUserValidateBeforeCall(id, null);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Deletes a user (asynchronously)
     * Deletes a user. Only root users can delete other users.
     * @param id  (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> User deleted successfully </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> You cannot delete yourself. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call deleteUserAsync(Integer id, final ApiCallback<SingleUserMessage> _callback) throws ApiException {

        okhttp3.Call localVarCall = deleteUserValidateBeforeCall(id, _callback);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getUser
     * @param id  (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Your token is invalid or expired </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getUserCall(Integer id, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/user_api/{id}"
            .replaceAll("\\{" + "id" + "\\}", localVarApiClient.escapeString(id.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "bearerAuth" };
        return localVarApiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getUserValidateBeforeCall(Integer id, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling getUser(Async)");
        }
        

        okhttp3.Call localVarCall = getUserCall(id, _callback);
        return localVarCall;

    }

    /**
     * Retrieve a single user
     * Retrieve a single user. If you&#39;re a non-root user, then you can only retrieve your own user.
     * @param id  (required)
     * @return SingleUserMessage
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Your token is invalid or expired </td><td>  -  </td></tr>
     </table>
     */
    public SingleUserMessage getUser(Integer id) throws ApiException {
        ApiResponse<SingleUserMessage> localVarResp = getUserWithHttpInfo(id);
        return localVarResp.getData();
    }

    /**
     * Retrieve a single user
     * Retrieve a single user. If you&#39;re a non-root user, then you can only retrieve your own user.
     * @param id  (required)
     * @return ApiResponse&lt;SingleUserMessage&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Your token is invalid or expired </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<SingleUserMessage> getUserWithHttpInfo(Integer id) throws ApiException {
        okhttp3.Call localVarCall = getUserValidateBeforeCall(id, null);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Retrieve a single user (asynchronously)
     * Retrieve a single user. If you&#39;re a non-root user, then you can only retrieve your own user.
     * @param id  (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> The user with that id could not be found. </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Your token is invalid or expired </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call getUserAsync(Integer id, final ApiCallback<SingleUserMessage> _callback) throws ApiException {

        okhttp3.Call localVarCall = getUserValidateBeforeCall(id, _callback);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getUsers
     * @param perPage  (optional)
     * @param page  (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Users found </td><td>  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  </td></tr>
     </table>
     */
    public okhttp3.Call getUsersCall(Integer perPage, Integer page, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/user_api";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (perPage != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("per_page", perPage));
        }

        if (page != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("page", page));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "bearerAuth" };
        return localVarApiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getUsersValidateBeforeCall(Integer perPage, Integer page, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = getUsersCall(perPage, page, _callback);
        return localVarCall;

    }

    /**
     * Retrieves users
     * Get a list of users
     * @param perPage  (optional)
     * @param page  (optional)
     * @return UserArrayMessage
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Users found </td><td>  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  </td></tr>
     </table>
     */
    public UserArrayMessage getUsers(Integer perPage, Integer page) throws ApiException {
        ApiResponse<UserArrayMessage> localVarResp = getUsersWithHttpInfo(perPage, page);
        return localVarResp.getData();
    }

    /**
     * Retrieves users
     * Get a list of users
     * @param perPage  (optional)
     * @param page  (optional)
     * @return ApiResponse&lt;UserArrayMessage&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Users found </td><td>  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  </td></tr>
     </table>
     */
    public ApiResponse<UserArrayMessage> getUsersWithHttpInfo(Integer perPage, Integer page) throws ApiException {
        okhttp3.Call localVarCall = getUsersValidateBeforeCall(perPage, page, null);
        Type localVarReturnType = new TypeToken<UserArrayMessage>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Retrieves users (asynchronously)
     * Get a list of users
     * @param perPage  (optional)
     * @param page  (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Users found </td><td>  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  </td></tr>
     </table>
     */
    public okhttp3.Call getUsersAsync(Integer perPage, Integer page, final ApiCallback<UserArrayMessage> _callback) throws ApiException {

        okhttp3.Call localVarCall = getUsersValidateBeforeCall(perPage, page, _callback);
        Type localVarReturnType = new TypeToken<UserArrayMessage>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for updateUser
     * @param id  (required)
     * @param userUpdateIn  (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> The passwords did not match </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call updateUserCall(Integer id, UserUpdateIn userUpdateIn, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = userUpdateIn;

        // create path and map variables
        String localVarPath = "/user_api/{id}"
            .replaceAll("\\{" + "id" + "\\}", localVarApiClient.escapeString(id.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] { "bearerAuth" };
        return localVarApiClient.buildCall(localVarPath, "PUT", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call updateUserValidateBeforeCall(Integer id, UserUpdateIn userUpdateIn, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'id' is set
        if (id == null) {
            throw new ApiException("Missing the required parameter 'id' when calling updateUser(Async)");
        }
        

        okhttp3.Call localVarCall = updateUserCall(id, userUpdateIn, _callback);
        return localVarCall;

    }

    /**
     * Update a single user
     * Update a single user. If you&#39;re a non-root users, then you can only update your own user.
     * @param id  (required)
     * @param userUpdateIn  (optional)
     * @return SingleUserMessage
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> The passwords did not match </td><td>  -  </td></tr>
     </table>
     */
    public SingleUserMessage updateUser(Integer id, UserUpdateIn userUpdateIn) throws ApiException {
        ApiResponse<SingleUserMessage> localVarResp = updateUserWithHttpInfo(id, userUpdateIn);
        return localVarResp.getData();
    }

    /**
     * Update a single user
     * Update a single user. If you&#39;re a non-root users, then you can only update your own user.
     * @param id  (required)
     * @param userUpdateIn  (optional)
     * @return ApiResponse&lt;SingleUserMessage&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> The passwords did not match </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<SingleUserMessage> updateUserWithHttpInfo(Integer id, UserUpdateIn userUpdateIn) throws ApiException {
        okhttp3.Call localVarCall = updateUserValidateBeforeCall(id, userUpdateIn, null);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Update a single user (asynchronously)
     * Update a single user. If you&#39;re a non-root users, then you can only update your own user.
     * @param id  (required)
     * @param userUpdateIn  (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> The user was returned successfully. </td><td>  -  </td></tr>
        <tr><td> 403 </td><td> The passwords did not match </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call updateUserAsync(Integer id, UserUpdateIn userUpdateIn, final ApiCallback<SingleUserMessage> _callback) throws ApiException {

        okhttp3.Call localVarCall = updateUserValidateBeforeCall(id, userUpdateIn, _callback);
        Type localVarReturnType = new TypeToken<SingleUserMessage>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
