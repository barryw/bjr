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
 * The UserUpdateIn model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/UserUpdateIn
 * @version 1.1.4
 */
class UserUpdateIn {
    /**
     * Constructs a new <code>UserUpdateIn</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserUpdateIn
     * @param password {String} The new user's password.
     * @param passwordConfirmation {String} The new user's password confirmation. Must match 'password'.
     */
    constructor(password, passwordConfirmation) { 
        
        UserUpdateIn.initialize(this, password, passwordConfirmation);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, password, passwordConfirmation) { 
        obj['password'] = password;
        obj['password_confirmation'] = passwordConfirmation;
    }

    /**
     * Constructs a <code>UserUpdateIn</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserUpdateIn} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserUpdateIn} The populated <code>UserUpdateIn</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UserUpdateIn();

            if (data.hasOwnProperty('password')) {
                obj['password'] = ApiClient.convertToType(data['password'], 'String');
            }
            if (data.hasOwnProperty('password_confirmation')) {
                obj['password_confirmation'] = ApiClient.convertToType(data['password_confirmation'], 'String');
            }
        }
        return obj;
    }


}

/**
 * The new user's password.
 * @member {String} password
 */
UserUpdateIn.prototype['password'] = undefined;

/**
 * The new user's password confirmation. Must match 'password'.
 * @member {String} password_confirmation
 */
UserUpdateIn.prototype['password_confirmation'] = undefined;






export default UserUpdateIn;

