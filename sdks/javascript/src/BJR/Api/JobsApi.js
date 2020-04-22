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
import JobArrayMessage from '../Model/JobArrayMessage';
import JobIn from '../Model/JobIn';
import JobRunArrayMessage from '../Model/JobRunArrayMessage';
import OccurrenceMessage from '../Model/OccurrenceMessage';
import SingleJobMessage from '../Model/SingleJobMessage';

/**
* Jobs service.
* @module BJR/Api/JobsApi
* @version v1
*/
export default class JobsApi {

    /**
    * Constructs a new JobsApi. 
    * @alias module:BJR/Api/JobsApi
    * @class
    * @param {module:BJR/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:BJR/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }

    /**
     * Callback function to receive the result of the createJob operation.
     * @callback module:BJR/Api/JobsApi~createJobCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/SingleJobMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Creates a job
     * Creates a job
     * @param {module:BJR/Api/JobsApi~createJobCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/SingleJobMessage}
     */
    createJob(opts, callback) {
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
      let returnType = SingleJobMessage;

      return this.apiClient.callApi(
        '/job_api', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the deleteJob operation.
     * @callback module:BJR/Api/JobsApi~deleteJobCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a job
     * Deletes a job
     * @param {module:BJR/Api/JobsApi~deleteJobCallback} callback The callback function, accepting three arguments: error, data, response
     */
    deleteJob(id, callback) {
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
     * Callback function to receive the result of the getJob operation.
     * @callback module:BJR/Api/JobsApi~getJobCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/SingleJobMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves a single job
     * Retrieves a single job
     * @param {module:BJR/Api/JobsApi~getJobCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/SingleJobMessage}
     */
    getJob(id, callback) {
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
      let returnType = SingleJobMessage;

      return this.apiClient.callApi(
        '/job_api/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the getJobRuns operation.
     * @callback module:BJR/Api/JobsApi~getJobRunsCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/JobRunArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve the runs for a job
     * Retrieve the runs for a job
     * @param {Object} opts Optional parameters
     * @param {module:BJR/Api/JobsApi~getJobRunsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/JobRunArrayMessage}
     */
    getJobRuns(id, opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'per_page': opts['perPage'],
        'page': opts['page'],
        'succeeded': opts['succeeded'],
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
      let returnType = JobRunArrayMessage;

      return this.apiClient.callApi(
        '/job_api/{id}/runs', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the getJobs operation.
     * @callback module:BJR/Api/JobsApi~getJobsCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/JobArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves jobs
     * Retrieves jobs
     * @param {Object} opts Optional parameters
     * @param {module:BJR/Api/JobsApi~getJobsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/JobArrayMessage}
     */
    getJobs(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'tags': opts['tags'],
        'incexc': opts['incexc'],
        'start_date': opts['startDate'],
        'end_date': opts['endDate'],
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
        '/job_api', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the jobOccurrences operation.
     * @callback module:BJR/Api/JobsApi~jobOccurrencesCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/OccurrenceMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Upcoming job occurrences
     * Retrieves a list of upcoming occurrences for a job
     * @param {Object} opts Optional parameters
     * @param {module:BJR/Api/JobsApi~jobOccurrencesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/OccurrenceMessage}
     */
    jobOccurrences(id, endDate, opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
        'id': id,
        'end_date': endDate
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
      let returnType = OccurrenceMessage;

      return this.apiClient.callApi(
        '/job_api/{id}/occurrences/{end_date}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
    /**
     * Callback function to receive the result of the updateJob operation.
     * @callback module:BJR/Api/JobsApi~updateJobCallback
     * @param {String} error Error message, if any.
     * @param {module:BJR/Model/SingleJobMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Updates a single job
     * Updates a single job
     * @param {module:BJR/Api/JobsApi~updateJobCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:BJR/Model/SingleJobMessage}
     */
    updateJob(id, opts, callback) {
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
      let returnType = SingleJobMessage;

      return this.apiClient.callApi(
        '/job_api/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

}
