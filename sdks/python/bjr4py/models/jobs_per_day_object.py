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


class JobsPerDayObject(object):
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
        'date': 'str',
        'processed': 'int',
        'failed': 'int'
    }

    attribute_map = {
        'date': 'date',
        'processed': 'processed',
        'failed': 'failed'
    }

    def __init__(self, date=None, processed=None, failed=None, local_vars_configuration=None):  # noqa: E501
        """JobsPerDayObject - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._date = None
        self._processed = None
        self._failed = None
        self.discriminator = None

        if date is not None:
            self.date = date
        if processed is not None:
            self.processed = processed
        if failed is not None:
            self.failed = failed

    @property
    def date(self):
        """Gets the date of this JobsPerDayObject.  # noqa: E501

        The date the counts are for.  # noqa: E501

        :return: The date of this JobsPerDayObject.  # noqa: E501
        :rtype: str
        """
        return self._date

    @date.setter
    def date(self, date):
        """Sets the date of this JobsPerDayObject.

        The date the counts are for.  # noqa: E501

        :param date: The date of this JobsPerDayObject.  # noqa: E501
        :type: str
        """

        self._date = date

    @property
    def processed(self):
        """Gets the processed of this JobsPerDayObject.  # noqa: E501

        The total number of jobs that were processed for the day.  # noqa: E501

        :return: The processed of this JobsPerDayObject.  # noqa: E501
        :rtype: int
        """
        return self._processed

    @processed.setter
    def processed(self, processed):
        """Sets the processed of this JobsPerDayObject.

        The total number of jobs that were processed for the day.  # noqa: E501

        :param processed: The processed of this JobsPerDayObject.  # noqa: E501
        :type: int
        """

        self._processed = processed

    @property
    def failed(self):
        """Gets the failed of this JobsPerDayObject.  # noqa: E501

        The total number of jobs that failed for the day.  # noqa: E501

        :return: The failed of this JobsPerDayObject.  # noqa: E501
        :rtype: int
        """
        return self._failed

    @failed.setter
    def failed(self, failed):
        """Sets the failed of this JobsPerDayObject.

        The total number of jobs that failed for the day.  # noqa: E501

        :param failed: The failed of this JobsPerDayObject.  # noqa: E501
        :type: int
        """

        self._failed = failed

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
        if not isinstance(other, JobsPerDayObject):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, JobsPerDayObject):
            return True

        return self.to_dict() != other.to_dict()
