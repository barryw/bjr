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
from bjr4py.models.jobs_per_day_object import JobsPerDayObject  # noqa: E501
from bjr4py.rest import ApiException

class TestJobsPerDayObject(unittest.TestCase):
    """JobsPerDayObject unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test JobsPerDayObject
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = bjr4py.models.jobs_per_day_object.JobsPerDayObject()  # noqa: E501
        if include_optional :
            return JobsPerDayObject(
                date = '0', 
                processed = 56, 
                failed = 56
            )
        else :
            return JobsPerDayObject(
        )

    def testJobsPerDayObject(self):
        """Test JobsPerDayObject"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
