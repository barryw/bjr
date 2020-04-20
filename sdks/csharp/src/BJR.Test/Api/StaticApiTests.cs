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

using BJR.Client;
using BJR.Api;
using BJR.Model;

namespace BJR.Test
{
    /// <summary>
    ///  Class for testing StaticApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class StaticApiTests
    {
        private StaticApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new StaticApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of StaticApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' StaticApi
            //Assert.IsInstanceOfType(typeof(StaticApi), instance, "instance is a StaticApi");
        }

        /// <summary>
        /// Test GetTags
        /// </summary>
        [Test]
        public void GetTagsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.GetTags();
            //Assert.IsInstanceOf<StringArray> (response, "response is StringArray");
        }
        /// <summary>
        /// Test GetTags_0
        /// </summary>
        [Test]
        public void GetTags_0Test()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.GetTags_0();
            //Assert.IsInstanceOf<TagArray> (response, "response is TagArray");
        }
    }

}
