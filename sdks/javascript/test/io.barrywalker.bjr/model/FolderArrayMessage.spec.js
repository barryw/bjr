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
    instance = new Bjr4js.FolderArrayMessage();
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

  describe('FolderArrayMessage', function() {
    it('should create an instance of FolderArrayMessage', function() {
      // uncomment below and update the code to test FolderArrayMessage
      //var instane = new Bjr4js.FolderArrayMessage();
      //expect(instance).to.be.a(Bjr4js.FolderArrayMessage);
    });

    it('should have the property message (base name: "message")', function() {
      // uncomment below and update the code to test the property message
      //var instance = new Bjr4js.FolderArrayMessage();
      //expect(instance).to.be();
    });

    it('should have the property isError (base name: "is_error")', function() {
      // uncomment below and update the code to test the property isError
      //var instance = new Bjr4js.FolderArrayMessage();
      //expect(instance).to.be();
    });

    it('should have the property objectType (base name: "object_type")', function() {
      // uncomment below and update the code to test the property objectType
      //var instance = new Bjr4js.FolderArrayMessage();
      //expect(instance).to.be();
    });

    it('should have the property statusCode (base name: "status_code")', function() {
      // uncomment below and update the code to test the property statusCode
      //var instance = new Bjr4js.FolderArrayMessage();
      //expect(instance).to.be();
    });

    it('should have the property object (base name: "object")', function() {
      // uncomment below and update the code to test the property object
      //var instance = new Bjr4js.FolderArrayMessage();
      //expect(instance).to.be();
    });

  });

}));
