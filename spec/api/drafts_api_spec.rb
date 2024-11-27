=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::DraftsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DraftsApi' do
  before do
    # run before each test
    @api_instance = FrontApi::DraftsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DraftsApi' do
    it 'should create an instance of DraftsApi' do
      expect(@api_instance).to be_instance_of(FrontApi::DraftsApi)
    end
  end

  # unit tests for create_draft
  # Create draft
  # Create a draft message which is the first message of a new [conversation](https://dev.frontapp.com/reference/conversations).
  # @param channel_id The channel ID. Alternatively, you can supply the channel address as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [CreateDraft] :create_draft 
  # @return [MessageResponse]
  describe 'create_draft test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_draft_reply
  # Create draft reply
  # Create a new draft as a reply to the last message in the conversation.
  # @param conversation_id The conversation ID
  # @param [Hash] opts the optional parameters
  # @option opts [ReplyDraft] :reply_draft 
  # @return [MessageResponse]
  describe 'create_draft_reply test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_draft
  # Delete draft
  # Delete a draft message.
  # @param draft_id The draft ID
  # @param [Hash] opts the optional parameters
  # @option opts [DeleteDraft] :delete_draft 
  # @return [nil]
  describe 'delete_draft test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for edit_draft
  # Edit draft
  # Edit a draft message.
  # @param message_id The draft ID
  # @param [Hash] opts the optional parameters
  # @option opts [EditDraft] :edit_draft 
  # @return [MessageResponse]
  describe 'edit_draft test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_conversation_drafts
  # List conversation drafts
  # List the drafts in a conversation.
  # @param conversation_id The conversation ID
  # @param [Hash] opts the optional parameters
  # @return [ListConversationDrafts200Response]
  describe 'list_conversation_drafts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
