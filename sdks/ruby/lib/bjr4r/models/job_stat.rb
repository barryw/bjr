=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1-SNAPSHOT

=end

require 'date'

module BJR
  class JobStat
    # The number of job runs in the period.
    attr_accessor :runs

    # The number of job runs that failed in the period.
    attr_accessor :failed

    # The number of jobs that executed in the period.
    attr_accessor :job_count

    # The average runtime in seconds of all jobs in the period.
    attr_accessor :avg_runtime

    # The max runtime in seconds of all jobs in the period.
    attr_accessor :max_runtime

    # The min runtime in seconds of all jobs in the period.
    attr_accessor :min_runtime

    # The runtime period.
    attr_accessor :period

    # The period start date.
    attr_accessor :start_dt

    # The period end date.
    attr_accessor :end_dt

    # The date the record was created.
    attr_accessor :created_at

    # The date the record was last updated.
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'runs' => :'runs',
        :'failed' => :'failed',
        :'job_count' => :'job_count',
        :'avg_runtime' => :'avg_runtime',
        :'max_runtime' => :'max_runtime',
        :'min_runtime' => :'min_runtime',
        :'period' => :'period',
        :'start_dt' => :'start_dt',
        :'end_dt' => :'end_dt',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'runs' => :'Integer',
        :'failed' => :'Integer',
        :'job_count' => :'Integer',
        :'avg_runtime' => :'Decimal',
        :'max_runtime' => :'Decimal',
        :'min_runtime' => :'Decimal',
        :'period' => :'String',
        :'start_dt' => :'DateTime',
        :'end_dt' => :'DateTime',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BJR::JobStat` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BJR::JobStat`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'runs')
        self.runs = attributes[:'runs']
      end

      if attributes.key?(:'failed')
        self.failed = attributes[:'failed']
      end

      if attributes.key?(:'job_count')
        self.job_count = attributes[:'job_count']
      end

      if attributes.key?(:'avg_runtime')
        self.avg_runtime = attributes[:'avg_runtime']
      end

      if attributes.key?(:'max_runtime')
        self.max_runtime = attributes[:'max_runtime']
      end

      if attributes.key?(:'min_runtime')
        self.min_runtime = attributes[:'min_runtime']
      end

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'start_dt')
        self.start_dt = attributes[:'start_dt']
      end

      if attributes.key?(:'end_dt')
        self.end_dt = attributes[:'end_dt']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
          runs == o.runs &&
          failed == o.failed &&
          job_count == o.job_count &&
          avg_runtime == o.avg_runtime &&
          max_runtime == o.max_runtime &&
          min_runtime == o.min_runtime &&
          period == o.period &&
          start_dt == o.start_dt &&
          end_dt == o.end_dt &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [runs, failed, job_count, avg_runtime, max_runtime, min_runtime, period, start_dt, end_dt, created_at, updated_at].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        BJR.const_get(type).build_from_hash(value)
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
