# coding: utf-8

"""
    BJR API V1

    API specification for the BJR job server.  # noqa: E501

    The version of the OpenAPI document: v1
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six

from bjr4py.configuration import Configuration


class SingleFolderMessage(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'message': 'str',
        'is_error': 'bool',
        'object_type': 'str',
        'status_code': 'int',
        'object': 'SingleFolder'
    }

    attribute_map = {
        'message': 'message',
        'is_error': 'is_error',
        'object_type': 'object_type',
        'status_code': 'status_code',
        'object': 'object'
    }

    def __init__(self, message=None, is_error=None, object_type=None, status_code=None, object=None, local_vars_configuration=None):  # noqa: E501
        """SingleFolderMessage - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._message = None
        self._is_error = None
        self._object_type = None
        self._status_code = None
        self._object = None
        self.discriminator = None

        if message is not None:
            self.message = message
        if is_error is not None:
            self.is_error = is_error
        if object_type is not None:
            self.object_type = object_type
        if status_code is not None:
            self.status_code = status_code
        if object is not None:
            self.object = object

    @property
    def message(self):
        """Gets the message of this SingleFolderMessage.  # noqa: E501

        The status message returned from the API call.  # noqa: E501

        :return: The message of this SingleFolderMessage.  # noqa: E501
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message):
        """Sets the message of this SingleFolderMessage.

        The status message returned from the API call.  # noqa: E501

        :param message: The message of this SingleFolderMessage.  # noqa: E501
        :type: str
        """

        self._message = message

    @property
    def is_error(self):
        """Gets the is_error of this SingleFolderMessage.  # noqa: E501

        True if there was an error performing the API call.  # noqa: E501

        :return: The is_error of this SingleFolderMessage.  # noqa: E501
        :rtype: bool
        """
        return self._is_error

    @is_error.setter
    def is_error(self, is_error):
        """Sets the is_error of this SingleFolderMessage.

        True if there was an error performing the API call.  # noqa: E501

        :param is_error: The is_error of this SingleFolderMessage.  # noqa: E501
        :type: bool
        """

        self._is_error = is_error

    @property
    def object_type(self):
        """Gets the object_type of this SingleFolderMessage.  # noqa: E501

        The type of object being returned.  # noqa: E501

        :return: The object_type of this SingleFolderMessage.  # noqa: E501
        :rtype: str
        """
        return self._object_type

    @object_type.setter
    def object_type(self, object_type):
        """Sets the object_type of this SingleFolderMessage.

        The type of object being returned.  # noqa: E501

        :param object_type: The object_type of this SingleFolderMessage.  # noqa: E501
        :type: str
        """

        self._object_type = object_type

    @property
    def status_code(self):
        """Gets the status_code of this SingleFolderMessage.  # noqa: E501

        The HTTP status code returned.  # noqa: E501

        :return: The status_code of this SingleFolderMessage.  # noqa: E501
        :rtype: int
        """
        return self._status_code

    @status_code.setter
    def status_code(self, status_code):
        """Sets the status_code of this SingleFolderMessage.

        The HTTP status code returned.  # noqa: E501

        :param status_code: The status_code of this SingleFolderMessage.  # noqa: E501
        :type: int
        """

        self._status_code = status_code

    @property
    def object(self):
        """Gets the object of this SingleFolderMessage.  # noqa: E501


        :return: The object of this SingleFolderMessage.  # noqa: E501
        :rtype: SingleFolder
        """
        return self._object

    @object.setter
    def object(self, object):
        """Sets the object of this SingleFolderMessage.


        :param object: The object of this SingleFolderMessage.  # noqa: E501
        :type: SingleFolder
        """

        self._object = object

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, SingleFolderMessage):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, SingleFolderMessage):
            return True

        return self.to_dict() != other.to_dict()
