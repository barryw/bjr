# coding: utf-8

"""
    BJR API V1

    API specification for the BJR job server.  # noqa: E501

    The version of the OpenAPI document: v1
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest
import datetime

import bjr4py
from bjr4py.models.job_stat_message import JobStatMessage  # noqa: E501
from bjr4py.rest import ApiException

class TestJobStatMessage(unittest.TestCase):
    """JobStatMessage unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test JobStatMessage
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = bjr4py.models.job_stat_message.JobStatMessage()  # noqa: E501
        if include_optional :
            return JobStatMessage(
                message = '0', 
                is_error = True, 
                object_type = '0', 
                status_code = 56, 
                object = [
                    bjr4py.models.job_stat.JobStat(
                        runs = 56, 
                        failed = 56, 
                        job_count = 56, 
                        avg_runtime = 1.337, 
                        max_runtime = 1.337, 
                        min_runtime = 1.337, 
                        total_jobs = 56, 
                        total_enabled = 56, 
                        avg_job_lag = 1.337, 
                        max_job_lag = 56, 
                        min_job_lag = 56, 
                        period = '0', 
                        start_dt = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        end_dt = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        created_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        updated_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), )
                    ]
            )
        else :
            return JobStatMessage(
        )

    def testJobStatMessage(self):
        """Test JobStatMessage"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
