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
* The SingleUser model module.
* @module BJR/Model/SingleUser
* @version v1
*/
export default class SingleUser {
    /**
    * Constructs a new <code>SingleUser</code>.
    * @alias module:BJR/Model/SingleUser
    * @class
    */

    constructor() {
        
        
        
    }

    /**
    * Constructs a <code>SingleUser</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:BJR/Model/SingleUser} obj Optional instance to populate.
    * @return {module:BJR/Model/SingleUser} The populated <code>SingleUser</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SingleUser();
                        
            
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('username')) {
                obj['username'] = ApiClient.convertToType(data['username'], 'String');
            }
            if (data.hasOwnProperty('created_at')) {
                obj['created_at'] = ApiClient.convertToType(data['created_at'], 'Date');
            }
            if (data.hasOwnProperty('updated_at')) {
                obj['updated_at'] = ApiClient.convertToType(data['updated_at'], 'Date');
            }
        }
        return obj;
    }

    /**
    * The object's primary key. This uniquely identifies the object in the system.
    * @member {Number} id
    */
    id = undefined;
    /**
    * @member {String} username
    */
    username = undefined;
    /**
    * The UTC date and time that the object was created.
    * @member {Date} created_at
    */
    created_at = undefined;
    /**
    * The UTC date and time that the object was last modified.
    * @member {Date} updated_at
    */
    updated_at = undefined;




}
