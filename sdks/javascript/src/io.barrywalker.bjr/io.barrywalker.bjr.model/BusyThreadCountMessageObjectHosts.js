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
 * The BusyThreadCountMessageObjectHosts model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObjectHosts
 * @version 1.7.2
 */
class BusyThreadCountMessageObjectHosts {
    /**
     * Constructs a new <code>BusyThreadCountMessageObjectHosts</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObjectHosts
     */
    constructor() { 
        
        BusyThreadCountMessageObjectHosts.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>BusyThreadCountMessageObjectHosts</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObjectHosts} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObjectHosts} The populated <code>BusyThreadCountMessageObjectHosts</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BusyThreadCountMessageObjectHosts();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('busy')) {
                obj['busy'] = ApiClient.convertToType(data['busy'], 'Number');
            }
            if (data.hasOwnProperty('pid')) {
                obj['pid'] = ApiClient.convertToType(data['pid'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * The name of the worker host.
 * @member {String} name
 */
BusyThreadCountMessageObjectHosts.prototype['name'] = undefined;

/**
 * The number of busy threads on the worker.
 * @member {Number} busy
 */
BusyThreadCountMessageObjectHosts.prototype['busy'] = undefined;

/**
 * The process ID of the worker process.
 * @member {Number} pid
 */
BusyThreadCountMessageObjectHosts.prototype['pid'] = undefined;






export default BusyThreadCountMessageObjectHosts;

