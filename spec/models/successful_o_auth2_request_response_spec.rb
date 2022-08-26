=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.2.0-alpha.19
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::SuccessfulOAuth2RequestResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::SuccessfulOAuth2RequestResponse do
  let(:instance) { OryClient::SuccessfulOAuth2RequestResponse.new }

  describe 'test an instance of SuccessfulOAuth2RequestResponse' do
    it 'should create an instance of SuccessfulOAuth2RequestResponse' do
      expect(instance).to be_instance_of(OryClient::SuccessfulOAuth2RequestResponse)
    end
  end
  describe 'test attribute "redirect_to"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
