/**
 * BJR API V1
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import SingleUserMessage from '../io.barrywalker.bjr.model/SingleUserMessage';
import UserArrayMessage from '../io.barrywalker.bjr.model/UserArrayMessage';
import UserNewIn from '../io.barrywalker.bjr.model/UserNewIn';
import UserUpdateIn from '../io.barrywalker.bjr.model/UserUpdateIn';

/**
* Users service.
* @module io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi
* @version 1.1.4
*/
export default class UsersApi {

    /**
    * Constructs a new UsersApi. 
    * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi
    * @class
    * @param {module:io.barrywalker.bjr/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:io.barrywalker.bjr/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the createUser operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~createUserCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Creates a user
     * Create a new user
     * @param {Object} opts Optional parameters
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserNewIn} opts.userNewIn 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~createUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage}
     */
    createUser(opts, callback) {
      opts = opts || {};
      let postBody = opts['userNewIn'];

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
      let returnType = SingleUserMessage;
      return this.apiClient.callApi(
        '/user_api', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteUser operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~deleteUserCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a user
     * Deletes a user
     * @param {Number} id 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~deleteUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage}
     */
    deleteUser(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling deleteUser");
      }

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
      let returnType = SingleUserMessage;
      return this.apiClient.callApi(
        '/user_api/{id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getUser operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~getUserCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve a single user
     * Retrieve a single user
     * @param {Number} id 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~getUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage}
     */
    getUser(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getUser");
      }

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
      let returnType = SingleUserMessage;
      return this.apiClient.callApi(
        '/user_api/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getUsers operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~getUsersCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves users
     * Get a list of users
     * @param {Object} opts Optional parameters
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~getUsersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserArrayMessage}
     */
    getUsers(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'per_page': opts['perPage'],
        'page': opts['page']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = UserArrayMessage;
      return this.apiClient.callApi(
        '/user_api', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the updateUser operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~updateUserCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update a single user
     * Update a single user
     * @param {Number} id 
     * @param {Object} opts Optional parameters
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserUpdateIn} opts.userUpdateIn 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi~updateUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage}
     */
    updateUser(id, opts, callback) {
      opts = opts || {};
      let postBody = opts['userUpdateIn'];
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling updateUser");
      }

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
      let returnType = SingleUserMessage;
      return this.apiClient.callApi(
        '/user_api/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
