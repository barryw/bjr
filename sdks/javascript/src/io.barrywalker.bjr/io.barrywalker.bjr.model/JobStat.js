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
 * The JobStat model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/JobStat
 * @version 1.5.5
 */
class JobStat {
    /**
     * Constructs a new <code>JobStat</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStat
     */
    constructor() { 
        
        JobStat.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>JobStat</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStat} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStat} The populated <code>JobStat</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new JobStat();

            if (data.hasOwnProperty('runs')) {
                obj['runs'] = ApiClient.convertToType(data['runs'], 'Number');
            }
            if (data.hasOwnProperty('failed')) {
                obj['failed'] = ApiClient.convertToType(data['failed'], 'Number');
            }
            if (data.hasOwnProperty('job_count')) {
                obj['job_count'] = ApiClient.convertToType(data['job_count'], 'Number');
            }
            if (data.hasOwnProperty('avg_runtime')) {
                obj['avg_runtime'] = ApiClient.convertToType(data['avg_runtime'], 'Number');
            }
            if (data.hasOwnProperty('max_runtime')) {
                obj['max_runtime'] = ApiClient.convertToType(data['max_runtime'], 'Number');
            }
            if (data.hasOwnProperty('min_runtime')) {
                obj['min_runtime'] = ApiClient.convertToType(data['min_runtime'], 'Number');
            }
            if (data.hasOwnProperty('total_jobs')) {
                obj['total_jobs'] = ApiClient.convertToType(data['total_jobs'], 'Number');
            }
            if (data.hasOwnProperty('total_enabled')) {
                obj['total_enabled'] = ApiClient.convertToType(data['total_enabled'], 'Number');
            }
            if (data.hasOwnProperty('avg_job_lag')) {
                obj['avg_job_lag'] = ApiClient.convertToType(data['avg_job_lag'], 'Number');
            }
            if (data.hasOwnProperty('max_job_lag')) {
                obj['max_job_lag'] = ApiClient.convertToType(data['max_job_lag'], 'Number');
            }
            if (data.hasOwnProperty('min_job_lag')) {
                obj['min_job_lag'] = ApiClient.convertToType(data['min_job_lag'], 'Number');
            }
            if (data.hasOwnProperty('period')) {
                obj['period'] = ApiClient.convertToType(data['period'], 'String');
            }
            if (data.hasOwnProperty('start_dt')) {
                obj['start_dt'] = ApiClient.convertToType(data['start_dt'], 'Date');
            }
            if (data.hasOwnProperty('end_dt')) {
                obj['end_dt'] = ApiClient.convertToType(data['end_dt'], 'Date');
            }
            if (data.hasOwnProperty('created_at')) {
                obj['created_at'] = ApiClient.convertToType(data['created_at'], 'Date');
            }
            if (data.hasOwnProperty('updated_at')) {
                obj['updated_at'] = ApiClient.convertToType(data['updated_at'], 'Date');
            }
        }
        return obj;
    }


}

/**
 * The number of job runs in the period.
 * @member {Number} runs
 */
JobStat.prototype['runs'] = undefined;

/**
 * The number of job runs that failed in the period.
 * @member {Number} failed
 */
JobStat.prototype['failed'] = undefined;

/**
 * The number of jobs that executed in the period.
 * @member {Number} job_count
 */
JobStat.prototype['job_count'] = undefined;

/**
 * The average runtime in seconds of all jobs in the period.
 * @member {Number} avg_runtime
 */
JobStat.prototype['avg_runtime'] = undefined;

/**
 * The max runtime in seconds of all jobs in the period.
 * @member {Number} max_runtime
 */
JobStat.prototype['max_runtime'] = undefined;

/**
 * The min runtime in seconds of all jobs in the period.
 * @member {Number} min_runtime
 */
JobStat.prototype['min_runtime'] = undefined;

/**
 * The total number of jobs.
 * @member {Number} total_jobs
 */
JobStat.prototype['total_jobs'] = undefined;

/**
 * Of the total number of jobs, this is how many were enabled.
 * @member {Number} total_enabled
 */
JobStat.prototype['total_enabled'] = undefined;

/**
 * The average job lag in seconds.
 * @member {Number} avg_job_lag
 */
JobStat.prototype['avg_job_lag'] = undefined;

/**
 * The maximum job lag in seconds.
 * @member {Number} max_job_lag
 */
JobStat.prototype['max_job_lag'] = undefined;

/**
 * The minimum job lag in seconds.
 * @member {Number} min_job_lag
 */
JobStat.prototype['min_job_lag'] = undefined;

/**
 * The runtime period.
 * @member {String} period
 */
JobStat.prototype['period'] = undefined;

/**
 * The period start date.
 * @member {Date} start_dt
 */
JobStat.prototype['start_dt'] = undefined;

/**
 * The period end date.
 * @member {Date} end_dt
 */
JobStat.prototype['end_dt'] = undefined;

/**
 * The date the record was created.
 * @member {Date} created_at
 */
JobStat.prototype['created_at'] = undefined;

/**
 * The date the record was last updated.
 * @member {Date} updated_at
 */
JobStat.prototype['updated_at'] = undefined;






export default JobStat;

