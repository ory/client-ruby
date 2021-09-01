=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.16
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryHydraClient::SelfServiceSettingsFlowState
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryHydraClient::SelfServiceSettingsFlowState do
  let(:instance) { OryHydraClient::SelfServiceSettingsFlowState.new }

  describe 'test an instance of SelfServiceSettingsFlowState' do
    it 'should create an instance of SelfServiceSettingsFlowState' do
      expect(instance).to be_instance_of(OryHydraClient::SelfServiceSettingsFlowState)
    end
  end
end
