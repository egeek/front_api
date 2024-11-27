# -*- encoding: utf-8 -*-

=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "front_api/version"

Gem::Specification.new do |s|
  s.name        = "front_api"
  s.version     = FrontApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Stephen Houston"]
  s.email       = [""]
  s.homepage    = "https://github.com/egeek/front-api"
  s.summary     = "API client for Front"
  s.description = "API Client for Front"
  s.license     = "Unlicense"
  s.required_ruby_version = "3.2"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end