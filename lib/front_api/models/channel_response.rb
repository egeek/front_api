=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module FrontApi
  class ChannelResponse
    attr_accessor :_links

    # Unique identifier for the channel
    attr_accessor :id

    # The name of the channel
    attr_accessor :name

    # Address receiving the messages
    attr_accessor :address

    # Type of the channel
    attr_accessor :types

    # Address which appears as the sender for messages sent from Front
    attr_accessor :send_as

    attr_accessor :settings

    # Whether or not the channel is individual
    attr_accessor :is_private

    # Whether or not the channel configuration is valid
    attr_accessor :is_valid

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_links' => :'_links',
        :'id' => :'id',
        :'name' => :'name',
        :'address' => :'address',
        :'types' => :'types',
        :'send_as' => :'send_as',
        :'settings' => :'settings',
        :'is_private' => :'is_private',
        :'is_valid' => :'is_valid'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_links' => :'ChannelResponseLinks',
        :'id' => :'String',
        :'name' => :'String',
        :'address' => :'String',
        :'types' => :'String',
        :'send_as' => :'String',
        :'settings' => :'ChannelResponseSettings',
        :'is_private' => :'Boolean',
        :'is_valid' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `FrontApi::ChannelResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FrontApi::ChannelResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_links')
        self._links = attributes[:'_links']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'types')
        self.types = attributes[:'types']
      end

      if attributes.key?(:'send_as')
        self.send_as = attributes[:'send_as']
      end

      if attributes.key?(:'settings')
        self.settings = attributes[:'settings']
      end

      if attributes.key?(:'is_private')
        self.is_private = attributes[:'is_private']
      else
        self.is_private = false
      end

      if attributes.key?(:'is_valid')
        self.is_valid = attributes[:'is_valid']
      else
        self.is_valid = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      types_validator = EnumAttributeValidator.new('String', ["custom", "facebook", "gmail", "google_play", "imap", "intercom", "form", "office365", "layer_anon", "smtp", "talkdesk", "truly", "twilio", "twilio_whatsapp", "twitter", "twitter_dm", "yalo_wha", "front_chat", "front_mail"])
      return false unless types_validator.valid?(@types)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] types Object to be assigned
    def types=(types)
      validator = EnumAttributeValidator.new('String', ["custom", "facebook", "gmail", "google_play", "imap", "intercom", "form", "office365", "layer_anon", "smtp", "talkdesk", "truly", "twilio", "twilio_whatsapp", "twitter", "twitter_dm", "yalo_wha", "front_chat", "front_mail"])
      unless validator.valid?(types)
        fail ArgumentError, "invalid value for \"types\", must be one of #{validator.allowable_values}."
      end
      @types = types
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _links == o._links &&
          id == o.id &&
          name == o.name &&
          address == o.address &&
          types == o.types &&
          send_as == o.send_as &&
          settings == o.settings &&
          is_private == o.is_private &&
          is_valid == o.is_valid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_links, id, name, address, types, send_as, settings, is_private, is_valid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = FrontApi.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
