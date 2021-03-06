"""
    BJR API V1

    API specification for the BJR job server.  # noqa: E501

    The version of the OpenAPI document: v1
    Generated by: https://openapi-generator.tech
"""


import unittest

import bjr4py
from bjr4py.api.folders_api import FoldersApi  # noqa: E501


class TestFoldersApi(unittest.TestCase):
    """FoldersApi unit test stubs"""

    def setUp(self):
        self.api = FoldersApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_create_folder(self):
        """Test case for create_folder

        Create a new Folder  # noqa: E501
        """
        pass

    def test_delete_folder(self):
        """Test case for delete_folder

        Delete an existing folder  # noqa: E501
        """
        pass

    def test_get_folder(self):
        """Test case for get_folder

        Return a single folder  # noqa: E501
        """
        pass

    def test_get_folder_jobs(self):
        """Test case for get_folder_jobs

        Return list of jobs in a folder  # noqa: E501
        """
        pass

    def test_get_folders(self):
        """Test case for get_folders

        Return paginated list of all folders  # noqa: E501
        """
        pass

    def test_update_folder(self):
        """Test case for update_folder

        Update an existing folder  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
