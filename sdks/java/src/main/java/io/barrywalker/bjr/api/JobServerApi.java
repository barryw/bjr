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


import io.barrywalker.bjr.model.JobArrayMessage;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JobServerApi {
    private ApiClient localVarApiClient;

    public JobServerApi() {
        this(Configuration.getDefaultApiClient());
    }

    public JobServerApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    /**
     * Build call for recentJobs
     * @param count The number of jobs to return (max 20) (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Jobs received successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call recentJobsCall(Integer count, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/job_server_api/recent_jobs";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (count != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("count", count));
        }

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
    private okhttp3.Call recentJobsValidateBeforeCall(Integer count, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = recentJobsCall(count, _callback);
        return localVarCall;

    }

    /**
     * List of recent jobs
     * Get a list of the most recently run jobs
     * @param count The number of jobs to return (max 20) (optional)
     * @return JobArrayMessage
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Jobs received successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public JobArrayMessage recentJobs(Integer count) throws ApiException {
        ApiResponse<JobArrayMessage> localVarResp = recentJobsWithHttpInfo(count);
        return localVarResp.getData();
    }

    /**
     * List of recent jobs
     * Get a list of the most recently run jobs
     * @param count The number of jobs to return (max 20) (optional)
     * @return ApiResponse&lt;JobArrayMessage&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Jobs received successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<JobArrayMessage> recentJobsWithHttpInfo(Integer count) throws ApiException {
        okhttp3.Call localVarCall = recentJobsValidateBeforeCall(count, null);
        Type localVarReturnType = new TypeToken<JobArrayMessage>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * List of recent jobs (asynchronously)
     * Get a list of the most recently run jobs
     * @param count The number of jobs to return (max 20) (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Jobs received successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call recentJobsAsync(Integer count, final ApiCallback<JobArrayMessage> _callback) throws ApiException {

        okhttp3.Call localVarCall = recentJobsValidateBeforeCall(count, _callback);
        Type localVarReturnType = new TypeToken<JobArrayMessage>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for upcomingJobs
     * @param count The number of jobs to return (max 20) (optional)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Upcoming job list returned successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call upcomingJobsCall(Integer count, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/job_server_api/upcoming_jobs";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (count != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("count", count));
        }

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
    private okhttp3.Call upcomingJobsValidateBeforeCall(Integer count, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = upcomingJobsCall(count, _callback);
        return localVarCall;

    }

    /**
     * List of upcoming jobs
     * A list of jobs that are about to execute
     * @param count The number of jobs to return (max 20) (optional)
     * @return JobArrayMessage
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Upcoming job list returned successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public JobArrayMessage upcomingJobs(Integer count) throws ApiException {
        ApiResponse<JobArrayMessage> localVarResp = upcomingJobsWithHttpInfo(count);
        return localVarResp.getData();
    }

    /**
     * List of upcoming jobs
     * A list of jobs that are about to execute
     * @param count The number of jobs to return (max 20) (optional)
     * @return ApiResponse&lt;JobArrayMessage&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Upcoming job list returned successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<JobArrayMessage> upcomingJobsWithHttpInfo(Integer count) throws ApiException {
        okhttp3.Call localVarCall = upcomingJobsValidateBeforeCall(count, null);
        Type localVarReturnType = new TypeToken<JobArrayMessage>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * List of upcoming jobs (asynchronously)
     * A list of jobs that are about to execute
     * @param count The number of jobs to return (max 20) (optional)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Upcoming job list returned successfully </td><td>  -  </td></tr>
        <tr><td> 406 </td><td> Too many jobs specified </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call upcomingJobsAsync(Integer count, final ApiCallback<JobArrayMessage> _callback) throws ApiException {

        okhttp3.Call localVarCall = upcomingJobsValidateBeforeCall(count, _callback);
        Type localVarReturnType = new TypeToken<JobArrayMessage>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
