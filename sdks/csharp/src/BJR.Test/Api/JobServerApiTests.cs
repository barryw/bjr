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
    ///  Class for testing JobServerApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class JobServerApiTests
    {
        private JobServerApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new JobServerApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of JobServerApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOf' JobServerApi
            //Assert.IsInstanceOf(typeof(JobServerApi), instance);
        }

        
        /// <summary>
        /// Test RecentJobs
        /// </summary>
        [Test]
        public void RecentJobsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int count = null;
            //var response = instance.RecentJobs(count);
            //Assert.IsInstanceOf(typeof(JobArrayMessage), response, "response is JobArrayMessage");
        }
        
        /// <summary>
        /// Test StatsByDay
        /// </summary>
        [Test]
        public void StatsByDayTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string startDate = null;
            //string endDate = null;
            //int perPage = null;
            //int page = null;
            //string timezone = null;
            //var response = instance.StatsByDay(startDate, endDate, perPage, page, timezone);
            //Assert.IsInstanceOf(typeof(JobStatMessage), response, "response is JobStatMessage");
        }
        
        /// <summary>
        /// Test StatsByHour
        /// </summary>
        [Test]
        public void StatsByHourTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string startDate = null;
            //string endDate = null;
            //int perPage = null;
            //int page = null;
            //string timezone = null;
            //var response = instance.StatsByHour(startDate, endDate, perPage, page, timezone);
            //Assert.IsInstanceOf(typeof(JobStatMessage), response, "response is JobStatMessage");
        }
        
        /// <summary>
        /// Test StatsByMinute
        /// </summary>
        [Test]
        public void StatsByMinuteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string startDate = null;
            //string endDate = null;
            //int perPage = null;
            //int page = null;
            //string timezone = null;
            //var response = instance.StatsByMinute(startDate, endDate, perPage, page, timezone);
            //Assert.IsInstanceOf(typeof(JobStatMessage), response, "response is JobStatMessage");
        }
        
        /// <summary>
        /// Test StatsByWeek
        /// </summary>
        [Test]
        public void StatsByWeekTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string startDate = null;
            //string endDate = null;
            //int perPage = null;
            //int page = null;
            //string timezone = null;
            //var response = instance.StatsByWeek(startDate, endDate, perPage, page, timezone);
            //Assert.IsInstanceOf(typeof(JobStatMessage), response, "response is JobStatMessage");
        }
        
        /// <summary>
        /// Test UpcomingJobs
        /// </summary>
        [Test]
        public void UpcomingJobsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int count = null;
            //var response = instance.UpcomingJobs(count);
            //Assert.IsInstanceOf(typeof(JobArrayMessage), response, "response is JobArrayMessage");
        }
        
    }

}
