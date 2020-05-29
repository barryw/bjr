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
    instance = new Bjr4js.SingleFolder();
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

  describe('SingleFolder', function() {
    it('should create an instance of SingleFolder', function() {
      // uncomment below and update the code to test SingleFolder
      //var instane = new Bjr4js.SingleFolder();
      //expect(instance).to.be.a(Bjr4js.SingleFolder);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new Bjr4js.SingleFolder();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instane = new Bjr4js.SingleFolder();
      //expect(instance).to.be();
    });

    it('should have the property expression (base name: "expression")', function() {
      // uncomment below and update the code to test the property expression
      //var instane = new Bjr4js.SingleFolder();
      //expect(instance).to.be();
    });

    it('should have the property jobCount (base name: "job_count")', function() {
      // uncomment below and update the code to test the property jobCount
      //var instane = new Bjr4js.SingleFolder();
      //expect(instance).to.be();
    });

  });

}));
