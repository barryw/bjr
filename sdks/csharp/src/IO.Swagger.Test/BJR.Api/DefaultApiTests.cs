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
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.BJR.Api;
using IO.Swagger.BJR.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing DefaultApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class DefaultApiTests
    {
        private DefaultApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new DefaultApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of DefaultApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' DefaultApi
            //Assert.IsInstanceOfType(typeof(DefaultApi), instance, "instance is a DefaultApi");
        }

        /// <summary>
        /// Test AuthenticatePost
        /// </summary>
        [Test]
        public void AuthenticatePostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //AuthIn body = null;
            //var response = instance.AuthenticatePost(body);
            //Assert.IsInstanceOf<AuthOut> (response, "response is AuthOut");
        }
        /// <summary>
        /// Test JobApiGet
        /// </summary>
        [Test]
        public void JobApiGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //instance.JobApiGet();
            
        }
        /// <summary>
        /// Test JobApiIdDelete
        /// </summary>
        [Test]
        public void JobApiIdDeleteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //instance.JobApiIdDelete(id);
            
        }
        /// <summary>
        /// Test JobApiIdGet
        /// </summary>
        [Test]
        public void JobApiIdGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //instance.JobApiIdGet(id);
            
        }
        /// <summary>
        /// Test JobApiIdPut
        /// </summary>
        [Test]
        public void JobApiIdPutTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //JobIn body = null;
            //var response = instance.JobApiIdPut(id, body);
            //Assert.IsInstanceOf<JobOut> (response, "response is JobOut");
        }
        /// <summary>
        /// Test JobApiPost
        /// </summary>
        [Test]
        public void JobApiPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //JobIn body = null;
            //var response = instance.JobApiPost(body);
            //Assert.IsInstanceOf<JobOut> (response, "response is JobOut");
        }
        /// <summary>
        /// Test UserApiGet
        /// </summary>
        [Test]
        public void UserApiGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //instance.UserApiGet();
            
        }
        /// <summary>
        /// Test UserApiIdDelete
        /// </summary>
        [Test]
        public void UserApiIdDeleteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.UserApiIdDelete(id);
            //Assert.IsInstanceOf<UserOut> (response, "response is UserOut");
        }
        /// <summary>
        /// Test UserApiIdGet
        /// </summary>
        [Test]
        public void UserApiIdGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //var response = instance.UserApiIdGet(id);
            //Assert.IsInstanceOf<UserOut> (response, "response is UserOut");
        }
        /// <summary>
        /// Test UserApiIdPut
        /// </summary>
        [Test]
        public void UserApiIdPutTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? id = null;
            //UserUpdateIn body = null;
            //var response = instance.UserApiIdPut(id, body);
            //Assert.IsInstanceOf<UserOut> (response, "response is UserOut");
        }
        /// <summary>
        /// Test UserApiPost
        /// </summary>
        [Test]
        public void UserApiPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //UserNewIn body = null;
            //var response = instance.UserApiPost(body);
            //Assert.IsInstanceOf<UserOut> (response, "response is UserOut");
        }
    }

}
