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
import BusyThreadCountMessageObject from './BusyThreadCountMessageObject';

/**
 * The BusyThreadCountMessage model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessage
 * @version 2.6.0
 */
class BusyThreadCountMessage {
    /**
     * Constructs a new <code>BusyThreadCountMessage</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessage
     */
    constructor() { 
        
        BusyThreadCountMessage.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>BusyThreadCountMessage</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessage} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessage} The populated <code>BusyThreadCountMessage</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BusyThreadCountMessage();

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
                obj['object'] = BusyThreadCountMessageObject.constructFromObject(data['object']);
            }
        }
        return obj;
    }


}

/**
 * The status message returned from the API call.
 * @member {String} message
 */
BusyThreadCountMessage.prototype['message'] = undefined;

/**
 * True if there was an error performing the API call.
 * @member {Boolean} is_error
 */
BusyThreadCountMessage.prototype['is_error'] = undefined;

/**
 * The type of object being returned.
 * @member {String} object_type
 */
BusyThreadCountMessage.prototype['object_type'] = undefined;

/**
 * The HTTP status code returned.
 * @member {Number} status_code
 */
BusyThreadCountMessage.prototype['status_code'] = undefined;

/**
 * @member {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObject} object
 */
BusyThreadCountMessage.prototype['object'] = undefined;






export default BusyThreadCountMessage;

