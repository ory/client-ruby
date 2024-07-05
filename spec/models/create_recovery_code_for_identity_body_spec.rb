=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.13.1
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::CreateRecoveryCodeForIdentityBody
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::CreateRecoveryCodeForIdentityBody do
  let(:instance) { OryClient::CreateRecoveryCodeForIdentityBody.new }

  describe 'test an instance of CreateRecoveryCodeForIdentityBody' do
    it 'should create an instance of CreateRecoveryCodeForIdentityBody' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryClient::CreateRecoveryCodeForIdentityBody)
    end
  end

  describe 'test attribute "expires_in"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "flow_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "identity_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
