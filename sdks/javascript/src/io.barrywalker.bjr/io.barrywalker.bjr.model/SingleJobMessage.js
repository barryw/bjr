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
import SingleJob from './SingleJob';

/**
 * The SingleJobMessage model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage
 * @version 2.6.0
 */
class SingleJobMessage {
    /**
     * Constructs a new <code>SingleJobMessage</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage
     */
    constructor() { 
        
        SingleJobMessage.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SingleJobMessage</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage} The populated <code>SingleJobMessage</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SingleJobMessage();

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


}

/**
 * The status message returned from the API call.
 * @member {String} message
 */
SingleJobMessage.prototype['message'] = undefined;

/**
 * True if there was an error performing the API call.
 * @member {Boolean} is_error
 */
SingleJobMessage.prototype['is_error'] = undefined;

/**
 * The type of object being returned.
 * @member {String} object_type
 */
SingleJobMessage.prototype['object_type'] = undefined;

/**
 * The HTTP status code returned.
 * @member {Number} status_code
 */
SingleJobMessage.prototype['status_code'] = undefined;

/**
 * @member {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJob} object
 */
SingleJobMessage.prototype['object'] = undefined;






export default SingleJobMessage;

