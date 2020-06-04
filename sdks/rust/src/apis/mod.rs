use hyper;
use serde;
use serde_json;

#[derive(Debug)]
pub enum Error<T> {
    UriError(hyper::error::UriError),
    Hyper(hyper::Error),
    Serde(serde_json::Error),
    ApiError(ApiError<T>),
}

#[derive(Debug)]
pub struct ApiError<T> {
    pub code: hyper::StatusCode,
    pub content: Option<T>,
}

impl<'de, T> From<(hyper::StatusCode, &'de [u8])> for Error<T> 
    where T: serde::Deserialize<'de> {
    fn from(e: (hyper::StatusCode, &'de [u8])) -> Self {
        if e.1.len() == 0 {
            return Error::ApiError(ApiError{
                code: e.0,
                content: None,
            });
        }
        match serde_json::from_slice::<T>(e.1) {
            Ok(t) => Error::ApiError(ApiError{
                code: e.0,
                content: Some(t),
            }),
            Err(e) => {
                Error::from(e)
            }
        }
    }
}

impl<T> From<hyper::Error> for Error<T> {
    fn from(e: hyper::Error) -> Self {
        return Error::Hyper(e)
    }
}

impl<T> From<serde_json::Error> for Error<T> {
    fn from(e: serde_json::Error) -> Self {
        return Error::Serde(e)
    }
}

mod request;

mod authentication_api;
pub use self::authentication_api::{ AuthenticationApi, AuthenticationApiClient };
mod folders_api;
pub use self::folders_api::{ FoldersApi, FoldersApiClient };
mod job_server_api;
pub use self::job_server_api::{ JobServerApi, JobServerApiClient };
mod jobs_api;
pub use self::jobs_api::{ JobsApi, JobsApiClient };
mod static_api;
pub use self::static_api::{ StaticApi, StaticApiClient };
mod users_api;
pub use self::users_api::{ UsersApi, UsersApiClient };

pub mod configuration;
pub mod client;
