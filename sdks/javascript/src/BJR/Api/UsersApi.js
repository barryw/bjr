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
import SingleUser from '../Model/SingleUser';
import UserArray from '../Model/UserArray';
import UserNewIn from '../Model/UserNewIn';
import UserOut from '../Model/UserOut';
import UserUpdateIn from '../Model/UserUpdateIn';

/**
* Users service.
* @module BJR/Api/UsersApi
* @version v1
*/
export default class UsersApi {

    /**
    * Constructs a new UsersApi. 
    * @alias module:BJR/Api/UsersApi
    * @class
    * @param {module:BJR/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:BJR/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }

    /**
     * Callback function to receive the result of the createUser operation.
     * @callback module:BJR/Api/UsersApi~createUserCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/UserOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Creates a user
     * Create a new user
     * @param {module:BJR/Api/UsersApi~createUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/UserOut}
     */
    createUser(opts, callback) {
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
    /**
     * Callback function to receive the result of the deleteUser operation.
     * @callback module:BJR/Api/UsersApi~deleteUserCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/UserOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a user
     * Deletes a user
     * @param {module:BJR/Api/UsersApi~deleteUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/UserOut}
     */
    deleteUser(id, callback) {
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
     * Callback function to receive the result of the getUser operation.
     * @callback module:BJR/Api/UsersApi~getUserCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/SingleUser} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve a single user
     * Retrieve a single user
     * @param {module:BJR/Api/UsersApi~getUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/SingleUser}
     */
    getUser(id, callback) {
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
     * Callback function to receive the result of the getUsers operation.
     * @callback module:BJR/Api/UsersApi~getUsersCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/UserArray} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves users
     * Get a list of users
     * @param {Object} opts Optional parameters
     * @param {module:BJR/Api/UsersApi~getUsersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/UserArray}
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
      let returnType = UserArray;

      return this.apiClient.callApi(
        '/user_api', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the updateUser operation.
     * @callback module:BJR/Api/UsersApi~updateUserCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/UserOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update a single user
     * Update a single user
     * @param {module:BJR/Api/UsersApi~updateUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/UserOut}
     */
    updateUser(id, opts, callback) {
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

}
