=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.5.0
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::ConsistencyRequestParameters
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::ConsistencyRequestParameters do
  let(:instance) { OryClient::ConsistencyRequestParameters.new }

  describe 'test an instance of ConsistencyRequestParameters' do
    it 'should create an instance of ConsistencyRequestParameters' do
      expect(instance).to be_instance_of(OryClient::ConsistencyRequestParameters)
    end
  end
  describe 'test attribute "consistency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["", "strong", "eventual"])
      # validator.allowable_values.each do |value|
      #   expect { instance.consistency = value }.not_to raise_error
      # end
    end
  end

end
