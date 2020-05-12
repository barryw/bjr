=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1-SNAPSHOT

=end

require 'date'

module BJR
  class SingleJob
    # The object's primary key. This uniquely identifies the object in the system.
    attr_accessor :id

    # The name of the job.
    attr_accessor :name

    # The cron expression for the job.
    attr_accessor :cron

    # Whether the job is enabled or not.
    attr_accessor :enabled

    # The command that is executed when the job fires.
    attr_accessor :command

    # The last time the job ran.
    attr_accessor :last_run

    # The date and time of the job's next run.
    attr_accessor :next_run

    # Whether the last run of the job was successful.
    attr_accessor :success

    # Whether the job is currently running.
    attr_accessor :running

    # The timezone that the job will run in.
    attr_accessor :timezone

    # An array of tags associated with the job.
    attr_accessor :tags

    # The UTC date and time that the object was created.
    attr_accessor :created_at

    # The UTC date and time that the object was last modified.
    attr_accessor :updated_at

    # This url will receive a POST request with details about all successful job runs.
    attr_accessor :success_callback

    # This url will receive a POST request with details about all unsuccessful job runs.
    attr_accessor :failure_callback

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'cron' => :'cron',
        :'enabled' => :'enabled',
        :'command' => :'command',
        :'last_run' => :'last_run',
        :'next_run' => :'next_run',
        :'success' => :'success',
        :'running' => :'running',
        :'timezone' => :'timezone',
        :'tags' => :'tags',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'success_callback' => :'success_callback',
        :'failure_callback' => :'failure_callback'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'cron' => :'String',
        :'enabled' => :'Boolean',
        :'command' => :'String',
        :'last_run' => :'DateTime',
        :'next_run' => :'DateTime',
        :'success' => :'Boolean',
        :'running' => :'Boolean',
        :'timezone' => :'String',
        :'tags' => :'Array<String>',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'success_callback' => :'String',
        :'failure_callback' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'last_run',
        :'success_callback',
        :'failure_callback'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BJR::SingleJob` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BJR::SingleJob`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'cron')
        self.cron = attributes[:'cron']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'command')
        self.command = attributes[:'command']
      end

      if attributes.key?(:'last_run')
        self.last_run = attributes[:'last_run']
      end

      if attributes.key?(:'next_run')
        self.next_run = attributes[:'next_run']
      end

      if attributes.key?(:'success')
        self.success = attributes[:'success']
      end

      if attributes.key?(:'running')
        self.running = attributes[:'running']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'success_callback')
        self.success_callback = attributes[:'success_callback']
      end

      if attributes.key?(:'failure_callback')
        self.failure_callback = attributes[:'failure_callback']
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
          id == o.id &&
          name == o.name &&
          cron == o.cron &&
          enabled == o.enabled &&
          command == o.command &&
          last_run == o.last_run &&
          next_run == o.next_run &&
          success == o.success &&
          running == o.running &&
          timezone == o.timezone &&
          tags == o.tags &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          success_callback == o.success_callback &&
          failure_callback == o.failure_callback
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, cron, enabled, command, last_run, next_run, success, running, timezone, tags, created_at, updated_at, success_callback, failure_callback].hash
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
