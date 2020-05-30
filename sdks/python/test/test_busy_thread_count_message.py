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
from bjr4py.models.busy_thread_count_message import BusyThreadCountMessage  # noqa: E501
from bjr4py.rest import ApiException

class TestBusyThreadCountMessage(unittest.TestCase):
    """BusyThreadCountMessage unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test BusyThreadCountMessage
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = bjr4py.models.busy_thread_count_message.BusyThreadCountMessage()  # noqa: E501
        if include_optional :
            return BusyThreadCountMessage(
                message = '0', 
                is_error = True, 
                object_type = '0', 
                status_code = 56, 
                object = bjr4py.models.busy_thread_count_message_object.BusyThreadCountMessage_object(
                    total_busy = 56, 
                    hosts = [
                        bjr4py.models.busy_thread_count_message_object_hosts.BusyThreadCountMessage_object_hosts(
                            name = '0', 
                            busy = 56, 
                            pid = 56, )
                        ], )
            )
        else :
            return BusyThreadCountMessage(
        )

    def testBusyThreadCountMessage(self):
        """Test BusyThreadCountMessage"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
