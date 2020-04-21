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

import ApiClient from '../ApiClient';

/**
* The JobIn model module.
* @module BJR/Model/JobIn
* @version v1
*/
export default class JobIn {
    /**
    * Constructs a new <code>JobIn</code>.
    * @alias module:BJR/Model/JobIn
    * @class
    */

    constructor() {
        
        
        
    }

    /**
    * Constructs a <code>JobIn</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:BJR/Model/JobIn} obj Optional instance to populate.
    * @return {module:BJR/Model/JobIn} The populated <code>JobIn</code> instance.
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

    /**
    * The new name of the job. Must be unique.
    * @member {String} name
    */
    name = undefined;
    /**
    * The new cron expression for the job.
    * @member {String} cron
    */
    cron = undefined;
    /**
    * The command to run when the job fires.
    * @member {String} command
    */
    command = undefined;
    /**
    * The timezone to run the job in.
    * @member {String} timezone
    */
    timezone = undefined;
    /**
    * Is the job enabled by default?
    * @member {Boolean} enabled
    */
    enabled = undefined;
    /**
    * A comma-separated list of tags to associate with this job. You can search jobs by their tags.
    * @member {String} tags
    */
    tags = undefined;
    /**
    * Specify the url to receive a POST callback for all successful runs of this job.
    * @member {String} success_callback
    */
    success_callback = undefined;
    /**
    * Specify the url to receive a POST callback for all unsuccessful runs of this job.
    * @member {String} failure_callback
    */
    failure_callback = undefined;




}
