/* 
 * BJR API V1
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v1
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using RestSharp;
using BJR.Client;
using BJR.Model;

namespace BJR.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
        public interface IStaticApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Get timezones
        /// </summary>
        /// <remarks>
        /// Get the list of acceptable timezone names.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>TimezoneMessage</returns>
        TimezoneMessage GetTags ();

        /// <summary>
        /// Get timezones
        /// </summary>
        /// <remarks>
        /// Get the list of acceptable timezone names.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of TimezoneMessage</returns>
        ApiResponse<TimezoneMessage> GetTagsWithHttpInfo ();
        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>TagMessage</returns>
        TagMessage GetTags_0 ();

        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of TagMessage</returns>
        ApiResponse<TagMessage> GetTags_0WithHttpInfo ();
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// Get timezones
        /// </summary>
        /// <remarks>
        /// Get the list of acceptable timezone names.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of TimezoneMessage</returns>
        System.Threading.Tasks.Task<TimezoneMessage> GetTagsAsync ();

        /// <summary>
        /// Get timezones
        /// </summary>
        /// <remarks>
        /// Get the list of acceptable timezone names.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (TimezoneMessage)</returns>
        System.Threading.Tasks.Task<ApiResponse<TimezoneMessage>> GetTagsAsyncWithHttpInfo ();
        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of TagMessage</returns>
        System.Threading.Tasks.Task<TagMessage> GetTags_0Async ();

        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (TagMessage)</returns>
        System.Threading.Tasks.Task<ApiResponse<TagMessage>> GetTags_0AsyncWithHttpInfo ();
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
        public partial class StaticApi : IStaticApi
    {
        private BJR.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="StaticApi"/> class.
        /// </summary>
        /// <returns></returns>
        public StaticApi(String basePath)
        {
            this.Configuration = new BJR.Client.Configuration { BasePath = basePath };

            ExceptionFactory = BJR.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="StaticApi"/> class
        /// </summary>
        /// <returns></returns>
        public StaticApi()
        {
            this.Configuration = BJR.Client.Configuration.Default;

            ExceptionFactory = BJR.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="StaticApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public StaticApi(BJR.Client.Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                this.Configuration = BJR.Client.Configuration.Default;
            else
                this.Configuration = configuration;

            ExceptionFactory = BJR.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public String GetBasePath()
        {
            return this.Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        [Obsolete("SetBasePath is deprecated, please do 'Configuration.ApiClient = new ApiClient(\"http://new-path\")' instead.")]
        public void SetBasePath(String basePath)
        {
            // do nothing
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public BJR.Client.Configuration Configuration {get; set;}

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public BJR.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Gets the default header.
        /// </summary>
        /// <returns>Dictionary of HTTP header</returns>
        [Obsolete("DefaultHeader is deprecated, please use Configuration.DefaultHeader instead.")]
        public IDictionary<String, String> DefaultHeader()
        {
            return new ReadOnlyDictionary<string, string>(this.Configuration.DefaultHeader);
        }

        /// <summary>
        /// Add default header.
        /// </summary>
        /// <param name="key">Header field name.</param>
        /// <param name="value">Header field value.</param>
        /// <returns></returns>
        [Obsolete("AddDefaultHeader is deprecated, please use Configuration.AddDefaultHeader instead.")]
        public void AddDefaultHeader(string key, string value)
        {
            this.Configuration.AddDefaultHeader(key, value);
        }

        /// <summary>
        /// Get timezones Get the list of acceptable timezone names.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>TimezoneMessage</returns>
        public TimezoneMessage GetTags ()
        {
             ApiResponse<TimezoneMessage> localVarResponse = GetTagsWithHttpInfo();
             return localVarResponse.Data;
        }

        /// <summary>
        /// Get timezones Get the list of acceptable timezone names.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of TimezoneMessage</returns>
        public ApiResponse< TimezoneMessage > GetTagsWithHttpInfo ()
        {

            var localVarPath = "/static_api/timezones";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            // authentication (bearerAuth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetTags", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<TimezoneMessage>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (TimezoneMessage) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(TimezoneMessage)));
        }

        /// <summary>
        /// Get timezones Get the list of acceptable timezone names.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of TimezoneMessage</returns>
        public async System.Threading.Tasks.Task<TimezoneMessage> GetTagsAsync ()
        {
             ApiResponse<TimezoneMessage> localVarResponse = await GetTagsAsyncWithHttpInfo();
             return localVarResponse.Data;

        }

        /// <summary>
        /// Get timezones Get the list of acceptable timezone names.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (TimezoneMessage)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<TimezoneMessage>> GetTagsAsyncWithHttpInfo ()
        {

            var localVarPath = "/static_api/timezones";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            // authentication (bearerAuth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetTags", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<TimezoneMessage>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (TimezoneMessage) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(TimezoneMessage)));
        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>TagMessage</returns>
        public TagMessage GetTags_0 ()
        {
             ApiResponse<TagMessage> localVarResponse = GetTags_0WithHttpInfo();
             return localVarResponse.Data;
        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of TagMessage</returns>
        public ApiResponse< TagMessage > GetTags_0WithHttpInfo ()
        {

            var localVarPath = "/static_api/tags";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            // authentication (bearerAuth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetTags_0", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<TagMessage>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (TagMessage) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(TagMessage)));
        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of TagMessage</returns>
        public async System.Threading.Tasks.Task<TagMessage> GetTags_0Async ()
        {
             ApiResponse<TagMessage> localVarResponse = await GetTags_0AsyncWithHttpInfo();
             return localVarResponse.Data;

        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (TagMessage)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<TagMessage>> GetTags_0AsyncWithHttpInfo ()
        {

            var localVarPath = "/static_api/tags";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            // authentication (bearerAuth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetTags_0", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<TagMessage>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (TagMessage) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(TagMessage)));
        }

    }
}
