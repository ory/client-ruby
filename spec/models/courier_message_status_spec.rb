=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.1.47
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::CourierMessageStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::CourierMessageStatus do
  let(:instance) { OryClient::CourierMessageStatus.new }

  describe 'test an instance of CourierMessageStatus' do
    it 'should create an instance of CourierMessageStatus' do
      expect(instance).to be_instance_of(OryClient::CourierMessageStatus)
    end
  end
end
