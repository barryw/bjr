/**
 * BJR API V1
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */
(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.BjrApiV1);
  }
}(this, function(expect, BjrApiV1) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new BjrApiV1.Tagging();
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

  describe('Tagging', function() {
    it('should create an instance of Tagging', function() {
      // uncomment below and update the code to test Tagging
      //var instane = new BjrApiV1.Tagging();
      //expect(instance).to.be.a(BjrApiV1.Tagging);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new BjrApiV1.Tagging();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instane = new BjrApiV1.Tagging();
      //expect(instance).to.be();
    });

    it('should have the property taggingsCount (base name: "taggings_count")', function() {
      // uncomment below and update the code to test the property taggingsCount
      //var instane = new BjrApiV1.Tagging();
      //expect(instance).to.be();
    });

  });

}));