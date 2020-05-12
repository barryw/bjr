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
 * The SingleJob model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJob
 * @version 1.3.7
 */
class SingleJob {
    /**
     * Constructs a new <code>SingleJob</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJob
     */
    constructor() { 
        
        SingleJob.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SingleJob</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJob} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJob} The populated <code>SingleJob</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SingleJob();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('cron')) {
                obj['cron'] = ApiClient.convertToType(data['cron'], 'String');
            }
            if (data.hasOwnProperty('enabled')) {
                obj['enabled'] = ApiClient.convertToType(data['enabled'], 'Boolean');
            }
            if (data.hasOwnProperty('command')) {
                obj['command'] = ApiClient.convertToType(data['command'], 'String');
            }
            if (data.hasOwnProperty('last_run')) {
                obj['last_run'] = ApiClient.convertToType(data['last_run'], 'Date');
            }
            if (data.hasOwnProperty('next_run')) {
                obj['next_run'] = ApiClient.convertToType(data['next_run'], 'Date');
            }
            if (data.hasOwnProperty('success')) {
                obj['success'] = ApiClient.convertToType(data['success'], 'Boolean');
            }
            if (data.hasOwnProperty('running')) {
                obj['running'] = ApiClient.convertToType(data['running'], 'Boolean');
            }
            if (data.hasOwnProperty('timezone')) {
                obj['timezone'] = ApiClient.convertToType(data['timezone'], 'String');
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('created_at')) {
                obj['created_at'] = ApiClient.convertToType(data['created_at'], 'Date');
            }
            if (data.hasOwnProperty('updated_at')) {
                obj['updated_at'] = ApiClient.convertToType(data['updated_at'], 'Date');
            }
            if (data.hasOwnProperty('success_callback')) {
                obj['success_callback'] = ApiClient.convertToType(data['success_callback'], 'String');
            }
            if (data.hasOwnProperty('failure_callback')) {
                obj['failure_callback'] = ApiClient.convertToType(data['failure_callback'], 'String');
            }
        }
        return obj;
    }


}

/**
 * The object's primary key. This uniquely identifies the object in the system.
 * @member {Number} id
 */
SingleJob.prototype['id'] = undefined;

/**
 * The name of the job.
 * @member {String} name
 */
SingleJob.prototype['name'] = undefined;

/**
 * The cron expression for the job.
 * @member {String} cron
 */
SingleJob.prototype['cron'] = undefined;

/**
 * Whether the job is enabled or not.
 * @member {Boolean} enabled
 */
SingleJob.prototype['enabled'] = undefined;

/**
 * The command that is executed when the job fires.
 * @member {String} command
 */
SingleJob.prototype['command'] = undefined;

/**
 * The last time the job ran.
 * @member {Date} last_run
 */
SingleJob.prototype['last_run'] = undefined;

/**
 * The date and time of the job's next run.
 * @member {Date} next_run
 */
SingleJob.prototype['next_run'] = undefined;

/**
 * Whether the last run of the job was successful.
 * @member {Boolean} success
 */
SingleJob.prototype['success'] = undefined;

/**
 * Whether the job is currently running.
 * @member {Boolean} running
 */
SingleJob.prototype['running'] = undefined;

/**
 * The timezone that the job will run in.
 * @member {String} timezone
 */
SingleJob.prototype['timezone'] = undefined;

/**
 * An array of tags associated with the job.
 * @member {Array.<String>} tags
 */
SingleJob.prototype['tags'] = undefined;

/**
 * The UTC date and time that the object was created.
 * @member {Date} created_at
 */
SingleJob.prototype['created_at'] = undefined;

/**
 * The UTC date and time that the object was last modified.
 * @member {Date} updated_at
 */
SingleJob.prototype['updated_at'] = undefined;

/**
 * This url will receive a POST request with details about all successful job runs.
 * @member {String} success_callback
 */
SingleJob.prototype['success_callback'] = undefined;

/**
 * This url will receive a POST request with details about all unsuccessful job runs.
 * @member {String} failure_callback
 */
SingleJob.prototype['failure_callback'] = undefined;






export default SingleJob;

