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
        /// <returns>StringArray</returns>
        StringArray GetTags ();

        /// <summary>
        /// Get timezones
        /// </summary>
        /// <remarks>
        /// Get the list of acceptable timezone names.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of StringArray</returns>
        ApiResponse<StringArray> GetTagsWithHttpInfo ();
        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>TagArray</returns>
        TagArray GetTags_0 ();

        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of TagArray</returns>
        ApiResponse<TagArray> GetTags_0WithHttpInfo ();
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// Get timezones
        /// </summary>
        /// <remarks>
        /// Get the list of acceptable timezone names.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of StringArray</returns>
        System.Threading.Tasks.Task<StringArray> GetTagsAsync ();

        /// <summary>
        /// Get timezones
        /// </summary>
        /// <remarks>
        /// Get the list of acceptable timezone names.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (StringArray)</returns>
        System.Threading.Tasks.Task<ApiResponse<StringArray>> GetTagsAsyncWithHttpInfo ();
        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of TagArray</returns>
        System.Threading.Tasks.Task<TagArray> GetTags_0Async ();

        /// <summary>
        /// Get tags
        /// </summary>
        /// <remarks>
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        /// </remarks>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (TagArray)</returns>
        System.Threading.Tasks.Task<ApiResponse<TagArray>> GetTags_0AsyncWithHttpInfo ();
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
        /// <returns>StringArray</returns>
        public StringArray GetTags ()
        {
             ApiResponse<StringArray> localVarResponse = GetTagsWithHttpInfo();
             return localVarResponse.Data;
        }

        /// <summary>
        /// Get timezones Get the list of acceptable timezone names.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of StringArray</returns>
        public ApiResponse< StringArray > GetTagsWithHttpInfo ()
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

            return new ApiResponse<StringArray>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (StringArray) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(StringArray)));
        }

        /// <summary>
        /// Get timezones Get the list of acceptable timezone names.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of StringArray</returns>
        public async System.Threading.Tasks.Task<StringArray> GetTagsAsync ()
        {
             ApiResponse<StringArray> localVarResponse = await GetTagsAsyncWithHttpInfo();
             return localVarResponse.Data;

        }

        /// <summary>
        /// Get timezones Get the list of acceptable timezone names.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (StringArray)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<StringArray>> GetTagsAsyncWithHttpInfo ()
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

            return new ApiResponse<StringArray>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (StringArray) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(StringArray)));
        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>TagArray</returns>
        public TagArray GetTags_0 ()
        {
             ApiResponse<TagArray> localVarResponse = GetTags_0WithHttpInfo();
             return localVarResponse.Data;
        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>ApiResponse of TagArray</returns>
        public ApiResponse< TagArray > GetTags_0WithHttpInfo ()
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

            return new ApiResponse<TagArray>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (TagArray) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(TagArray)));
        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of TagArray</returns>
        public async System.Threading.Tasks.Task<TagArray> GetTags_0Async ()
        {
             ApiResponse<TagArray> localVarResponse = await GetTags_0AsyncWithHttpInfo();
             return localVarResponse.Data;

        }

        /// <summary>
        /// Get tags Retrieves the list of tags that are currently in use for the authenticated user.
        /// </summary>
        /// <exception cref="BJR.Client.ApiException">Thrown when fails to make API call</exception>
        /// <returns>Task of ApiResponse (TagArray)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<TagArray>> GetTags_0AsyncWithHttpInfo ()
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

            return new ApiResponse<TagArray>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (TagArray) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(TagArray)));
        }

    }
}
