/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * 
 * Generated by: https://openapi-generator.tech
 */

use std::rc::Rc;
use std::borrow::Borrow;
#[allow(unused_imports)]
use std::option::Option;

use hyper;
use serde_json;
use futures::Future;

use super::{Error, configuration};
use super::request as __internal_request;

pub struct StaticApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> StaticApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> StaticApiClient<C> {
        StaticApiClient {
            configuration,
        }
    }
}

pub trait StaticApi {
    fn get_tags(&self, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::TagMessage, Error = Error<serde_json::Value>>>;
    fn get_timezones(&self, ) -> Box<dyn Future<Item = crate::models::TimezoneMessage, Error = Error<serde_json::Value>>>;
    fn get_version(&self, ) -> Box<dyn Future<Item = crate::models::ServerVersion, Error = Error<serde_json::Value>>>;
}

impl<C: hyper::client::Connect>StaticApi for StaticApiClient<C> {
    fn get_tags(&self, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::TagMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/tags".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        if let Some(ref s) = per_page {
            req = req.with_query_param("per_page".to_string(), s.to_string());
        }
        if let Some(ref s) = page {
            req = req.with_query_param("page".to_string(), s.to_string());
        }

        req.execute(self.configuration.borrow())
    }

    fn get_timezones(&self, ) -> Box<dyn Future<Item = crate::models::TimezoneMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/timezones".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;

        req.execute(self.configuration.borrow())
    }

    fn get_version(&self, ) -> Box<dyn Future<Item = crate::models::ServerVersion, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/version".to_string())
        ;

        req.execute(self.configuration.borrow())
    }

}
