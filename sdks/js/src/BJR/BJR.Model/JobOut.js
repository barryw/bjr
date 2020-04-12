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
import SingleJob from './SingleJob';

/**
* The JobOut model module.
* @module BJR/BJR.Model/JobOut
* @version v1
*/
export default class JobOut {
    /**
    * Constructs a new <code>JobOut</code>.
    * @alias module:BJR/BJR.Model/JobOut
    * @class
    */

    constructor() {
        
        
        
    }

    /**
    * Constructs a <code>JobOut</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:BJR/BJR.Model/JobOut} obj Optional instance to populate.
    * @return {module:BJR/BJR.Model/JobOut} The populated <code>JobOut</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new JobOut();
                        
            
            if (data.hasOwnProperty('message')) {
                obj['message'] = ApiClient.convertToType(data['message'], 'String');
            }
            if (data.hasOwnProperty('is_error')) {
                obj['is_error'] = ApiClient.convertToType(data['is_error'], 'Boolean');
            }
            if (data.hasOwnProperty('object_type')) {
                obj['object_type'] = ApiClient.convertToType(data['object_type'], 'String');
            }
            if (data.hasOwnProperty('status_code')) {
                obj['status_code'] = ApiClient.convertToType(data['status_code'], 'Number');
            }
            if (data.hasOwnProperty('object')) {
                obj['object'] = SingleJob.constructFromObject(data['object']);
            }
        }
        return obj;
    }

    /**
    * The status message returned from the API call.
    * @member {String} message
    */
    message = undefined;
    /**
    * True if there was an error performing the API call.
    * @member {Boolean} is_error
    */
    is_error = undefined;
    /**
    * The type of object being returned.
    * @member {String} object_type
    */
    object_type = undefined;
    /**
    * The HTTP status code returned.
    * @member {Number} status_code
    */
    status_code = undefined;
    /**
    * @member {module:BJR/BJR.Model/SingleJob} object
    */
    object = undefined;




}
