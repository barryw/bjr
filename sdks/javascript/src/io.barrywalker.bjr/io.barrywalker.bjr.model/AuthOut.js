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
 * The AuthOut model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/AuthOut
 * @version 1.1.3
 */
class AuthOut {
    /**
     * Constructs a new <code>AuthOut</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthOut
     */
    constructor() { 
        
        AuthOut.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>AuthOut</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthOut} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthOut} The populated <code>AuthOut</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AuthOut();

            if (data.hasOwnProperty('auth_token')) {
                obj['auth_token'] = ApiClient.convertToType(data['auth_token'], 'String');
            }
            if (data.hasOwnProperty('message')) {
                obj['message'] = ApiClient.convertToType(data['message'], 'String');
            }
            if (data.hasOwnProperty('is_error')) {
                obj['is_error'] = ApiClient.convertToType(data['is_error'], 'Boolean');
            }
            if (data.hasOwnProperty('status_code')) {
                obj['status_code'] = ApiClient.convertToType(data['status_code'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * The JWT authentication token. This must be passed in the Authorization header on subsequent requests.
 * @member {String} auth_token
 */
AuthOut.prototype['auth_token'] = undefined;

/**
 * If authentication failed, this will contain the reason why.
 * @member {String} message
 */
AuthOut.prototype['message'] = undefined;

/**
 * This will be true if the authentication was successful, and false if not.
 * @member {Boolean} is_error
 */
AuthOut.prototype['is_error'] = undefined;

/**
 * The HTTP status code returned.
 * @member {Number} status_code
 */
AuthOut.prototype['status_code'] = undefined;






export default AuthOut;

