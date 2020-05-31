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
 * The UserNewIn model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/UserNewIn
 * @version 1.8.0
 */
class UserNewIn {
    /**
     * Constructs a new <code>UserNewIn</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserNewIn
     * @param username {String} The new user's username. Must be unique.
     * @param password {String} The new user's password.
     * @param passwordConfirmation {String} The new user's password confirmation. Must match 'password'.
     */
    constructor(username, password, passwordConfirmation) { 
        
        UserNewIn.initialize(this, username, password, passwordConfirmation);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, username, password, passwordConfirmation) { 
        obj['username'] = username;
        obj['password'] = password;
        obj['password_confirmation'] = passwordConfirmation;
    }

    /**
     * Constructs a <code>UserNewIn</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserNewIn} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserNewIn} The populated <code>UserNewIn</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UserNewIn();

            if (data.hasOwnProperty('username')) {
                obj['username'] = ApiClient.convertToType(data['username'], 'String');
            }
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
 * The new user's username. Must be unique.
 * @member {String} username
 */
UserNewIn.prototype['username'] = undefined;

/**
 * The new user's password.
 * @member {String} password
 */
UserNewIn.prototype['password'] = undefined;

/**
 * The new user's password confirmation. Must match 'password'.
 * @member {String} password_confirmation
 */
UserNewIn.prototype['password_confirmation'] = undefined;






export default UserNewIn;

