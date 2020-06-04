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

pub struct JobsApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> JobsApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> JobsApiClient<C> {
        JobsApiClient {
            configuration,
        }
    }
}

pub trait JobsApi {
    fn create_job(&self, job_in: Option<crate::models::JobIn>) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>>;
    fn delete_job(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>>;
    fn get_job(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>>;
    fn get_job_runs(&self, id: i32, per_page: Option<i32>, page: Option<i32>, succeeded: Option<bool>, start_date: Option<&str>, end_date: Option<&str>, timezone: Option<&str>) -> Box<dyn Future<Item = crate::models::JobRunArrayMessage, Error = Error<serde_json::Value>>>;
    fn get_jobs(&self, expression: Option<&str>, timezone: Option<&str>, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::JobArrayMessage, Error = Error<serde_json::Value>>>;
    fn job_occurrences(&self, id: i32, end_date: &str, per_page: Option<i32>, page: Option<i32>, timezone: Option<&str>) -> Box<dyn Future<Item = crate::models::OccurrenceMessage, Error = Error<serde_json::Value>>>;
    fn run_job_now(&self, id: i32) -> Box<dyn Future<Item = (), Error = Error<serde_json::Value>>>;
    fn update_job(&self, id: i32, job_in: Option<crate::models::JobIn>) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>>;
}

impl<C: hyper::client::Connect>JobsApi for JobsApiClient<C> {
    fn create_job(&self, job_in: Option<crate::models::JobIn>) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Post, "/job_api".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_body_param(job_in);

        req.execute(self.configuration.borrow())
    }

    fn delete_job(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Delete, "/job_api/{id}".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_path_param("id".to_string(), id.to_string());

        req.execute(self.configuration.borrow())
    }

    fn get_job(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/job_api/{id}".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_path_param("id".to_string(), id.to_string());

        req.execute(self.configuration.borrow())
    }

    fn get_job_runs(&self, id: i32, per_page: Option<i32>, page: Option<i32>, succeeded: Option<bool>, start_date: Option<&str>, end_date: Option<&str>, timezone: Option<&str>) -> Box<dyn Future<Item = crate::models::JobRunArrayMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/job_api/{id}/runs".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        if let Some(ref s) = per_page {
            req = req.with_query_param("per_page".to_string(), s.to_string());
        }
        if let Some(ref s) = page {
            req = req.with_query_param("page".to_string(), s.to_string());
        }
        if let Some(ref s) = succeeded {
            req = req.with_query_param("succeeded".to_string(), s.to_string());
        }
        if let Some(ref s) = start_date {
            req = req.with_query_param("start_date".to_string(), s.to_string());
        }
        if let Some(ref s) = end_date {
            req = req.with_query_param("end_date".to_string(), s.to_string());
        }
        if let Some(ref s) = timezone {
            req = req.with_query_param("timezone".to_string(), s.to_string());
        }
        req = req.with_path_param("id".to_string(), id.to_string());

        req.execute(self.configuration.borrow())
    }

    fn get_jobs(&self, expression: Option<&str>, timezone: Option<&str>, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::JobArrayMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/job_api".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        if let Some(ref s) = expression {
            req = req.with_query_param("expression".to_string(), s.to_string());
        }
        if let Some(ref s) = timezone {
            req = req.with_query_param("timezone".to_string(), s.to_string());
        }
        if let Some(ref s) = per_page {
            req = req.with_query_param("per_page".to_string(), s.to_string());
        }
        if let Some(ref s) = page {
            req = req.with_query_param("page".to_string(), s.to_string());
        }

        req.execute(self.configuration.borrow())
    }

    fn job_occurrences(&self, id: i32, end_date: &str, per_page: Option<i32>, page: Option<i32>, timezone: Option<&str>) -> Box<dyn Future<Item = crate::models::OccurrenceMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/job_api/{id}/occurrences/{end_date}".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        if let Some(ref s) = per_page {
            req = req.with_query_param("per_page".to_string(), s.to_string());
        }
        if let Some(ref s) = page {
            req = req.with_query_param("page".to_string(), s.to_string());
        }
        if let Some(ref s) = timezone {
            req = req.with_query_param("timezone".to_string(), s.to_string());
        }
        req = req.with_path_param("id".to_string(), id.to_string());
        req = req.with_path_param("end_date".to_string(), end_date.to_string());

        req.execute(self.configuration.borrow())
    }

    fn run_job_now(&self, id: i32) -> Box<dyn Future<Item = (), Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Post, "/job_api/{id}/run_now".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_path_param("id".to_string(), id.to_string());
        req = req.returns_nothing();

        req.execute(self.configuration.borrow())
    }

    fn update_job(&self, id: i32, job_in: Option<crate::models::JobIn>) -> Box<dyn Future<Item = crate::models::SingleJobMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Put, "/job_api/{id}".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_path_param("id".to_string(), id.to_string());
        req = req.with_body_param(job_in);

        req.execute(self.configuration.borrow())
    }

}
