=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'date'
require 'time'

module BJR
  class TodaysStats
    # The total number of jobs that are scheduled.
    attr_accessor :total_jobs

    # The trend direction of total_jobs.
    attr_accessor :total_jobs_trend

    # The total number of jobs that are enabled. This will be a subset of total_jobs.
    attr_accessor :enabled_jobs

    # The trend direction of enabled_jobs.
    attr_accessor :enabled_jobs_trend

    # The number of jobs that have been run today.
    attr_accessor :run_jobs

    # The trend direction of run_jobs.
    attr_accessor :run_jobs_trend

    # The number of jobs that have failed today.
    attr_accessor :failed_jobs

    # The trend direction of failed_jobs.
    attr_accessor :failed_jobs_trend

    # The average job run time.
    attr_accessor :avg_job_runtime

    # The trend direction of avg_job_runtime.
    attr_accessor :avg_job_runtime_trend

    # The max job run time.
    attr_accessor :max_job_runtime

    # The trend direction of max_job_runtime.
    attr_accessor :max_job_runtime_trend

    # The min job run time.
    attr_accessor :min_job_runtime

    # The trend direction of min_job_runtime.
    attr_accessor :min_job_runtime_trend

    # The average job lag.
    attr_accessor :avg_job_lag

    # The trend direction of avg_job_lag.
    attr_accessor :avg_job_lag_trend

    # The max job lag.
    attr_accessor :max_job_lag

    # The trend direction of max_job_lag.
    attr_accessor :max_job_lag_trend

    # The min job lag.
    attr_accessor :min_job_lag

    # The trend direction of min_job_lag.
    attr_accessor :min_job_lag_trend

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_jobs' => :'total_jobs',
        :'total_jobs_trend' => :'total_jobs_trend',
        :'enabled_jobs' => :'enabled_jobs',
        :'enabled_jobs_trend' => :'enabled_jobs_trend',
        :'run_jobs' => :'run_jobs',
        :'run_jobs_trend' => :'run_jobs_trend',
        :'failed_jobs' => :'failed_jobs',
        :'failed_jobs_trend' => :'failed_jobs_trend',
        :'avg_job_runtime' => :'avg_job_runtime',
        :'avg_job_runtime_trend' => :'avg_job_runtime_trend',
        :'max_job_runtime' => :'max_job_runtime',
        :'max_job_runtime_trend' => :'max_job_runtime_trend',
        :'min_job_runtime' => :'min_job_runtime',
        :'min_job_runtime_trend' => :'min_job_runtime_trend',
        :'avg_job_lag' => :'avg_job_lag',
        :'avg_job_lag_trend' => :'avg_job_lag_trend',
        :'max_job_lag' => :'max_job_lag',
        :'max_job_lag_trend' => :'max_job_lag_trend',
        :'min_job_lag' => :'min_job_lag',
        :'min_job_lag_trend' => :'min_job_lag_trend'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total_jobs' => :'Integer',
        :'total_jobs_trend' => :'Float',
        :'enabled_jobs' => :'Integer',
        :'enabled_jobs_trend' => :'Float',
        :'run_jobs' => :'Integer',
        :'run_jobs_trend' => :'Float',
        :'failed_jobs' => :'Integer',
        :'failed_jobs_trend' => :'Float',
        :'avg_job_runtime' => :'Float',
        :'avg_job_runtime_trend' => :'Float',
        :'max_job_runtime' => :'Float',
        :'max_job_runtime_trend' => :'Float',
        :'min_job_runtime' => :'Float',
        :'min_job_runtime_trend' => :'Float',
        :'avg_job_lag' => :'Float',
        :'avg_job_lag_trend' => :'Float',
        :'max_job_lag' => :'Float',
        :'max_job_lag_trend' => :'Float',
        :'min_job_lag' => :'Float',
        :'min_job_lag_trend' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BJR::TodaysStats` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BJR::TodaysStats`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_jobs')
        self.total_jobs = attributes[:'total_jobs']
      end

      if attributes.key?(:'total_jobs_trend')
        self.total_jobs_trend = attributes[:'total_jobs_trend']
      end

      if attributes.key?(:'enabled_jobs')
        self.enabled_jobs = attributes[:'enabled_jobs']
      end

      if attributes.key?(:'enabled_jobs_trend')
        self.enabled_jobs_trend = attributes[:'enabled_jobs_trend']
      end

      if attributes.key?(:'run_jobs')
        self.run_jobs = attributes[:'run_jobs']
      end

      if attributes.key?(:'run_jobs_trend')
        self.run_jobs_trend = attributes[:'run_jobs_trend']
      end

      if attributes.key?(:'failed_jobs')
        self.failed_jobs = attributes[:'failed_jobs']
      end

      if attributes.key?(:'failed_jobs_trend')
        self.failed_jobs_trend = attributes[:'failed_jobs_trend']
      end

      if attributes.key?(:'avg_job_runtime')
        self.avg_job_runtime = attributes[:'avg_job_runtime']
      end

      if attributes.key?(:'avg_job_runtime_trend')
        self.avg_job_runtime_trend = attributes[:'avg_job_runtime_trend']
      end

      if attributes.key?(:'max_job_runtime')
        self.max_job_runtime = attributes[:'max_job_runtime']
      end

      if attributes.key?(:'max_job_runtime_trend')
        self.max_job_runtime_trend = attributes[:'max_job_runtime_trend']
      end

      if attributes.key?(:'min_job_runtime')
        self.min_job_runtime = attributes[:'min_job_runtime']
      end

      if attributes.key?(:'min_job_runtime_trend')
        self.min_job_runtime_trend = attributes[:'min_job_runtime_trend']
      end

      if attributes.key?(:'avg_job_lag')
        self.avg_job_lag = attributes[:'avg_job_lag']
      end

      if attributes.key?(:'avg_job_lag_trend')
        self.avg_job_lag_trend = attributes[:'avg_job_lag_trend']
      end

      if attributes.key?(:'max_job_lag')
        self.max_job_lag = attributes[:'max_job_lag']
      end

      if attributes.key?(:'max_job_lag_trend')
        self.max_job_lag_trend = attributes[:'max_job_lag_trend']
      end

      if attributes.key?(:'min_job_lag')
        self.min_job_lag = attributes[:'min_job_lag']
      end

      if attributes.key?(:'min_job_lag_trend')
        self.min_job_lag_trend = attributes[:'min_job_lag_trend']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_jobs == o.total_jobs &&
          total_jobs_trend == o.total_jobs_trend &&
          enabled_jobs == o.enabled_jobs &&
          enabled_jobs_trend == o.enabled_jobs_trend &&
          run_jobs == o.run_jobs &&
          run_jobs_trend == o.run_jobs_trend &&
          failed_jobs == o.failed_jobs &&
          failed_jobs_trend == o.failed_jobs_trend &&
          avg_job_runtime == o.avg_job_runtime &&
          avg_job_runtime_trend == o.avg_job_runtime_trend &&
          max_job_runtime == o.max_job_runtime &&
          max_job_runtime_trend == o.max_job_runtime_trend &&
          min_job_runtime == o.min_job_runtime &&
          min_job_runtime_trend == o.min_job_runtime_trend &&
          avg_job_lag == o.avg_job_lag &&
          avg_job_lag_trend == o.avg_job_lag_trend &&
          max_job_lag == o.max_job_lag &&
          max_job_lag_trend == o.max_job_lag_trend &&
          min_job_lag == o.min_job_lag &&
          min_job_lag_trend == o.min_job_lag_trend
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_jobs, total_jobs_trend, enabled_jobs, enabled_jobs_trend, run_jobs, run_jobs_trend, failed_jobs, failed_jobs_trend, avg_job_runtime, avg_job_runtime_trend, max_job_runtime, max_job_runtime_trend, min_job_runtime, min_job_runtime_trend, avg_job_lag, avg_job_lag_trend, max_job_lag, max_job_lag_trend, min_job_lag, min_job_lag_trend].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = BJR.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
