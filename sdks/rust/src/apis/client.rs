use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient {
    authentication_api: Box<dyn crate::apis::AuthenticationApi>,
    folders_api: Box<dyn crate::apis::FoldersApi>,
    job_server_api: Box<dyn crate::apis::JobServerApi>,
    jobs_api: Box<dyn crate::apis::JobsApi>,
    static_api: Box<dyn crate::apis::StaticApi>,
    users_api: Box<dyn crate::apis::UsersApi>,
}

impl APIClient {
    pub fn new<C: hyper::client::Connect>(configuration: Configuration<C>) -> APIClient {
        let rc = Rc::new(configuration);

        APIClient {
            authentication_api: Box::new(crate::apis::AuthenticationApiClient::new(rc.clone())),
            folders_api: Box::new(crate::apis::FoldersApiClient::new(rc.clone())),
            job_server_api: Box::new(crate::apis::JobServerApiClient::new(rc.clone())),
            jobs_api: Box::new(crate::apis::JobsApiClient::new(rc.clone())),
            static_api: Box::new(crate::apis::StaticApiClient::new(rc.clone())),
            users_api: Box::new(crate::apis::UsersApiClient::new(rc.clone())),
        }
    }

    pub fn authentication_api(&self) -> &dyn crate::apis::AuthenticationApi{
        self.authentication_api.as_ref()
    }

    pub fn folders_api(&self) -> &dyn crate::apis::FoldersApi{
        self.folders_api.as_ref()
    }

    pub fn job_server_api(&self) -> &dyn crate::apis::JobServerApi{
        self.job_server_api.as_ref()
    }

    pub fn jobs_api(&self) -> &dyn crate::apis::JobsApi{
        self.jobs_api.as_ref()
    }

    pub fn static_api(&self) -> &dyn crate::apis::StaticApi{
        self.static_api.as_ref()
    }

    pub fn users_api(&self) -> &dyn crate::apis::UsersApi{
        self.users_api.as_ref()
    }

}
