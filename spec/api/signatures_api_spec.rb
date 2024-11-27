=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::SignaturesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SignaturesApi' do
  before do
    # run before each test
    @api_instance = FrontApi::SignaturesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignaturesApi' do
    it 'should create an instance of SignaturesApi' do
      expect(@api_instance).to be_instance_of(FrontApi::SignaturesApi)
    end
  end

  # unit tests for create_team_signature
  # Create team signature
  # Create a new signature for the given team (workspace).
  # @param team_id The team ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateSharedSignature] :create_shared_signature Signature to create
  # @return [SignatureResponse]
  describe 'create_team_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_teammate_signature
  # Create teammate signature
  # Create a new signature for the given teammate
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @option opts [CreatePrivateSignature] :create_private_signature Signature to create
  # @return [SignatureResponse]
  describe 'create_teammate_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_signature
  # Delete signature
  # Delete signature
  # @param signature_id The signature ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_signatures
  # Get signatures
  # Get the given signature.
  # @param signature_id The signature ID
  # @param [Hash] opts the optional parameters
  # @return [SignatureResponse]
  describe 'get_signatures test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_team_signatures
  # List team signatures
  # List the signatures belonging to the given team (workspace).
  # @param team_id The team ID
  # @param [Hash] opts the optional parameters
  # @return [ListTeammateSignatures200Response]
  describe 'list_team_signatures test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_teammate_signatures
  # List teammate signatures
  # List the signatures belonging to the given teammate.
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @return [ListTeammateSignatures200Response]
  describe 'list_teammate_signatures test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_signature
  # Update signature
  # Update signature
  # @param signature_id The signature ID
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateSignature] :update_signature Signature to update
  # @return [SignatureResponse]
  describe 'update_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
