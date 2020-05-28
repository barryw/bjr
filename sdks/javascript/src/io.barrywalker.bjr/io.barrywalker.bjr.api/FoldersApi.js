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
import FolderArrayMessage from '../io.barrywalker.bjr.model/FolderArrayMessage';
import JobArrayMessage from '../io.barrywalker.bjr.model/JobArrayMessage';
import SingleFolderMessage from '../io.barrywalker.bjr.model/SingleFolderMessage';
import SingleJobMessage from '../io.barrywalker.bjr.model/SingleJobMessage';

/**
* Folders service.
* @module io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi
* @version 1.6.0
*/
export default class FoldersApi {

    /**
    * Constructs a new FoldersApi. 
    * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi
    * @class
    * @param {module:io.barrywalker.bjr/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:io.barrywalker.bjr/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the createFolder operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~createFolderCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create a new Folder
     * Create a new Folder
     * @param {String} name 
     * @param {String} expression 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~createFolderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage}
     */
    createFolder(name, expression, callback) {
      let postBody = null;
      // verify the required parameter 'name' is set
      if (name === undefined || name === null) {
        throw new Error("Missing the required parameter 'name' when calling createFolder");
      }
      // verify the required parameter 'expression' is set
      if (expression === undefined || expression === null) {
        throw new Error("Missing the required parameter 'expression' when calling createFolder");
      }

      let pathParams = {
      };
      let queryParams = {
        'name': name,
        'expression': expression
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SingleFolderMessage;
      return this.apiClient.callApi(
        '/folder_api', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteFolder operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~deleteFolderCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete an existing folder
     * Delete an existing folder
     * @param {Number} id 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~deleteFolderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage}
     */
    deleteFolder(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling deleteFolder");
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
      let returnType = SingleFolderMessage;
      return this.apiClient.callApi(
        '/folder_api/{id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getFolder operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~getFolderCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Return a single folder
     * Return a single folder
     * @param {Number} id 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~getFolderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage}
     */
    getFolder(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getFolder");
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
      let returnType = SingleFolderMessage;
      return this.apiClient.callApi(
        '/folder_api/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getFolderJobs operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~getFolderJobsCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Return list of jobs in a folder
     * Return list of jobs in a folder
     * @param {Number} id 
     * @param {Object} opts Optional parameters
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~getFolderJobsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage}
     */
    getFolderJobs(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getFolderJobs");
      }

      let pathParams = {
        'id': id
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
      let returnType = JobArrayMessage;
      return this.apiClient.callApi(
        '/folder_api/{id}/jobs', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getFolders operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~getFoldersCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/FolderArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Return paginated list of all folders
     * Return paginated list of all folders
     * @param {Object} opts Optional parameters
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~getFoldersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/FolderArrayMessage}
     */
    getFolders(opts, callback) {
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
      let returnType = FolderArrayMessage;
      return this.apiClient.callApi(
        '/folder_api', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the updateFolder operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~updateFolderCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update an existing folder
     * Update an existing folder
     * @param {Number} id 
     * @param {Object} opts Optional parameters
     * @param {String} opts.name 
     * @param {String} opts.expression 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi~updateFolderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage}
     */
    updateFolder(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling updateFolder");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'name': opts['name'],
        'expression': opts['expression']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SingleFolderMessage;
      return this.apiClient.callApi(
        '/folder_api/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
