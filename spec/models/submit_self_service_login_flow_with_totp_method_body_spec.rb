=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.2.0-alpha.14
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::SubmitSelfServiceLoginFlowWithTotpMethodBody
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::SubmitSelfServiceLoginFlowWithTotpMethodBody do
  let(:instance) { OryClient::SubmitSelfServiceLoginFlowWithTotpMethodBody.new }

  describe 'test an instance of SubmitSelfServiceLoginFlowWithTotpMethodBody' do
    it 'should create an instance of SubmitSelfServiceLoginFlowWithTotpMethodBody' do
      expect(instance).to be_instance_of(OryClient::SubmitSelfServiceLoginFlowWithTotpMethodBody)
    end
  end
  describe 'test attribute "csrf_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "totp_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
