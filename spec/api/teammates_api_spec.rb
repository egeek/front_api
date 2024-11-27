=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::TeammatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TeammatesApi' do
  before do
    # run before each test
    @api_instance = FrontApi::TeammatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeammatesApi' do
    it 'should create an instance of TeammatesApi' do
      expect(@api_instance).to be_instance_of(FrontApi::TeammatesApi)
    end
  end

  # unit tests for get_teammate
  # Get teammate
  # Fetch a teammate.
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @return [TeammateResponse]
  describe 'get_teammate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_assigned_conversations
  # List assigned conversations
  # List the conversations assigned to a teammate in reverse chronological order (most recently updated first). For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :q [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;statuses&#x60;, whose value should be a list of conversation statuses (&#x60;assigned&#x60;, &#x60;unassigned&#x60;, &#x60;archived&#x60;, or &#x60;deleted&#x60;).
  # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  # @return [ListContactConversations200Response]
  describe 'list_assigned_conversations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_teammate_inboxes
  # List teammate inboxes
  # Returns list of inboxes the teammate has access to.
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @return [ListConversationInboxes200Response]
  describe 'list_teammate_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_teammates
  # List teammates
  # List the teammates in the company.
  # @param [Hash] opts the optional parameters
  # @return [ListCommentMentions200Response]
  describe 'list_teammates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_teammate
  # Update teammate
  # Update a teammate.
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateTeammate] :update_teammate 
  # @return [nil]
  describe 'update_teammate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
