=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::MessagesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MessagesApi' do
  before do
    # run before each test
    @api_instance = FrontApi::MessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagesApi' do
    it 'should create an instance of MessagesApi' do
      expect(@api_instance).to be_instance_of(FrontApi::MessagesApi)
    end
  end

  # unit tests for create_message
  # Create message
  # Send a new message from a channel. This is one of the ways to create a new [conversation](https://dev.frontapp.com/reference/conversations#creating-a-new-conversation). The new conversation will support both messages and comments (discussions).
  # @param channel_id The sending channel ID. Alternatively, you can supply the sending channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [OutboundMessage] :outbound_message 
  # @return [MessageResponse]
  describe 'create_message test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_message_reply
  # Create message reply
  # Reply to a conversation by sending a message and appending it to the conversation.
  # @param conversation_id The conversation ID
  # @param [Hash] opts the optional parameters
  # @option opts [OutboundReplyMessage] :outbound_reply_message 
  # @return [MessageResponse]
  describe 'create_message_reply test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_message
  # Get message
  # Fetch a message.  &gt; ℹ️ The HTTP Header &#x60;Accept&#x60; can be used to request the message in a different format. &gt; By default, Front will return the documented JSON response. By requesting &#x60;message/rfc822&#x60;, the response will contain the message in the EML format (for email messages only). 
  # @param message_id The message ID
  # @param [Hash] opts the optional parameters
  # @return [MessageResponse]
  describe 'get_message test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_message_seen_status
  # Get message seen status
  # Get the seen receipts for the given message. If no seen-by information is available, there will be a single entry for the first time the message was seen by any recipient. If seen-by information is available, there will be an entry for each recipient who has seen the message.
  # @param message_id The message ID
  # @param [Hash] opts the optional parameters
  # @return [GetMessageSeenStatus200Response]
  describe 'get_message_seen_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for import_inbox_message
  # Import message
  # Import a new message in an inbox.
  # @param inbox_id The Inbox ID
  # @param [Hash] opts the optional parameters
  # @option opts [ImportMessage] :import_message 
  # @return [ReceiveCustomMessages202Response]
  describe 'import_inbox_message test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for mark_message_seen
  # Mark message seen
  # Mark an outbound message from Front as seen. Note, the message seen route should only be called in response to an actual end-user&#39;s message-seen action. In accordance with this behavior, the route is rate limited to 10 requests per hour. The request body should send an empty object.
  # @param message_id The message ID
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [nil]
  describe 'mark_message_seen test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for receive_custom_messages
  # Receive custom messages
  # Receive a custom message in Front. This endpoint is available for custom channels **ONLY**.
  # @param channel_id The channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [CustomMessage] :custom_message 
  # @return [ReceiveCustomMessages202Response]
  describe 'receive_custom_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
