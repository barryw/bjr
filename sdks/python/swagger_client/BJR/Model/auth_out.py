# coding: utf-8

"""
    BJR API V1

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)  # noqa: E501

    OpenAPI spec version: v1
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six


class AuthOut(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """
    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'auth_token': 'str',
        'message': 'str',
        'is_error': 'bool'
    }

    attribute_map = {
        'auth_token': 'auth_token',
        'message': 'message',
        'is_error': 'is_error'
    }

    def __init__(self, auth_token=None, message=None, is_error=None):  # noqa: E501
        """AuthOut - a model defined in Swagger"""  # noqa: E501
        self._auth_token = None
        self._message = None
        self._is_error = None
        self.discriminator = None
        if auth_token is not None:
            self.auth_token = auth_token
        if message is not None:
            self.message = message
        if is_error is not None:
            self.is_error = is_error

    @property
    def auth_token(self):
        """Gets the auth_token of this AuthOut.  # noqa: E501

        The JWT authentication token. This must be passed in the Authorization header on subsequent requests.  # noqa: E501

        :return: The auth_token of this AuthOut.  # noqa: E501
        :rtype: str
        """
        return self._auth_token

    @auth_token.setter
    def auth_token(self, auth_token):
        """Sets the auth_token of this AuthOut.

        The JWT authentication token. This must be passed in the Authorization header on subsequent requests.  # noqa: E501

        :param auth_token: The auth_token of this AuthOut.  # noqa: E501
        :type: str
        """

        self._auth_token = auth_token

    @property
    def message(self):
        """Gets the message of this AuthOut.  # noqa: E501

        If authentication failed, this will contain the reason why.  # noqa: E501

        :return: The message of this AuthOut.  # noqa: E501
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message):
        """Sets the message of this AuthOut.

        If authentication failed, this will contain the reason why.  # noqa: E501

        :param message: The message of this AuthOut.  # noqa: E501
        :type: str
        """

        self._message = message

    @property
    def is_error(self):
        """Gets the is_error of this AuthOut.  # noqa: E501

        This will be true if the authentication was successful, and false if not.  # noqa: E501

        :return: The is_error of this AuthOut.  # noqa: E501
        :rtype: bool
        """
        return self._is_error

    @is_error.setter
    def is_error(self, is_error):
        """Sets the is_error of this AuthOut.

        This will be true if the authentication was successful, and false if not.  # noqa: E501

        :param is_error: The is_error of this AuthOut.  # noqa: E501
        :type: bool
        """

        self._is_error = is_error

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
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
        if issubclass(AuthOut, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, AuthOut):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
