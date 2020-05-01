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


class JobStat(object):
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
        'runs': 'int',
        'failed': 'int',
        'avg_runtime': 'int',
        'max_runtime': 'int',
        'min_runtime': 'int',
        'period': 'str',
        'start_dt': 'datetime',
        'end_dt': 'datetime',
        'created_at': 'datetime',
        'updated_at': 'datetime'
    }

    attribute_map = {
        'runs': 'runs',
        'failed': 'failed',
        'avg_runtime': 'avg_runtime',
        'max_runtime': 'max_runtime',
        'min_runtime': 'min_runtime',
        'period': 'period',
        'start_dt': 'start_dt',
        'end_dt': 'end_dt',
        'created_at': 'created_at',
        'updated_at': 'updated_at'
    }

    def __init__(self, runs=None, failed=None, avg_runtime=None, max_runtime=None, min_runtime=None, period=None, start_dt=None, end_dt=None, created_at=None, updated_at=None, local_vars_configuration=None):  # noqa: E501
        """JobStat - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._runs = None
        self._failed = None
        self._avg_runtime = None
        self._max_runtime = None
        self._min_runtime = None
        self._period = None
        self._start_dt = None
        self._end_dt = None
        self._created_at = None
        self._updated_at = None
        self.discriminator = None

        if runs is not None:
            self.runs = runs
        if failed is not None:
            self.failed = failed
        if avg_runtime is not None:
            self.avg_runtime = avg_runtime
        if max_runtime is not None:
            self.max_runtime = max_runtime
        if min_runtime is not None:
            self.min_runtime = min_runtime
        if period is not None:
            self.period = period
        if start_dt is not None:
            self.start_dt = start_dt
        if end_dt is not None:
            self.end_dt = end_dt
        if created_at is not None:
            self.created_at = created_at
        if updated_at is not None:
            self.updated_at = updated_at

    @property
    def runs(self):
        """Gets the runs of this JobStat.  # noqa: E501

        The number of job runs in the period.  # noqa: E501

        :return: The runs of this JobStat.  # noqa: E501
        :rtype: int
        """
        return self._runs

    @runs.setter
    def runs(self, runs):
        """Sets the runs of this JobStat.

        The number of job runs in the period.  # noqa: E501

        :param runs: The runs of this JobStat.  # noqa: E501
        :type: int
        """

        self._runs = runs

    @property
    def failed(self):
        """Gets the failed of this JobStat.  # noqa: E501

        The number of job runs that failed in the period.  # noqa: E501

        :return: The failed of this JobStat.  # noqa: E501
        :rtype: int
        """
        return self._failed

    @failed.setter
    def failed(self, failed):
        """Sets the failed of this JobStat.

        The number of job runs that failed in the period.  # noqa: E501

        :param failed: The failed of this JobStat.  # noqa: E501
        :type: int
        """

        self._failed = failed

    @property
    def avg_runtime(self):
        """Gets the avg_runtime of this JobStat.  # noqa: E501

        The average runtime in seconds of all jobs in the period.  # noqa: E501

        :return: The avg_runtime of this JobStat.  # noqa: E501
        :rtype: int
        """
        return self._avg_runtime

    @avg_runtime.setter
    def avg_runtime(self, avg_runtime):
        """Sets the avg_runtime of this JobStat.

        The average runtime in seconds of all jobs in the period.  # noqa: E501

        :param avg_runtime: The avg_runtime of this JobStat.  # noqa: E501
        :type: int
        """

        self._avg_runtime = avg_runtime

    @property
    def max_runtime(self):
        """Gets the max_runtime of this JobStat.  # noqa: E501

        The max runtime in seconds of all jobs in the period.  # noqa: E501

        :return: The max_runtime of this JobStat.  # noqa: E501
        :rtype: int
        """
        return self._max_runtime

    @max_runtime.setter
    def max_runtime(self, max_runtime):
        """Sets the max_runtime of this JobStat.

        The max runtime in seconds of all jobs in the period.  # noqa: E501

        :param max_runtime: The max_runtime of this JobStat.  # noqa: E501
        :type: int
        """

        self._max_runtime = max_runtime

    @property
    def min_runtime(self):
        """Gets the min_runtime of this JobStat.  # noqa: E501

        The min runtime in seconds of all jobs in the period.  # noqa: E501

        :return: The min_runtime of this JobStat.  # noqa: E501
        :rtype: int
        """
        return self._min_runtime

    @min_runtime.setter
    def min_runtime(self, min_runtime):
        """Sets the min_runtime of this JobStat.

        The min runtime in seconds of all jobs in the period.  # noqa: E501

        :param min_runtime: The min_runtime of this JobStat.  # noqa: E501
        :type: int
        """

        self._min_runtime = min_runtime

    @property
    def period(self):
        """Gets the period of this JobStat.  # noqa: E501

        The runtime period.  # noqa: E501

        :return: The period of this JobStat.  # noqa: E501
        :rtype: str
        """
        return self._period

    @period.setter
    def period(self, period):
        """Sets the period of this JobStat.

        The runtime period.  # noqa: E501

        :param period: The period of this JobStat.  # noqa: E501
        :type: str
        """

        self._period = period

    @property
    def start_dt(self):
        """Gets the start_dt of this JobStat.  # noqa: E501

        The period start date.  # noqa: E501

        :return: The start_dt of this JobStat.  # noqa: E501
        :rtype: datetime
        """
        return self._start_dt

    @start_dt.setter
    def start_dt(self, start_dt):
        """Sets the start_dt of this JobStat.

        The period start date.  # noqa: E501

        :param start_dt: The start_dt of this JobStat.  # noqa: E501
        :type: datetime
        """

        self._start_dt = start_dt

    @property
    def end_dt(self):
        """Gets the end_dt of this JobStat.  # noqa: E501

        The period end date.  # noqa: E501

        :return: The end_dt of this JobStat.  # noqa: E501
        :rtype: datetime
        """
        return self._end_dt

    @end_dt.setter
    def end_dt(self, end_dt):
        """Sets the end_dt of this JobStat.

        The period end date.  # noqa: E501

        :param end_dt: The end_dt of this JobStat.  # noqa: E501
        :type: datetime
        """

        self._end_dt = end_dt

    @property
    def created_at(self):
        """Gets the created_at of this JobStat.  # noqa: E501

        The date the record was created.  # noqa: E501

        :return: The created_at of this JobStat.  # noqa: E501
        :rtype: datetime
        """
        return self._created_at

    @created_at.setter
    def created_at(self, created_at):
        """Sets the created_at of this JobStat.

        The date the record was created.  # noqa: E501

        :param created_at: The created_at of this JobStat.  # noqa: E501
        :type: datetime
        """

        self._created_at = created_at

    @property
    def updated_at(self):
        """Gets the updated_at of this JobStat.  # noqa: E501

        The date the record was last updated.  # noqa: E501

        :return: The updated_at of this JobStat.  # noqa: E501
        :rtype: datetime
        """
        return self._updated_at

    @updated_at.setter
    def updated_at(self, updated_at):
        """Sets the updated_at of this JobStat.

        The date the record was last updated.  # noqa: E501

        :param updated_at: The updated_at of this JobStat.  # noqa: E501
        :type: datetime
        """

        self._updated_at = updated_at

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
        if not isinstance(other, JobStat):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, JobStat):
            return True

        return self.to_dict() != other.to_dict()
