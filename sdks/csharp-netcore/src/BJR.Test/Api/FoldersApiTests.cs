/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using BJR.Client;
using BJR.Api;
// uncomment below to import models
//using BJR.Model;

namespace BJR.Test.Api
{
    /// <summary>
    ///  Class for testing FoldersApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class FoldersApiTests : IDisposable
    {
        private FoldersApi instance;

        public FoldersApiTests()
        {
            instance = new FoldersApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of FoldersApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' FoldersApi
            //Assert.IsType<FoldersApi>(instance);
        }

        /// <summary>
        /// Test CreateFolder
        /// </summary>
        [Fact]
        public void CreateFolderTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string name = null;
            //string expression = null;
            //var response = instance.CreateFolder(name, expression);
            //Assert.IsType<SingleFolderMessage>(response);
        }

        /// <summary>
        /// Test DeleteFolder
        /// </summary>
        [Fact]
        public void DeleteFolderTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.DeleteFolder(id);
            //Assert.IsType<SingleFolderMessage>(response);
        }

        /// <summary>
        /// Test GetFolder
        /// </summary>
        [Fact]
        public void GetFolderTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.GetFolder(id);
            //Assert.IsType<SingleFolderMessage>(response);
        }

        /// <summary>
        /// Test GetFolderJobs
        /// </summary>
        [Fact]
        public void GetFolderJobsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //int? perPage = null;
            //int? page = null;
            //var response = instance.GetFolderJobs(id, perPage, page);
            //Assert.IsType<JobArrayMessage>(response);
        }

        /// <summary>
        /// Test GetFolders
        /// </summary>
        [Fact]
        public void GetFoldersTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? perPage = null;
            //int? page = null;
            //var response = instance.GetFolders(perPage, page);
            //Assert.IsType<FolderArrayMessage>(response);
        }

        /// <summary>
        /// Test UpdateFolder
        /// </summary>
        [Fact]
        public void UpdateFolderTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //string name = null;
            //string expression = null;
            //var response = instance.UpdateFolder(id, name, expression);
            //Assert.IsType<SingleFolderMessage>(response);
        }
    }
}
