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
from bjr4py.models.server_version import ServerVersion  # noqa: E501
from bjr4py.rest import ApiException

class TestServerVersion(unittest.TestCase):
    """ServerVersion unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test ServerVersion
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = bjr4py.models.server_version.ServerVersion()  # noqa: E501
        if include_optional :
            return ServerVersion(
                message = '0', 
                is_error = True, 
                object_type = '0', 
                status_code = 56, 
                object = '0'
            )
        else :
            return ServerVersion(
        )

    def testServerVersion(self):
        """Test ServerVersion"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()