=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.179
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::GetCheckResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::GetCheckResponse do
  let(:instance) { OryClient::GetCheckResponse.new }

  describe 'test an instance of GetCheckResponse' do
    it 'should create an instance of GetCheckResponse' do
      expect(instance).to be_instance_of(OryClient::GetCheckResponse)
    end
  end
  describe 'test attribute "allowed"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
