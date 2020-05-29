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

import ApiClient from '../ApiClient';

/**
 * The TodaysStats model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStats
 * @version 1.6.1
 */
class TodaysStats {
    /**
     * Constructs a new <code>TodaysStats</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStats
     */
    constructor() { 
        
        TodaysStats.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>TodaysStats</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStats} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStats} The populated <code>TodaysStats</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new TodaysStats();

            if (data.hasOwnProperty('total_jobs')) {
                obj['total_jobs'] = ApiClient.convertToType(data['total_jobs'], 'Number');
            }
            if (data.hasOwnProperty('total_jobs_trend')) {
                obj['total_jobs_trend'] = ApiClient.convertToType(data['total_jobs_trend'], 'Number');
            }
            if (data.hasOwnProperty('enabled_jobs')) {
                obj['enabled_jobs'] = ApiClient.convertToType(data['enabled_jobs'], 'Number');
            }
            if (data.hasOwnProperty('enabled_jobs_trend')) {
                obj['enabled_jobs_trend'] = ApiClient.convertToType(data['enabled_jobs_trend'], 'Number');
            }
            if (data.hasOwnProperty('run_jobs')) {
                obj['run_jobs'] = ApiClient.convertToType(data['run_jobs'], 'Number');
            }
            if (data.hasOwnProperty('run_jobs_trend')) {
                obj['run_jobs_trend'] = ApiClient.convertToType(data['run_jobs_trend'], 'Number');
            }
            if (data.hasOwnProperty('failed_jobs')) {
                obj['failed_jobs'] = ApiClient.convertToType(data['failed_jobs'], 'Number');
            }
            if (data.hasOwnProperty('failed_jobs_trend')) {
                obj['failed_jobs_trend'] = ApiClient.convertToType(data['failed_jobs_trend'], 'Number');
            }
            if (data.hasOwnProperty('avg_job_runtime')) {
                obj['avg_job_runtime'] = ApiClient.convertToType(data['avg_job_runtime'], 'Number');
            }
            if (data.hasOwnProperty('avg_job_runtime_trend')) {
                obj['avg_job_runtime_trend'] = ApiClient.convertToType(data['avg_job_runtime_trend'], 'Number');
            }
            if (data.hasOwnProperty('max_job_runtime')) {
                obj['max_job_runtime'] = ApiClient.convertToType(data['max_job_runtime'], 'Number');
            }
            if (data.hasOwnProperty('max_job_runtime_trend')) {
                obj['max_job_runtime_trend'] = ApiClient.convertToType(data['max_job_runtime_trend'], 'Number');
            }
            if (data.hasOwnProperty('min_job_runtime')) {
                obj['min_job_runtime'] = ApiClient.convertToType(data['min_job_runtime'], 'Number');
            }
            if (data.hasOwnProperty('min_job_runtime_trend')) {
                obj['min_job_runtime_trend'] = ApiClient.convertToType(data['min_job_runtime_trend'], 'Number');
            }
            if (data.hasOwnProperty('avg_job_lag')) {
                obj['avg_job_lag'] = ApiClient.convertToType(data['avg_job_lag'], 'Number');
            }
            if (data.hasOwnProperty('avg_job_lag_trend')) {
                obj['avg_job_lag_trend'] = ApiClient.convertToType(data['avg_job_lag_trend'], 'Number');
            }
            if (data.hasOwnProperty('max_job_lag')) {
                obj['max_job_lag'] = ApiClient.convertToType(data['max_job_lag'], 'Number');
            }
            if (data.hasOwnProperty('max_job_lag_trend')) {
                obj['max_job_lag_trend'] = ApiClient.convertToType(data['max_job_lag_trend'], 'Number');
            }
            if (data.hasOwnProperty('min_job_lag')) {
                obj['min_job_lag'] = ApiClient.convertToType(data['min_job_lag'], 'Number');
            }
            if (data.hasOwnProperty('min_job_lag_trend')) {
                obj['min_job_lag_trend'] = ApiClient.convertToType(data['min_job_lag_trend'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * The total number of jobs that are scheduled.
 * @member {Number} total_jobs
 */
TodaysStats.prototype['total_jobs'] = undefined;

/**
 * The trend direction of total_jobs.
 * @member {Number} total_jobs_trend
 */
TodaysStats.prototype['total_jobs_trend'] = undefined;

/**
 * The total number of jobs that are enabled. This will be a subset of total_jobs.
 * @member {Number} enabled_jobs
 */
TodaysStats.prototype['enabled_jobs'] = undefined;

/**
 * The trend direction of enabled_jobs.
 * @member {Number} enabled_jobs_trend
 */
TodaysStats.prototype['enabled_jobs_trend'] = undefined;

/**
 * The number of jobs that have been run today.
 * @member {Number} run_jobs
 */
TodaysStats.prototype['run_jobs'] = undefined;

/**
 * The trend direction of run_jobs.
 * @member {Number} run_jobs_trend
 */
TodaysStats.prototype['run_jobs_trend'] = undefined;

/**
 * The number of jobs that have failed today.
 * @member {Number} failed_jobs
 */
TodaysStats.prototype['failed_jobs'] = undefined;

/**
 * The trend direction of failed_jobs.
 * @member {Number} failed_jobs_trend
 */
TodaysStats.prototype['failed_jobs_trend'] = undefined;

/**
 * The average job run time.
 * @member {Number} avg_job_runtime
 */
TodaysStats.prototype['avg_job_runtime'] = undefined;

/**
 * The trend direction of avg_job_runtime.
 * @member {Number} avg_job_runtime_trend
 */
TodaysStats.prototype['avg_job_runtime_trend'] = undefined;

/**
 * The max job run time.
 * @member {Number} max_job_runtime
 */
TodaysStats.prototype['max_job_runtime'] = undefined;

/**
 * The trend direction of max_job_runtime.
 * @member {Number} max_job_runtime_trend
 */
TodaysStats.prototype['max_job_runtime_trend'] = undefined;

/**
 * The min job run time.
 * @member {Number} min_job_runtime
 */
TodaysStats.prototype['min_job_runtime'] = undefined;

/**
 * The trend direction of min_job_runtime.
 * @member {Number} min_job_runtime_trend
 */
TodaysStats.prototype['min_job_runtime_trend'] = undefined;

/**
 * The average job lag.
 * @member {Number} avg_job_lag
 */
TodaysStats.prototype['avg_job_lag'] = undefined;

/**
 * The trend direction of avg_job_lag.
 * @member {Number} avg_job_lag_trend
 */
TodaysStats.prototype['avg_job_lag_trend'] = undefined;

/**
 * The max job lag.
 * @member {Number} max_job_lag
 */
TodaysStats.prototype['max_job_lag'] = undefined;

/**
 * The trend direction of max_job_lag.
 * @member {Number} max_job_lag_trend
 */
TodaysStats.prototype['max_job_lag_trend'] = undefined;

/**
 * The min job lag.
 * @member {Number} min_job_lag
 */
TodaysStats.prototype['min_job_lag'] = undefined;

/**
 * The trend direction of min_job_lag.
 * @member {Number} min_job_lag_trend
 */
TodaysStats.prototype['min_job_lag_trend'] = undefined;






export default TodaysStats;

