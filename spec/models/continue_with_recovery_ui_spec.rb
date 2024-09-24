=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.15.4
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::ContinueWithRecoveryUi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::ContinueWithRecoveryUi do
  let(:instance) { OryClient::ContinueWithRecoveryUi.new }

  describe 'test an instance of ContinueWithRecoveryUi' do
    it 'should create an instance of ContinueWithRecoveryUi' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryClient::ContinueWithRecoveryUi)
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["show_recovery_ui"])
      # validator.allowable_values.each do |value|
      #   expect { instance.action = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "flow"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
