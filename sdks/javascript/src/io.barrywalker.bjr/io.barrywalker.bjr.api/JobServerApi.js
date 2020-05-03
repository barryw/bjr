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
import JobStatMessage from '../io.barrywalker.bjr.model/JobStatMessage';

/**
* JobServer service.
* @module io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi
* @version 1.1.3
*/
export default class JobServerApi {

    /**
    * Constructs a new JobServerApi. 
    * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi
    * @class
    * @param {module:io.barrywalker.bjr/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:io.barrywalker.bjr/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the recentJobs operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~recentJobsCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List of recent jobs
     * Get a list of the most recently run jobs
     * @param {Object} opts Optional parameters
     * @param {Number} opts.count The number of jobs to return (max 20)
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~recentJobsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage}
     */
    recentJobs(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'count': opts['count']
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
        '/job_server_api/recent_jobs', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the statsByDay operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByDayCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Job statistics by day
     * Get daily job statistics
     * @param {Object} opts Optional parameters
     * @param {String} opts.startDate The start date from which to get daily metrics from
     * @param {String} opts.endDate The end date from which to get daily metrics from
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByDayCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage}
     */
    statsByDay(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
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
      let returnType = JobStatMessage;
      return this.apiClient.callApi(
        '/job_server_api/daily_job_stats', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the statsByHour operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByHourCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Job statistics by hour
     * Get hourly job statistics for the day
     * @param {Object} opts Optional parameters
     * @param {String} opts.startDate The start date from which to get hourly metrics from
     * @param {String} opts.endDate The end date from which to get hourly metrics from
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByHourCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage}
     */
    statsByHour(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
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
      let returnType = JobStatMessage;
      return this.apiClient.callApi(
        '/job_server_api/hourly_job_stats', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the statsByMinute operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByMinuteCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Job statistics by minute
     * Get minutely job statistics
     * @param {Object} opts Optional parameters
     * @param {String} opts.startDate The start date from which to get minutely metrics from
     * @param {String} opts.endDate The end date from which to get minutely metrics from
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByMinuteCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage}
     */
    statsByMinute(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
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
      let returnType = JobStatMessage;
      return this.apiClient.callApi(
        '/job_server_api/minutely_job_stats', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the statsByWeek operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByWeekCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Job statistics by week
     * Get weekly job statistics
     * @param {Object} opts Optional parameters
     * @param {String} opts.startDate The start date from which to get weekly metrics from
     * @param {String} opts.endDate The end date from which to get weekly metrics from
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~statsByWeekCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage}
     */
    statsByWeek(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
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
      let returnType = JobStatMessage;
      return this.apiClient.callApi(
        '/job_server_api/weekly_job_stats', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the upcomingJobs operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~upcomingJobsCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List of upcoming jobs
     * A list of jobs that are about to execute
     * @param {Object} opts Optional parameters
     * @param {Number} opts.count The number of jobs to return (max 20)
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~upcomingJobsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage}
     */
    upcomingJobs(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'count': opts['count']
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
        '/job_server_api/upcoming_jobs', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
