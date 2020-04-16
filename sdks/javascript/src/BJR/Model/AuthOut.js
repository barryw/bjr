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
* The AuthOut model module.
* @module BJR/Model/AuthOut
* @version v1
*/
export default class AuthOut {
    /**
    * Constructs a new <code>AuthOut</code>.
    * @alias module:BJR/Model/AuthOut
    * @class
    */

    constructor() {
        
        
        
    }

    /**
    * Constructs a <code>AuthOut</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:BJR/Model/AuthOut} obj Optional instance to populate.
    * @return {module:BJR/Model/AuthOut} The populated <code>AuthOut</code> instance.
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
        }
        return obj;
    }

    /**
    * The JWT authentication token. This must be passed in the Authorization header on subsequent requests.
    * @member {String} auth_token
    */
    auth_token = undefined;
    /**
    * If authentication failed, this will contain the reason why.
    * @member {String} message
    */
    message = undefined;
    /**
    * This will be true if the authentication was successful, and false if not.
    * @member {Boolean} is_error
    */
    is_error = undefined;




}