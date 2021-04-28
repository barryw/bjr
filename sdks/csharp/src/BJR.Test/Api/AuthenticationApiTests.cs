/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using BJR.Client;
using BJR.Api;
using BJR.Model;

namespace BJR.Test
{
    /// <summary>
    ///  Class for testing AuthenticationApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class AuthenticationApiTests
    {
        private AuthenticationApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new AuthenticationApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of AuthenticationApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOf' AuthenticationApi
            //Assert.IsInstanceOf(typeof(AuthenticationApi), instance);
        }

        
        /// <summary>
        /// Test AuthenticateUser
        /// </summary>
        [Test]
        public void AuthenticateUserTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //AuthIn authIn = null;
            //var response = instance.AuthenticateUser(authIn);
            //Assert.IsInstanceOf(typeof(AuthOut), response, "response is AuthOut");
        }
        
    }

}
