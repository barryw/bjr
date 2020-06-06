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
import BusyThreadCountMessage from '../io.barrywalker.bjr.model/BusyThreadCountMessage';
import GenericMessage from '../io.barrywalker.bjr.model/GenericMessage';
import JobArrayMessage from '../io.barrywalker.bjr.model/JobArrayMessage';
import JobStatMessage from '../io.barrywalker.bjr.model/JobStatMessage';
import TodaysStatsMessage from '../io.barrywalker.bjr.model/TodaysStatsMessage';

/**
* JobServer service.
* @module io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi
* @version 2.2.0
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
     * Callback function to receive the result of the getBusyThreadCount operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~getBusyThreadCountCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Retrieve the count of busy workers across worker pods/nodes
     * Retrieve the count of busy workers across worker pods/nodes
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~getBusyThreadCountCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessage}
     */
    getBusyThreadCount(callback) {
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
      let returnType = BusyThreadCountMessage;
      return this.apiClient.callApi(
        '/job_server_api/busy_thread_count', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the quiesceNode operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~quiesceNodeCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/GenericMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Quiesce a single worker pod/node
     * Quiesce a single worker pod/node
     * @param {String} host The hostname of the worker pod/node to quiesce
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~quiesceNodeCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/GenericMessage}
     */
    quiesceNode(host, callback) {
      let postBody = null;
      // verify the required parameter 'host' is set
      if (host === undefined || host === null) {
        throw new Error("Missing the required parameter 'host' when calling quiesceNode");
      }

      let pathParams = {
      };
      let queryParams = {
        'host': host
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GenericMessage;
      return this.apiClient.callApi(
        '/job_server_api/quiesce_worker', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
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
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {String} opts.timezone 
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
        'end_date': opts['endDate'],
        'per_page': opts['perPage'],
        'page': opts['page'],
        'timezone': opts['timezone']
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
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {String} opts.timezone 
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
        'end_date': opts['endDate'],
        'per_page': opts['perPage'],
        'page': opts['page'],
        'timezone': opts['timezone']
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
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {String} opts.timezone 
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
        'end_date': opts['endDate'],
        'per_page': opts['perPage'],
        'page': opts['page'],
        'timezone': opts['timezone']
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
     * @param {Number} opts.perPage 
     * @param {Number} opts.page 
     * @param {String} opts.timezone 
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
        'end_date': opts['endDate'],
        'per_page': opts['perPage'],
        'page': opts['page'],
        'timezone': opts['timezone']
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
     * Callback function to receive the result of the todaysStats operation.
     * @callback module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~todaysStatsCallback
     * @param {String} error Error message, if any.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStatsMessage} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Todays Stats
     * Get the high level job statistics for today
     * @param {Object} opts Optional parameters
     * @param {String} opts.timezone 
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi~todaysStatsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStatsMessage}
     */
    todaysStats(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'timezone': opts['timezone']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['bearerAuth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = TodaysStatsMessage;
      return this.apiClient.callApi(
        '/job_server_api/todays_stats', 'GET',
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
