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
  class OutboundMessage
    # List of the recipient handles who will receive this message
    attr_accessor :to

    # List of the recipient handles who will receive a copy of this message
    attr_accessor :cc

    # List of the recipient handles who will receive a blind copy of this message
    attr_accessor :bcc

    # Name used for the sender info of the message
    attr_accessor :sender_name

    # Subject of the message for email message
    attr_accessor :subject

    # ID of the teammate on behalf of whom the answer is sent
    attr_accessor :author_id

    # Body of the message
    attr_accessor :body

    # Text version of the body for email messages
    attr_accessor :text

    attr_accessor :options

    # Binary data of attached files. Must use `Content-Type: multipart/form-data` if specified. See [example](https://gist.github.com/hdornier/e04d04921032e98271f46ff8a539a4cb) or read more about [Attachments](https://dev.frontapp.com/docs/attachments-1). Max 25 MB.
    attr_accessor :attachments

    # ID of the signature to attach to this draft. If null, no signature is attached.
    attr_accessor :signature_id

    # Whether or not Front should try to resolve a signature for the message. Is ignored if signature_id is included. Default false;
    attr_accessor :should_add_default_signature

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'to' => :'to',
        :'cc' => :'cc',
        :'bcc' => :'bcc',
        :'sender_name' => :'sender_name',
        :'subject' => :'subject',
        :'author_id' => :'author_id',
        :'body' => :'body',
        :'text' => :'text',
        :'options' => :'options',
        :'attachments' => :'attachments',
        :'signature_id' => :'signature_id',
        :'should_add_default_signature' => :'should_add_default_signature'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'to' => :'Array<String>',
        :'cc' => :'Array<String>',
        :'bcc' => :'Array<String>',
        :'sender_name' => :'String',
        :'subject' => :'String',
        :'author_id' => :'String',
        :'body' => :'String',
        :'text' => :'String',
        :'options' => :'OutboundMessageOptions',
        :'attachments' => :'Array<File>',
        :'signature_id' => :'String',
        :'should_add_default_signature' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `FrontApi::OutboundMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FrontApi::OutboundMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'to')
        if (value = attributes[:'to']).is_a?(Array)
          self.to = value
        end
      else
        self.to = nil
      end

      if attributes.key?(:'cc')
        if (value = attributes[:'cc']).is_a?(Array)
          self.cc = value
        end
      end

      if attributes.key?(:'bcc')
        if (value = attributes[:'bcc']).is_a?(Array)
          self.bcc = value
        end
      end

      if attributes.key?(:'sender_name')
        self.sender_name = attributes[:'sender_name']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'author_id')
        self.author_id = attributes[:'author_id']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      else
        self.body = nil
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'signature_id')
        self.signature_id = attributes[:'signature_id']
      end

      if attributes.key?(:'should_add_default_signature')
        self.should_add_default_signature = attributes[:'should_add_default_signature']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @to.nil?
        invalid_properties.push('invalid value for "to", to cannot be nil.')
      end

      if @body.nil?
        invalid_properties.push('invalid value for "body", body cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @to.nil?
      return false if @body.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          to == o.to &&
          cc == o.cc &&
          bcc == o.bcc &&
          sender_name == o.sender_name &&
          subject == o.subject &&
          author_id == o.author_id &&
          body == o.body &&
          text == o.text &&
          options == o.options &&
          attachments == o.attachments &&
          signature_id == o.signature_id &&
          should_add_default_signature == o.should_add_default_signature
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [to, cc, bcc, sender_name, subject, author_id, body, text, options, attachments, signature_id, should_add_default_signature].hash
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
