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
 * The JobIn model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/JobIn
 * @version 2.3.3
 */
class JobIn {
    /**
     * Constructs a new <code>JobIn</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobIn
     * @param name {String} The new name of the job. Must be unique.
     * @param cron {String} The new cron expression for the job.
     * @param command {String} The command to run when the job fires.
     */
    constructor(name, cron, command) { 
        
        JobIn.initialize(this, name, cron, command);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, name, cron, command) { 
        obj['name'] = name;
        obj['cron'] = cron;
        obj['command'] = command;
    }

    /**
     * Constructs a <code>JobIn</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobIn} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobIn} The populated <code>JobIn</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new JobIn();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('cron')) {
                obj['cron'] = ApiClient.convertToType(data['cron'], 'String');
            }
            if (data.hasOwnProperty('command')) {
                obj['command'] = ApiClient.convertToType(data['command'], 'String');
            }
            if (data.hasOwnProperty('timezone')) {
                obj['timezone'] = ApiClient.convertToType(data['timezone'], 'String');
            }
            if (data.hasOwnProperty('enabled')) {
                obj['enabled'] = ApiClient.convertToType(data['enabled'], 'Boolean');
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], 'String');
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
 * The new name of the job. Must be unique.
 * @member {String} name
 */
JobIn.prototype['name'] = undefined;

/**
 * The new cron expression for the job.
 * @member {String} cron
 */
JobIn.prototype['cron'] = undefined;

/**
 * The command to run when the job fires.
 * @member {String} command
 */
JobIn.prototype['command'] = undefined;

/**
 * The timezone to run the job in.
 * @member {String} timezone
 */
JobIn.prototype['timezone'] = undefined;

/**
 * Is the job enabled by default?
 * @member {Boolean} enabled
 */
JobIn.prototype['enabled'] = undefined;

/**
 * A comma-separated list of tags to associate with this job. You can search jobs by their tags.
 * @member {String} tags
 */
JobIn.prototype['tags'] = undefined;

/**
 * Specify the url to receive a POST callback for all successful runs of this job.
 * @member {String} success_callback
 */
JobIn.prototype['success_callback'] = undefined;

/**
 * Specify the url to receive a POST callback for all unsuccessful runs of this job.
 * @member {String} failure_callback
 */
JobIn.prototype['failure_callback'] = undefined;






export default JobIn;

