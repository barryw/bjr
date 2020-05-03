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
import JobArrayMessage from '../io.barrywalker.bjr.model/JobArrayMessage';
import JobIn from '../io.barrywalker.bjr.model/JobIn';
import JobRunArrayMessage from '../io.barrywalker.bjr.model/JobRunArrayMessage';
import OccurrenceMessage from '../io.barrywalker.bjr.model/OccurrenceMessage';
import SingleJobMessage from '../io.barrywalker.bjr.model/SingleJobMessage';

/**
* Jobs service.
* @module io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi
* @version 1.1.4
*/
export default class JobsApi {

    /**
    * Constructs a new JobsApi. 
    * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi
    * @class
    * @param {module:io.barrywalker.bjr/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:io.barrywalker.bjr/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the createJob operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~createJobCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Creates a job
     * Creates a job
     * @param {Object} opts Optional parameters
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobIn} opts.jobIn 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~createJobCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage}
     */
    createJob(opts, callback) {
      opts = opts || {};
      let postBody = opts['jobIn'];

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
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteJob operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~deleteJobCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a job
     * Deletes a job
     * @param {Number} id 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~deleteJobCallback} callback The callback function, accepting three arguments: error, data, response
     */
    deleteJob(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling deleteJob");
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
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/job_api/{id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getJob operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~getJobCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves a single job
     * Retrieves a single job
     * @param {Number} id 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~getJobCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage}
     */
    getJob(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getJob");
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
      let returnType = SingleJobMessage;
      return this.apiClient.callApi(
        '/job_api/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getJobRuns operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~getJobRunsCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobRunArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve the runs for a job
     * Retrieve the runs for a job
     * @param {Number} id 
     * @param {Object} opts Optional parameters
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {Boolean} opts.succeeded 
     * @param {String} opts.startDate 
     * @param {String} opts.endDate 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~getJobRunsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobRunArrayMessage}
     */
    getJobRuns(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getJobRuns");
      }

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
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getJobs operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~getJobsCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieves jobs
     * Retrieves jobs
     * @param {Object} opts Optional parameters
     * @param {String} opts.tags Specify a comma-separated list of tags to search jobs by.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/String} opts.incexc 
     * @param {String} opts.startDate Specify a start date to search jobs by.
     * @param {String} opts.endDate Specify an end date to search jobs by.
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~getJobsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage}
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
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the jobOccurrences operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~jobOccurrencesCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/OccurrenceMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Upcoming job occurrences
     * Retrieves a list of upcoming occurrences for a job
     * @param {Number} id The id of the job to retrieve occurrences for
     * @param {String} endDate The date to retrieve occurrences up to
     * @param {Object} opts Optional parameters
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~jobOccurrencesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/OccurrenceMessage}
     */
    jobOccurrences(id, endDate, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling jobOccurrences");
      }
      // verify the required parameter 'endDate' is set
      if (endDate === undefined || endDate === null) {
        throw new Error("Missing the required parameter 'endDate' when calling jobOccurrences");
      }

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
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the updateJob operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~updateJobCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Updates a single job
     * Updates a single job
     * @param {Number} id 
     * @param {Object} opts Optional parameters
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobIn} opts.jobIn 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi~updateJobCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage}
     */
    updateJob(id, opts, callback) {
      opts = opts || {};
      let postBody = opts['jobIn'];
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling updateJob");
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
      let returnType = SingleJobMessage;
      return this.apiClient.callApi(
        '/job_api/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
