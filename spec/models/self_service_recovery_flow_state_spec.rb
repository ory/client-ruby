=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.176
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::SelfServiceRecoveryFlowState
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::SelfServiceRecoveryFlowState do
  let(:instance) { OryClient::SelfServiceRecoveryFlowState.new }

  describe 'test an instance of SelfServiceRecoveryFlowState' do
    it 'should create an instance of SelfServiceRecoveryFlowState' do
      expect(instance).to be_instance_of(OryClient::SelfServiceRecoveryFlowState)
    end
  end
end
