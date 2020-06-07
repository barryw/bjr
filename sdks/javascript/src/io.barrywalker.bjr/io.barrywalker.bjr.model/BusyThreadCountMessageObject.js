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
import BusyThreadCountMessageObjectHosts from './BusyThreadCountMessageObjectHosts';

/**
 * The BusyThreadCountMessageObject model module.
 * @module io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObject
 * @version 2.3.2
 */
class BusyThreadCountMessageObject {
    /**
     * Constructs a new <code>BusyThreadCountMessageObject</code>.
     * @alias module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObject
     */
    constructor() { 
        
        BusyThreadCountMessageObject.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>BusyThreadCountMessageObject</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObject} obj Optional instance to populate.
     * @return {module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObject} The populated <code>BusyThreadCountMessageObject</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BusyThreadCountMessageObject();

            if (data.hasOwnProperty('total_busy')) {
                obj['total_busy'] = ApiClient.convertToType(data['total_busy'], 'Number');
            }
            if (data.hasOwnProperty('hosts')) {
                obj['hosts'] = ApiClient.convertToType(data['hosts'], [BusyThreadCountMessageObjectHosts]);
            }
        }
        return obj;
    }


}

/**
 * The total number of busy workers across all pods/hosts.
 * @member {Number} total_busy
 */
BusyThreadCountMessageObject.prototype['total_busy'] = undefined;

/**
 * @member {Array.<module:io.barrywalker.bjr/io.barrywalker.bjr.model/BusyThreadCountMessageObjectHosts>} hosts
 */
BusyThreadCountMessageObject.prototype['hosts'] = undefined;






export default BusyThreadCountMessageObject;

