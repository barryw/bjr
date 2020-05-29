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


import ApiClient from './ApiClient';
import AuthIn from './io.barrywalker.bjr.model/AuthIn';
import AuthOut from './io.barrywalker.bjr.model/AuthOut';
import FolderArrayMessage from './io.barrywalker.bjr.model/FolderArrayMessage';
import JobArrayMessage from './io.barrywalker.bjr.model/JobArrayMessage';
import JobIn from './io.barrywalker.bjr.model/JobIn';
import JobRunArrayMessage from './io.barrywalker.bjr.model/JobRunArrayMessage';
import JobStat from './io.barrywalker.bjr.model/JobStat';
import JobStatMessage from './io.barrywalker.bjr.model/JobStatMessage';
import OccurrenceMessage from './io.barrywalker.bjr.model/OccurrenceMessage';
import ServerVersion from './io.barrywalker.bjr.model/ServerVersion';
import SingleFolder from './io.barrywalker.bjr.model/SingleFolder';
import SingleFolderMessage from './io.barrywalker.bjr.model/SingleFolderMessage';
import SingleJob from './io.barrywalker.bjr.model/SingleJob';
import SingleJobMessage from './io.barrywalker.bjr.model/SingleJobMessage';
import SingleJobRun from './io.barrywalker.bjr.model/SingleJobRun';
import SingleJobRunMessage from './io.barrywalker.bjr.model/SingleJobRunMessage';
import SingleUser from './io.barrywalker.bjr.model/SingleUser';
import SingleUserMessage from './io.barrywalker.bjr.model/SingleUserMessage';
import Tag from './io.barrywalker.bjr.model/Tag';
import TagMessage from './io.barrywalker.bjr.model/TagMessage';
import TimezoneMessage from './io.barrywalker.bjr.model/TimezoneMessage';
import TodaysStats from './io.barrywalker.bjr.model/TodaysStats';
import TodaysStatsMessage from './io.barrywalker.bjr.model/TodaysStatsMessage';
import UserArrayMessage from './io.barrywalker.bjr.model/UserArrayMessage';
import UserNewIn from './io.barrywalker.bjr.model/UserNewIn';
import UserUpdateIn from './io.barrywalker.bjr.model/UserUpdateIn';
import AuthenticationApi from './io.barrywalker.bjr.api/AuthenticationApi';
import FoldersApi from './io.barrywalker.bjr.api/FoldersApi';
import JobServerApi from './io.barrywalker.bjr.api/JobServerApi';
import JobsApi from './io.barrywalker.bjr.api/JobsApi';
import StaticApi from './io.barrywalker.bjr.api/StaticApi';
import UsersApi from './io.barrywalker.bjr.api/UsersApi';


/**
* BJR Client SDK for Javascript.<br>
* The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
* <p>
* An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
* <pre>
* var Bjr4js = require('io.barrywalker.bjr/index'); // See note below*.
* var xxxSvc = new Bjr4js.XxxApi(); // Allocate the API class we're going to use.
* var yyyModel = new Bjr4js.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* <em>*NOTE: For a top-level AMD script, use require(['io.barrywalker.bjr/index'], function(){...})
* and put the application logic within the callback function.</em>
* </p>
* <p>
* A non-AMD browser application (discouraged) might do something like this:
* <pre>
* var xxxSvc = new Bjr4js.XxxApi(); // Allocate the API class we're going to use.
* var yyy = new Bjr4js.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* </p>
* @module io.barrywalker.bjr/index
* @version 1.6.2
*/
export {
    /**
     * The ApiClient constructor.
     * @property {module:io.barrywalker.bjr/ApiClient}
     */
    ApiClient,

    /**
     * The AuthIn model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthIn}
     */
    AuthIn,

    /**
     * The AuthOut model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/AuthOut}
     */
    AuthOut,

    /**
     * The FolderArrayMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/FolderArrayMessage}
     */
    FolderArrayMessage,

    /**
     * The JobArrayMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobArrayMessage}
     */
    JobArrayMessage,

    /**
     * The JobIn model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobIn}
     */
    JobIn,

    /**
     * The JobRunArrayMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobRunArrayMessage}
     */
    JobRunArrayMessage,

    /**
     * The JobStat model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStat}
     */
    JobStat,

    /**
     * The JobStatMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/JobStatMessage}
     */
    JobStatMessage,

    /**
     * The OccurrenceMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/OccurrenceMessage}
     */
    OccurrenceMessage,

    /**
     * The ServerVersion model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/ServerVersion}
     */
    ServerVersion,

    /**
     * The SingleFolder model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolder}
     */
    SingleFolder,

    /**
     * The SingleFolderMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleFolderMessage}
     */
    SingleFolderMessage,

    /**
     * The SingleJob model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJob}
     */
    SingleJob,

    /**
     * The SingleJobMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobMessage}
     */
    SingleJobMessage,

    /**
     * The SingleJobRun model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobRun}
     */
    SingleJobRun,

    /**
     * The SingleJobRunMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleJobRunMessage}
     */
    SingleJobRunMessage,

    /**
     * The SingleUser model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUser}
     */
    SingleUser,

    /**
     * The SingleUserMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/SingleUserMessage}
     */
    SingleUserMessage,

    /**
     * The Tag model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/Tag}
     */
    Tag,

    /**
     * The TagMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TagMessage}
     */
    TagMessage,

    /**
     * The TimezoneMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TimezoneMessage}
     */
    TimezoneMessage,

    /**
     * The TodaysStats model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStats}
     */
    TodaysStats,

    /**
     * The TodaysStatsMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/TodaysStatsMessage}
     */
    TodaysStatsMessage,

    /**
     * The UserArrayMessage model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserArrayMessage}
     */
    UserArrayMessage,

    /**
     * The UserNewIn model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserNewIn}
     */
    UserNewIn,

    /**
     * The UserUpdateIn model constructor.
     * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.model/UserUpdateIn}
     */
    UserUpdateIn,

    /**
    * The AuthenticationApi service constructor.
    * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.api/AuthenticationApi}
    */
    AuthenticationApi,

    /**
    * The FoldersApi service constructor.
    * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.api/FoldersApi}
    */
    FoldersApi,

    /**
    * The JobServerApi service constructor.
    * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobServerApi}
    */
    JobServerApi,

    /**
    * The JobsApi service constructor.
    * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.api/JobsApi}
    */
    JobsApi,

    /**
    * The StaticApi service constructor.
    * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.api/StaticApi}
    */
    StaticApi,

    /**
    * The UsersApi service constructor.
    * @property {module:io.barrywalker.bjr/io.barrywalker.bjr.api/UsersApi}
    */
    UsersApi
};
