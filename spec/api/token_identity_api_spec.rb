=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::TokenIdentityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TokenIdentityApi' do
  before do
    # run before each test
    @api_instance = FrontApi::TokenIdentityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TokenIdentityApi' do
    it 'should create an instance of TokenIdentityApi' do
      expect(@api_instance).to be_instance_of(FrontApi::TokenIdentityApi)
    end
  end

  # unit tests for api_token_details
  # API Token details
  # Fetch the details of the API token.
  # @param [Hash] opts the optional parameters
  # @return [IdentityResponse]
  describe 'api_token_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end