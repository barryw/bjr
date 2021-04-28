"""
    BJR API V1

    API specification for the BJR job server.  # noqa: E501

    The version of the OpenAPI document: v1
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

from bjr4py.model_utils import (  # noqa: F401
    ApiTypeError,
    ModelComposed,
    ModelNormal,
    ModelSimple,
    cached_property,
    change_keys_js_to_python,
    convert_js_args_to_python_args,
    date,
    datetime,
    file_type,
    none_type,
    validate_get_composed_info,
)


class SingleJob(ModelNormal):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Attributes:
      allowed_values (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          with a capitalized key describing the allowed value and an allowed
          value. These dicts store the allowed enum values.
      attribute_map (dict): The key is attribute name
          and the value is json key in definition.
      discriminator_value_class_map (dict): A dict to go from the discriminator
          variable value to the discriminator class name.
      validations (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          that stores validations for max_length, min_length, max_items,
          min_items, exclusive_maximum, inclusive_maximum, exclusive_minimum,
          inclusive_minimum, and regex.
      additional_properties_type (tuple): A tuple of classes accepted
          as additional properties values.
    """

    allowed_values = {
    }

    validations = {
    }

    additional_properties_type = None

    _nullable = False

    @cached_property
    def openapi_types():
        """
        This must be a method because a model may have properties that are
        of type self, this must run after the class is loaded

        Returns
            openapi_types (dict): The key is attribute name
                and the value is attribute type.
        """
        return {
            'id': (int,),  # noqa: E501
            'name': (str,),  # noqa: E501
            'cron': (str,),  # noqa: E501
            'enabled': (bool,),  # noqa: E501
            'command': (str,),  # noqa: E501
            'last_run': (str, none_type,),  # noqa: E501
            'next_run': (datetime,),  # noqa: E501
            'success': (bool,),  # noqa: E501
            'running': (bool,),  # noqa: E501
            'timezone': (str,),  # noqa: E501
            'tags': ([str, none_type],),  # noqa: E501
            'created_at': (datetime,),  # noqa: E501
            'updated_at': (datetime,),  # noqa: E501
            'success_callback': (str, none_type,),  # noqa: E501
            'failure_callback': (str, none_type,),  # noqa: E501
            'avg_run_duration': (float, none_type,),  # noqa: E501
            'max_run_duration': (float, none_type,),  # noqa: E501
            'min_run_duration': (float, none_type,),  # noqa: E501
            'avg_run_duration_trend': (float, none_type,),  # noqa: E501
            'avg_run_lag': (float, none_type,),  # noqa: E501
            'max_run_lag': (float, none_type,),  # noqa: E501
            'min_run_lag': (float, none_type,),  # noqa: E501
            'avg_run_lag_trend': (float, none_type,),  # noqa: E501
        }

    @cached_property
    def discriminator():
        return None


    attribute_map = {
        'id': 'id',  # noqa: E501
        'name': 'name',  # noqa: E501
        'cron': 'cron',  # noqa: E501
        'enabled': 'enabled',  # noqa: E501
        'command': 'command',  # noqa: E501
        'last_run': 'last_run',  # noqa: E501
        'next_run': 'next_run',  # noqa: E501
        'success': 'success',  # noqa: E501
        'running': 'running',  # noqa: E501
        'timezone': 'timezone',  # noqa: E501
        'tags': 'tags',  # noqa: E501
        'created_at': 'created_at',  # noqa: E501
        'updated_at': 'updated_at',  # noqa: E501
        'success_callback': 'success_callback',  # noqa: E501
        'failure_callback': 'failure_callback',  # noqa: E501
        'avg_run_duration': 'avg_run_duration',  # noqa: E501
        'max_run_duration': 'max_run_duration',  # noqa: E501
        'min_run_duration': 'min_run_duration',  # noqa: E501
        'avg_run_duration_trend': 'avg_run_duration_trend',  # noqa: E501
        'avg_run_lag': 'avg_run_lag',  # noqa: E501
        'max_run_lag': 'max_run_lag',  # noqa: E501
        'min_run_lag': 'min_run_lag',  # noqa: E501
        'avg_run_lag_trend': 'avg_run_lag_trend',  # noqa: E501
    }

    _composed_schemas = {}

    required_properties = set([
        '_data_store',
        '_check_type',
        '_spec_property_naming',
        '_path_to_item',
        '_configuration',
        '_visited_composed_classes',
    ])

    @convert_js_args_to_python_args
    def __init__(self, *args, **kwargs):  # noqa: E501
        """SingleJob - a model defined in OpenAPI

        Keyword Args:
            _check_type (bool): if True, values for parameters in openapi_types
                                will be type checked and a TypeError will be
                                raised if the wrong type is input.
                                Defaults to True
            _path_to_item (tuple/list): This is a list of keys or values to
                                drill down to the model in received_data
                                when deserializing a response
            _spec_property_naming (bool): True if the variable names in the input data
                                are serialized names, as specified in the OpenAPI document.
                                False if the variable names in the input data
                                are pythonic names, e.g. snake case (default)
            _configuration (Configuration): the instance to use when
                                deserializing a file_type parameter.
                                If passed, type conversion is attempted
                                If omitted no type conversion is done.
            _visited_composed_classes (tuple): This stores a tuple of
                                classes that we have traveled through so that
                                if we see that class again we will not use its
                                discriminator again.
                                When traveling through a discriminator, the
                                composed schema that is
                                is traveled through is added to this set.
                                For example if Animal has a discriminator
                                petType and we pass in "Dog", and the class Dog
                                allOf includes Animal, we move through Animal
                                once using the discriminator, and pick Dog.
                                Then in Dog, we will make an instance of the
                                Animal class but this time we won't travel
                                through its discriminator because we passed in
                                _visited_composed_classes = (Animal,)
            id (int): The object's primary key. This uniquely identifies the object in the system.. [optional]  # noqa: E501
            name (str): The name of the job.. [optional]  # noqa: E501
            cron (str): The cron expression for the job.. [optional]  # noqa: E501
            enabled (bool): Whether the job is enabled or not.. [optional]  # noqa: E501
            command (str): The command that is executed when the job fires.. [optional]  # noqa: E501
            last_run (str, none_type): The last time the job ran.. [optional]  # noqa: E501
            next_run (datetime): The date and time of the job's next run.. [optional]  # noqa: E501
            success (bool): Whether the last run of the job was successful.. [optional]  # noqa: E501
            running (bool): Whether the job is currently running.. [optional]  # noqa: E501
            timezone (str): The timezone that the job will run in.. [optional]  # noqa: E501
            tags ([str, none_type]): An array of tags associated with the job.. [optional]  # noqa: E501
            created_at (datetime): The UTC date and time that the object was created.. [optional]  # noqa: E501
            updated_at (datetime): The UTC date and time that the object was last modified.. [optional]  # noqa: E501
            success_callback (str, none_type): This url will receive a POST request with details about all successful job runs.. [optional]  # noqa: E501
            failure_callback (str, none_type): This url will receive a POST request with details about all unsuccessful job runs.. [optional]  # noqa: E501
            avg_run_duration (float, none_type): The average runtime across all runs of this job.. [optional]  # noqa: E501
            max_run_duration (float, none_type): The maximum runtime across all runs of this job.. [optional]  # noqa: E501
            min_run_duration (float, none_type): The minimum runtime across all runs of this job.. [optional]  # noqa: E501
            avg_run_duration_trend (float, none_type): The average runtime trend across all runs of this job.. [optional]  # noqa: E501
            avg_run_lag (float, none_type): The average job lag across all runs of this job.. [optional]  # noqa: E501
            max_run_lag (float, none_type): The maximum job lag across all runs of this job.. [optional]  # noqa: E501
            min_run_lag (float, none_type): The minimum job lag across all runs of this job.. [optional]  # noqa: E501
            avg_run_lag_trend (float, none_type): The average job lag trend across all runs of this job.. [optional]  # noqa: E501
        """

        _check_type = kwargs.pop('_check_type', True)
        _spec_property_naming = kwargs.pop('_spec_property_naming', False)
        _path_to_item = kwargs.pop('_path_to_item', ())
        _configuration = kwargs.pop('_configuration', None)
        _visited_composed_classes = kwargs.pop('_visited_composed_classes', ())

        if args:
            raise ApiTypeError(
                "Invalid positional arguments=%s passed to %s. Remove those invalid positional arguments." % (
                    args,
                    self.__class__.__name__,
                ),
                path_to_item=_path_to_item,
                valid_classes=(self.__class__,),
            )

        self._data_store = {}
        self._check_type = _check_type
        self._spec_property_naming = _spec_property_naming
        self._path_to_item = _path_to_item
        self._configuration = _configuration
        self._visited_composed_classes = _visited_composed_classes + (self.__class__,)

        for var_name, var_value in kwargs.items():
            if var_name not in self.attribute_map and \
                        self._configuration is not None and \
                        self._configuration.discard_unknown_keys and \
                        self.additional_properties_type is None:
                # discard variable.
                continue
            setattr(self, var_name, var_value)
