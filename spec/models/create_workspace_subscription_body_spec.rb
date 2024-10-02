=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.15.5
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::CreateWorkspaceSubscriptionBody
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::CreateWorkspaceSubscriptionBody do
  let(:instance) { OryClient::CreateWorkspaceSubscriptionBody.new }

  describe 'test an instance of CreateWorkspaceSubscriptionBody' do
    it 'should create an instance of CreateWorkspaceSubscriptionBody' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryClient::CreateWorkspaceSubscriptionBody)
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["usd", "eur"])
      # validator.allowable_values.each do |value|
      #   expect { instance.currency = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "interval"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["monthly", "yearly"])
      # validator.allowable_values.each do |value|
      #   expect { instance.interval = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "plan"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "return_to"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
