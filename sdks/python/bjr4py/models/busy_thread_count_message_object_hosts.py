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


class BusyThreadCountMessageObjectHosts(object):
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
        'name': 'str',
        'busy': 'int',
        'pid': 'int'
    }

    attribute_map = {
        'name': 'name',
        'busy': 'busy',
        'pid': 'pid'
    }

    def __init__(self, name=None, busy=None, pid=None, local_vars_configuration=None):  # noqa: E501
        """BusyThreadCountMessageObjectHosts - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._name = None
        self._busy = None
        self._pid = None
        self.discriminator = None

        if name is not None:
            self.name = name
        if busy is not None:
            self.busy = busy
        if pid is not None:
            self.pid = pid

    @property
    def name(self):
        """Gets the name of this BusyThreadCountMessageObjectHosts.  # noqa: E501

        The name of the worker host.  # noqa: E501

        :return: The name of this BusyThreadCountMessageObjectHosts.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this BusyThreadCountMessageObjectHosts.

        The name of the worker host.  # noqa: E501

        :param name: The name of this BusyThreadCountMessageObjectHosts.  # noqa: E501
        :type: str
        """

        self._name = name

    @property
    def busy(self):
        """Gets the busy of this BusyThreadCountMessageObjectHosts.  # noqa: E501

        The number of busy threads on the worker.  # noqa: E501

        :return: The busy of this BusyThreadCountMessageObjectHosts.  # noqa: E501
        :rtype: int
        """
        return self._busy

    @busy.setter
    def busy(self, busy):
        """Sets the busy of this BusyThreadCountMessageObjectHosts.

        The number of busy threads on the worker.  # noqa: E501

        :param busy: The busy of this BusyThreadCountMessageObjectHosts.  # noqa: E501
        :type: int
        """

        self._busy = busy

    @property
    def pid(self):
        """Gets the pid of this BusyThreadCountMessageObjectHosts.  # noqa: E501

        The process ID of the worker process.  # noqa: E501

        :return: The pid of this BusyThreadCountMessageObjectHosts.  # noqa: E501
        :rtype: int
        """
        return self._pid

    @pid.setter
    def pid(self, pid):
        """Sets the pid of this BusyThreadCountMessageObjectHosts.

        The process ID of the worker process.  # noqa: E501

        :param pid: The pid of this BusyThreadCountMessageObjectHosts.  # noqa: E501
        :type: int
        """

        self._pid = pid

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
        if not isinstance(other, BusyThreadCountMessageObjectHosts):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, BusyThreadCountMessageObjectHosts):
            return True

        return self.to_dict() != other.to_dict()
