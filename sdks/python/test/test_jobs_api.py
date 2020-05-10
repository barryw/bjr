# coding: utf-8

"""
    BJR API V1

    API specification for the BJR job server.  # noqa: E501

    The version of the OpenAPI document: v1
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest

import bjr4py
from bjr4py.api.jobs_api import JobsApi  # noqa: E501
from bjr4py.rest import ApiException


class TestJobsApi(unittest.TestCase):
    """JobsApi unit test stubs"""

    def setUp(self):
        self.api = bjr4py.api.jobs_api.JobsApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_create_job(self):
        """Test case for create_job

        Creates a job  # noqa: E501
        """
        pass

    def test_delete_job(self):
        """Test case for delete_job

        Deletes a job  # noqa: E501
        """
        pass

    def test_get_job(self):
        """Test case for get_job

        Retrieves a single job  # noqa: E501
        """
        pass

    def test_get_job_runs(self):
        """Test case for get_job_runs

        Retrieve the runs for a job  # noqa: E501
        """
        pass

    def test_get_jobs(self):
        """Test case for get_jobs

        Retrieves jobs  # noqa: E501
        """
        pass

    def test_job_occurrences(self):
        """Test case for job_occurrences

        Upcoming job occurrences  # noqa: E501
        """
        pass

    def test_run_job_now(self):
        """Test case for run_job_now

        Run a job now  # noqa: E501
        """
        pass

    def test_update_job(self):
        """Test case for update_job

        Updates a single job  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
