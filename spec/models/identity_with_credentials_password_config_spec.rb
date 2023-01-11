=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.1.5
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::IdentityWithCredentialsPasswordConfig
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::IdentityWithCredentialsPasswordConfig do
  let(:instance) { OryClient::IdentityWithCredentialsPasswordConfig.new }

  describe 'test an instance of IdentityWithCredentialsPasswordConfig' do
    it 'should create an instance of IdentityWithCredentialsPasswordConfig' do
      expect(instance).to be_instance_of(OryClient::IdentityWithCredentialsPasswordConfig)
    end
  end
  describe 'test attribute "hashed_password"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "password"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
