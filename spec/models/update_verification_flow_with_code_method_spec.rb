=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.11.6
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::UpdateVerificationFlowWithCodeMethod
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::UpdateVerificationFlowWithCodeMethod do
  let(:instance) { OryClient::UpdateVerificationFlowWithCodeMethod.new }

  describe 'test an instance of UpdateVerificationFlowWithCodeMethod' do
    it 'should create an instance of UpdateVerificationFlowWithCodeMethod' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryClient::UpdateVerificationFlowWithCodeMethod)
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "csrf_token"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "email"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "method"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["link", "code"])
      # validator.allowable_values.each do |value|
      #   expect { instance.method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "transient_payload"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
