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
 * The AuthIn model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/AuthIn
 * @version 1.4.3
 */
class AuthIn {
    /**
     * Constructs a new <code>AuthIn</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthIn
     * @param username {String} The username of the user to authenticate as
     * @param password {String} The password of the user to authenticate as
     */
    constructor(username, password) { 
        
        AuthIn.initialize(this, username, password);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, username, password) { 
        obj['username'] = username;
        obj['password'] = password;
    }

    /**
     * Constructs a <code>AuthIn</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthIn} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthIn} The populated <code>AuthIn</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new AuthIn();

            if (data.hasOwnProperty('username')) {
                obj['username'] = ApiClient.convertToType(data['username'], 'String');
            }
            if (data.hasOwnProperty('password')) {
                obj['password'] = ApiClient.convertToType(data['password'], 'String');
            }
        }
        return obj;
    }


}

/**
 * The username of the user to authenticate as
 * @member {String} username
 */
AuthIn.prototype['username'] = undefined;

/**
 * The password of the user to authenticate as
 * @member {String} password
 */
AuthIn.prototype['password'] = undefined;






export default AuthIn;

