=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for FrontApi::CreateChannelSettings
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FrontApi::CreateChannelSettings do
  let(:instance) { FrontApi::CreateChannelSettings.new }

  describe 'test an instance of CreateChannelSettings' do
    it 'should create an instance of CreateChannelSettings' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(FrontApi::CreateChannelSettings)
    end
  end

  describe 'test attribute "undo_send_time"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [0, 5, 10, 15, 30, 60])
      # validator.allowable_values.each do |value|
      #   expect { instance.undo_send_time = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "all_teammates_can_reply"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "webhook_url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sid"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "auth_token"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
