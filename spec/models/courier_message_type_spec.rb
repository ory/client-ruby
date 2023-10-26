=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.2.14
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::CourierMessageType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::CourierMessageType do
  let(:instance) { OryClient::CourierMessageType.new }

  describe 'test an instance of CourierMessageType' do
    it 'should create an instance of CourierMessageType' do
      expect(instance).to be_instance_of(OryClient::CourierMessageType)
    end
  end
end
