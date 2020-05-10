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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/io.barrywalker.bjr/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/io.barrywalker.bjr/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.Bjr4js);
  }
}(this, function(expect, Bjr4js) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new Bjr4js.TodaysStats();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('TodaysStats', function() {
    it('should create an instance of TodaysStats', function() {
      // uncomment below and update the code to test TodaysStats
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be.a(Bjr4js.TodaysStats);
    });

    it('should have the property totalJobs (base name: "total_jobs")', function() {
      // uncomment below and update the code to test the property totalJobs
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property totalJobsTrend (base name: "total_jobs_trend")', function() {
      // uncomment below and update the code to test the property totalJobsTrend
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property enabledJobs (base name: "enabled_jobs")', function() {
      // uncomment below and update the code to test the property enabledJobs
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property enabledJobsTrend (base name: "enabled_jobs_trend")', function() {
      // uncomment below and update the code to test the property enabledJobsTrend
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property runJobs (base name: "run_jobs")', function() {
      // uncomment below and update the code to test the property runJobs
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property runJobsTrend (base name: "run_jobs_trend")', function() {
      // uncomment below and update the code to test the property runJobsTrend
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property failedJobs (base name: "failed_jobs")', function() {
      // uncomment below and update the code to test the property failedJobs
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property failedJobsTrend (base name: "failed_jobs_trend")', function() {
      // uncomment below and update the code to test the property failedJobsTrend
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property avgJobRuntime (base name: "avg_job_runtime")', function() {
      // uncomment below and update the code to test the property avgJobRuntime
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property avgJobRuntimeTrend (base name: "avg_job_runtime_trend")', function() {
      // uncomment below and update the code to test the property avgJobRuntimeTrend
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property maxJobRuntime (base name: "max_job_runtime")', function() {
      // uncomment below and update the code to test the property maxJobRuntime
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property maxJobRuntimeTrend (base name: "max_job_runtime_trend")', function() {
      // uncomment below and update the code to test the property maxJobRuntimeTrend
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property minJobRuntime (base name: "min_job_runtime")', function() {
      // uncomment below and update the code to test the property minJobRuntime
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

    it('should have the property minJobRuntimeTrend (base name: "min_job_runtime_trend")', function() {
      // uncomment below and update the code to test the property minJobRuntimeTrend
      //var instane = new Bjr4js.TodaysStats();
      //expect(instance).to.be();
    });

  });

}));
