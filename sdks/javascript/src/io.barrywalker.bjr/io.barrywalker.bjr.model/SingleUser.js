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
 * The SingleUser model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUser
 * @version 1.7.2
 */
class SingleUser {
    /**
     * Constructs a new <code>SingleUser</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUser
     */
    constructor() { 
        
        SingleUser.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SingleUser</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUser} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUser} The populated <code>SingleUser</code> instance.
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


}

/**
 * The object's primary key. This uniquely identifies the object in the system.
 * @member {Number} id
 */
SingleUser.prototype['id'] = undefined;

/**
 * The user' login name. Must be unique
 * @member {String} username
 */
SingleUser.prototype['username'] = undefined;

/**
 * The UTC date and time that the object was created.
 * @member {Date} created_at
 */
SingleUser.prototype['created_at'] = undefined;

/**
 * The UTC date and time that the object was last modified.
 * @member {Date} updated_at
 */
SingleUser.prototype['updated_at'] = undefined;






export default SingleUser;

