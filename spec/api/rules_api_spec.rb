=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FrontApi::RulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RulesApi' do
  before do
    # run before each test
    @api_instance = FrontApi::RulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RulesApi' do
    it 'should create an instance of RulesApi' do
      expect(@api_instance).to be_instance_of(FrontApi::RulesApi)
    end
  end

  # unit tests for get_rule
  # Get rule
  # Fetch a rule.
  # @param rule_id The Rule ID
  # @param [Hash] opts the optional parameters
  # @return [RuleResponse]
  describe 'get_rule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_all_company_rules
  # List all company rules
  # List the company rules.
  # @param [Hash] opts the optional parameters
  # @return [ListAllCompanyRules200Response]
  describe 'list_all_company_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_rules
  # List rules
  # List the rules of the company.
  # @param [Hash] opts the optional parameters
  # @return [ListAllCompanyRules200Response]
  describe 'list_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_team_rules
  # List team rules
  # List the rules of a team (workspace).
  # @param team_id The team ID
  # @param [Hash] opts the optional parameters
  # @return [ListAllCompanyRules200Response]
  describe 'list_team_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_teammate_rules
  # List teammate rules
  # List the rules of a teammate.
  # @param teammate_id The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
  # @param [Hash] opts the optional parameters
  # @return [ListAllCompanyRules200Response]
  describe 'list_teammate_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
