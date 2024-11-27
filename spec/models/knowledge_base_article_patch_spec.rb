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

# Unit tests for FrontApi::KnowledgeBaseArticlePatch
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe FrontApi::KnowledgeBaseArticlePatch do
  let(:instance) { FrontApi::KnowledgeBaseArticlePatch.new }

  describe 'test an instance of KnowledgeBaseArticlePatch' do
    it 'should create an instance of KnowledgeBaseArticlePatch' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(FrontApi::KnowledgeBaseArticlePatch)
    end
  end

  describe 'test attribute "author_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "subject"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "content"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["draft", "published"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end