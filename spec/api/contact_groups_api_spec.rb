=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::ContactGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactGroupsApi' do
  before do
    # run before each test
    @api_instance = FrontApi::ContactGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactGroupsApi' do
    it 'should create an instance of ContactGroupsApi' do
      expect(@api_instance).to be_instance_of(FrontApi::ContactGroupsApi)
    end
  end

  # unit tests for add_contacts_to_group
  # Add contacts to group
  # Add contacts to the requested group.
  # @param contact_group_id The contact group ID
  # @param [Hash] opts the optional parameters
  # @option opts [AddContactsToGroup] :add_contacts_to_group 
  # @return [nil]
  describe 'add_contacts_to_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_group
  # Create group
  # Create a new contact group in the default team (workspace).
  # @param [Hash] opts the optional parameters
  # @option opts [CreateContactGroup] :create_contact_group 
  # @return [nil]
  describe 'create_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_team_group
  # Create team group
  # Create a new contact group for the requested team (workspace).
  # @param team_id The team ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateContactGroup] :create_contact_group 
  # @return [nil]
  describe 'create_team_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_teammate_group
  # Create teammate group
  # Create a new contact group for the requested teammate.
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [CreateContactGroup] :create_contact_group 
  # @return [nil]
  describe 'create_teammate_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group
  # Delete group
  # Delete a contact group.
  # @param contact_group_id The contact group ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_contacts_in_group
  # List contacts in group
  # List the contacts belonging to the requested group.
  # @param contact_group_id The contact group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
  # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
  # @return [ListAccountContacts200Response]
  describe 'list_contacts_in_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_groups
  # List groups
  # List the contact groups.
  # @param [Hash] opts the optional parameters
  # @return [ListGroups200Response]
  describe 'list_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_team_groups
  # List team groups
  # List contact groups belonging to the requested team (workspace).
  # @param team_id The team ID
  # @param [Hash] opts the optional parameters
  # @return [ListGroups200Response]
  describe 'list_team_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_teammate_groups
  # List teammate groups
  # List the contact groups belonging to the requested teammate.
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @return [ListGroups200Response]
  describe 'list_teammate_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for remove_contacts_from_group
  # Remove contacts from group
  # Remove contacts from the requested group.
  # @param contact_group_id The contact group ID
  # @param [Hash] opts the optional parameters
  # @option opts [RemoveContactsFromGroup] :remove_contacts_from_group 
  # @return [nil]
  describe 'remove_contacts_from_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
