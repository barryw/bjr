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
 * The SingleJobRun model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobRun
 * @version 1.3.8
 */
class SingleJobRun {
    /**
     * Constructs a new <code>SingleJobRun</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobRun
     */
    constructor() { 
        
        SingleJobRun.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SingleJobRun</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobRun} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobRun} The populated <code>SingleJobRun</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SingleJobRun();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('success')) {
                obj['success'] = ApiClient.convertToType(data['success'], 'Boolean');
            }
            if (data.hasOwnProperty('return_code')) {
                obj['return_code'] = ApiClient.convertToType(data['return_code'], 'Number');
            }
            if (data.hasOwnProperty('error_message')) {
                obj['error_message'] = ApiClient.convertToType(data['error_message'], 'String');
            }
            if (data.hasOwnProperty('stdout')) {
                obj['stdout'] = ApiClient.convertToType(data['stdout'], 'String');
            }
            if (data.hasOwnProperty('stderr')) {
                obj['stderr'] = ApiClient.convertToType(data['stderr'], 'String');
            }
            if (data.hasOwnProperty('start_time')) {
                obj['start_time'] = ApiClient.convertToType(data['start_time'], 'Date');
            }
            if (data.hasOwnProperty('end_time')) {
                obj['end_time'] = ApiClient.convertToType(data['end_time'], 'Date');
            }
            if (data.hasOwnProperty('job_id')) {
                obj['job_id'] = ApiClient.convertToType(data['job_id'], 'Number');
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
 * The object's primary key. This uniquely identifies the object in the system.
 * @member {Number} id
 */
SingleJobRun.prototype['id'] = undefined;

/**
 * Whether the run was successful or not.
 * @member {Boolean} success
 */
SingleJobRun.prototype['success'] = undefined;

/**
 * The return code that the command exited with. 0 means success.
 * @member {Number} return_code
 */
SingleJobRun.prototype['return_code'] = undefined;

/**
 * If the run failed, the error message that was returned.
 * @member {String} error_message
 */
SingleJobRun.prototype['error_message'] = undefined;

/**
 * The text written to STDOUT as part of the job.
 * @member {String} stdout
 */
SingleJobRun.prototype['stdout'] = undefined;

/**
 * The text written to STDERR as part of the job.
 * @member {String} stderr
 */
SingleJobRun.prototype['stderr'] = undefined;

/**
 * The date and time that the run started.
 * @member {Date} start_time
 */
SingleJobRun.prototype['start_time'] = undefined;

/**
 * The date and time that the run ended.
 * @member {Date} end_time
 */
SingleJobRun.prototype['end_time'] = undefined;

/**
 * The job that the run is associated with.
 * @member {Number} job_id
 */
SingleJobRun.prototype['job_id'] = undefined;

/**
 * The date and time that the run record was created in UTC.
 * @member {Date} created_at
 */
SingleJobRun.prototype['created_at'] = undefined;

/**
 * The date and time that the run record was last updated in UTC.
 * @member {Date} updated_at
 */
SingleJobRun.prototype['updated_at'] = undefined;






export default SingleJobRun;

