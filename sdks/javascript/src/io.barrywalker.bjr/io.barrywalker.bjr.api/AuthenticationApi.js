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
import AuthIn from '../io.barrywalker.bjr.model/AuthIn';
import AuthOut from '../io.barrywalker.bjr.model/AuthOut';

/**
* Authentication service.
* @module io.barrywalker.bjr/io.barrywalker.bjr.api/AuthenticationApi
* @version 1.6.0
*/
export default class AuthenticationApi {

    /**
    * Constructs a new AuthenticationApi. 
    * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.api/AuthenticationApi
    * @class
    * @param {module:io.barrywalker.bjr/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:io.barrywalker.bjr/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the authenticateUser operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/AuthenticationApi~authenticateUserCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthOut} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Authenticates a user and returns a token
     * Authenticates a user and returns a token
     * @param {Object} opts Optional parameters
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthIn} opts.authIn 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/AuthenticationApi~authenticateUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthOut}
     */
    authenticateUser(opts, callback) {
      opts = opts || {};
      let postBody = opts['authIn'];

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
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
