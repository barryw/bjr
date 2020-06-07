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
 * The SingleFolder model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolder
 * @version 2.4.0
 */
class SingleFolder {
    /**
     * Constructs a new <code>SingleFolder</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolder
     */
    constructor() { 
        
        SingleFolder.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SingleFolder</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolder} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolder} The populated <code>SingleFolder</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SingleFolder();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('expression')) {
                obj['expression'] = ApiClient.convertToType(data['expression'], 'String');
            }
            if (data.hasOwnProperty('job_count')) {
                obj['job_count'] = ApiClient.convertToType(data['job_count'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * The object's primary key. This uniquely identifies the object in the system.
 * @member {Number} id
 */
SingleFolder.prototype['id'] = undefined;

/**
 * The folder's name. Must be unique.
 * @member {String} name
 */
SingleFolder.prototype['name'] = undefined;

/**
 * The search expression used to determine which jobs appear in this folder.
 * @member {String} expression
 */
SingleFolder.prototype['expression'] = undefined;

/**
 * The number of jobs that match the folder's expression.
 * @member {Number} job_count
 */
SingleFolder.prototype['job_count'] = undefined;






export default SingleFolder;

