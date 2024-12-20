=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::ContactNotesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactNotesApi' do
  before do
    # run before each test
    @api_instance = FrontApi::ContactNotesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactNotesApi' do
    it 'should create an instance of ContactNotesApi' do
      expect(@api_instance).to be_instance_of(FrontApi::ContactNotesApi)
    end
  end

  # unit tests for add_note
  # Add note
  # Create a new note on a contact.
  # @param contact_id The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [CreateContactNote] :create_contact_note 
  # @return [ContactNoteResponses]
  describe 'add_note test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_notes
  # List notes
  # List the notes added to a contact.
  # @param contact_id The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @return [ListNotes202Response]
  describe 'list_notes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
