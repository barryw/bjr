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

pub struct FoldersApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> FoldersApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> FoldersApiClient<C> {
        FoldersApiClient {
            configuration,
        }
    }
}

pub trait FoldersApi {
    fn create_folder(&self, name: &str, expression: &str) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>>;
    fn delete_folder(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>>;
    fn get_folder(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>>;
    fn get_folder_jobs(&self, id: i32, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::JobArrayMessage, Error = Error<serde_json::Value>>>;
    fn get_folders(&self, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::FolderArrayMessage, Error = Error<serde_json::Value>>>;
    fn update_folder(&self, id: i32, name: Option<&str>, expression: Option<&str>) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>>;
}

impl<C: hyper::client::Connect>FoldersApi for FoldersApiClient<C> {
    fn create_folder(&self, name: &str, expression: &str) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Post, "/folder_api".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_query_param("name".to_string(), name.to_string());
        req = req.with_query_param("expression".to_string(), expression.to_string());

        req.execute(self.configuration.borrow())
    }

    fn delete_folder(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Delete, "/folder_api/{id}".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_path_param("id".to_string(), id.to_string());

        req.execute(self.configuration.borrow())
    }

    fn get_folder(&self, id: i32) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/folder_api/{id}".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        req = req.with_path_param("id".to_string(), id.to_string());

        req.execute(self.configuration.borrow())
    }

    fn get_folder_jobs(&self, id: i32, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::JobArrayMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/folder_api/{id}/jobs".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        if let Some(ref s) = per_page {
            req = req.with_query_param("per_page".to_string(), s.to_string());
        }
        if let Some(ref s) = page {
            req = req.with_query_param("page".to_string(), s.to_string());
        }
        req = req.with_path_param("id".to_string(), id.to_string());

        req.execute(self.configuration.borrow())
    }

    fn get_folders(&self, per_page: Option<i32>, page: Option<i32>) -> Box<dyn Future<Item = crate::models::FolderArrayMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Get, "/folder_api".to_string())
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

    fn update_folder(&self, id: i32, name: Option<&str>, expression: Option<&str>) -> Box<dyn Future<Item = crate::models::SingleFolderMessage, Error = Error<serde_json::Value>>> {
        let mut req = __internal_request::Request::new(hyper::Method::Put, "/folder_api/{id}".to_string())
            .with_auth(__internal_request::Auth::Basic)
        ;
        if let Some(ref s) = name {
            req = req.with_query_param("name".to_string(), s.to_string());
        }
        if let Some(ref s) = expression {
            req = req.with_query_param("expression".to_string(), s.to_string());
        }
        req = req.with_path_param("id".to_string(), id.to_string());

        req.execute(self.configuration.borrow())
    }

}
