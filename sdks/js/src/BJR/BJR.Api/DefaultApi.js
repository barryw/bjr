/**
 * BJR API V1
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */

import ApiClient from "../ApiClient";
import AuthIn from '../BJR.Model/AuthIn';
import AuthOut from '../BJR.Model/AuthOut';
import JobArray from '../BJR.Model/JobArray';
import JobIn from '../BJR.Model/JobIn';
import JobOut from '../BJR.Model/JobOut';
import SingleJob from '../BJR.Model/SingleJob';
import SingleUser from '../BJR.Model/SingleUser';
import UserArray from '../BJR.Model/UserArray';
import UserNewIn from '../BJR.Model/UserNewIn';
import UserOut from '../BJR.Model/UserOut';
import UserUpdateIn from '../BJR.Model/UserUpdateIn';

/**
* Default service.
* @module BJR/BJR.Api/DefaultApi
* @version v1
*/
export default class DefaultApi {

    /**
    * Constructs a new DefaultApi. 
    * @alias module:BJR/BJR.Api/DefaultApi
    * @class
    * @param {module:BJR/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:BJR/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }

    /**
     * Callback function to receive the result of the authenticatePost operation.
     * @callback module:BJR/BJR.Api/DefaultApi~authenticatePostCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/AuthOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Authenticates a user and returns a token
     * @param {module:BJR/BJR.Api/DefaultApi~authenticatePostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/AuthOut}
     */
    authenticatePost(opts, callback) {
      let postBody = opts['body'];

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = AuthOut;

      return this.apiClient.callApi(
        '/authenticate', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the jobApiGet operation.
     * @callback module:BJR/BJR.Api/DefaultApi~jobApiGetCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/JobArray} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves jobs
     * Retrieves jobs
     * @param {Object} opts Optional parameters
     * @param {module:BJR/BJR.Api/DefaultApi~jobApiGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/JobArray}
     */
    jobApiGet(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'tags': opts['tags'],
        'incexc': opts['incexc'],
        'start_date': opts['startDate'],
        'end_date': opts['endDate']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = JobArray;

      return this.apiClient.callApi(
        '/job_api', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the jobApiIdDelete operation.
     * @callback module:BJR/BJR.Api/DefaultApi~jobApiIdDeleteCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a job
     * Deletes a job
     * @param {module:BJR/BJR.Api/DefaultApi~jobApiIdDeleteCallback} callback The callback function, accepting three arguments: error, data, response
     */
    jobApiIdDelete(id, callback) {
      let postBody = null;

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;

      return this.apiClient.callApi(
        '/job_api/{id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the jobApiIdGet operation.
     * @callback module:BJR/BJR.Api/DefaultApi~jobApiIdGetCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/SingleJob} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves a single job
     * Retrieves a single job
     * @param {module:BJR/BJR.Api/DefaultApi~jobApiIdGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/SingleJob}
     */
    jobApiIdGet(id, callback) {
      let postBody = null;

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SingleJob;

      return this.apiClient.callApi(
        '/job_api/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the jobApiIdPut operation.
     * @callback module:BJR/BJR.Api/DefaultApi~jobApiIdPutCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/JobOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Updates a single job
     * Updates a single job
     * @param {module:BJR/BJR.Api/DefaultApi~jobApiIdPutCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/JobOut}
     */
    jobApiIdPut(id, opts, callback) {
      let postBody = opts['body'];

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = JobOut;

      return this.apiClient.callApi(
        '/job_api/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the jobApiPost operation.
     * @callback module:BJR/BJR.Api/DefaultApi~jobApiPostCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/JobOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Creates a job
     * Creates a job
     * @param {module:BJR/BJR.Api/DefaultApi~jobApiPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/JobOut}
     */
    jobApiPost(opts, callback) {
      let postBody = opts['body'];

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = JobOut;

      return this.apiClient.callApi(
        '/job_api', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the userApiGet operation.
     * @callback module:BJR/BJR.Api/DefaultApi~userApiGetCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/UserArray} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves users
     * Get a list of users
     * @param {module:BJR/BJR.Api/DefaultApi~userApiGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/UserArray}
     */
    userApiGet(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = UserArray;

      return this.apiClient.callApi(
        '/user_api', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the userApiIdDelete operation.
     * @callback module:BJR/BJR.Api/DefaultApi~userApiIdDeleteCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/UserOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a user
     * Deletes a user
     * @param {module:BJR/BJR.Api/DefaultApi~userApiIdDeleteCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/UserOut}
     */
    userApiIdDelete(id, callback) {
      let postBody = null;

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = UserOut;

      return this.apiClient.callApi(
        '/user_api/{id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the userApiIdGet operation.
     * @callback module:BJR/BJR.Api/DefaultApi~userApiIdGetCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/SingleUser} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve a single user
     * Retrieve a single user
     * @param {module:BJR/BJR.Api/DefaultApi~userApiIdGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/SingleUser}
     */
    userApiIdGet(id, callback) {
      let postBody = null;

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SingleUser;

      return this.apiClient.callApi(
        '/user_api/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the userApiIdPut operation.
     * @callback module:BJR/BJR.Api/DefaultApi~userApiIdPutCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/UserOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update a single user
     * Update a single user
     * @param {module:BJR/BJR.Api/DefaultApi~userApiIdPutCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/UserOut}
     */
    userApiIdPut(id, opts, callback) {
      let postBody = opts['body'];

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = UserOut;

      return this.apiClient.callApi(
        '/user_api/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the userApiPost operation.
     * @callback module:BJR/BJR.Api/DefaultApi~userApiPostCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/BJR.Model/UserOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Creates a user
     * Create a new user
     * @param {module:BJR/BJR.Api/DefaultApi~userApiPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/BJR.Model/UserOut}
     */
    userApiPost(opts, callback) {
      let postBody = opts['body'];

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = UserOut;

      return this.apiClient.callApi(
        '/user_api', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

}
