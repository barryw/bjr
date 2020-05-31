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
 * The Tag model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/Tag
 * @version 1.7.2
 */
class Tag {
    /**
     * Constructs a new <code>Tag</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/Tag
     */
    constructor() { 
        
        Tag.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Tag</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/Tag} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/Tag} The populated <code>Tag</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Tag();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('taggings_count')) {
                obj['taggings_count'] = ApiClient.convertToType(data['taggings_count'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} id
 */
Tag.prototype['id'] = undefined;

/**
 * @member {String} name
 */
Tag.prototype['name'] = undefined;

/**
 * @member {Number} taggings_count
 */
Tag.prototype['taggings_count'] = undefined;






export default Tag;

