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
    instance = new Bjr4js.JobServerApi();
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

  describe('JobServerApi', function() {
    describe('recentJobs', function() {
      it('should call recentJobs successfully', function(done) {
        //uncomment below and update the code to test recentJobs
        //instance.recentJobs(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('statsByDay', function() {
      it('should call statsByDay successfully', function(done) {
        //uncomment below and update the code to test statsByDay
        //instance.statsByDay(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('statsByHour', function() {
      it('should call statsByHour successfully', function(done) {
        //uncomment below and update the code to test statsByHour
        //instance.statsByHour(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('statsByMinute', function() {
      it('should call statsByMinute successfully', function(done) {
        //uncomment below and update the code to test statsByMinute
        //instance.statsByMinute(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('statsByWeek', function() {
      it('should call statsByWeek successfully', function(done) {
        //uncomment below and update the code to test statsByWeek
        //instance.statsByWeek(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('todaysStats', function() {
      it('should call todaysStats successfully', function(done) {
        //uncomment below and update the code to test todaysStats
        //instance.todaysStats(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('upcomingJobs', function() {
      it('should call upcomingJobs successfully', function(done) {
        //uncomment below and update the code to test upcomingJobs
        //instance.upcomingJobs(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
