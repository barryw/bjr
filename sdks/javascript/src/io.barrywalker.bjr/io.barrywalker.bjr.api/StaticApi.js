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
import ServerVersion from '../io.barrywalker.bjr.model/ServerVersion';
import TagMessage from '../io.barrywalker.bjr.model/TagMessage';
import TimezoneMessage from '../io.barrywalker.bjr.model/TimezoneMessage';

/**
* Static service.
* @module io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi
* @version 1.0.0
*/
export default class StaticApi {

    /**
    * Constructs a new StaticApi. 
    * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi
    * @class
    * @param {module:io.barrywalker.bjr/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:io.barrywalker.bjr/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getTags operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi~getTagsCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TagMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get tags
     * Retrieves the list of tags that are currently in use for the authenticated user.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi~getTagsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/TagMessage}
     */
    getTags(callback) {
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
      let returnType = TagMessage;
      return this.apiClient.callApi(
        '/tags', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getTimezones operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi~getTimezonesCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TimezoneMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get timezones
     * Get the list of acceptable timezone names.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi~getTimezonesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/TimezoneMessage}
     */
    getTimezones(callback) {
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
      let returnType = TimezoneMessage;
      return this.apiClient.callApi(
        '/timezones', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getVersion operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi~getVersionCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/ServerVersion} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Server version
     * The BJR server version
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi~getVersionCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/ServerVersion}
     */
    getVersion(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = ServerVersion;
      return this.apiClient.callApi(
        '/version', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
