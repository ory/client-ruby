=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.2.10
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::OAuth2RedirectTo
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::OAuth2RedirectTo do
  let(:instance) { OryClient::OAuth2RedirectTo.new }

  describe 'test an instance of OAuth2RedirectTo' do
    it 'should create an instance of OAuth2RedirectTo' do
      expect(instance).to be_instance_of(OryClient::OAuth2RedirectTo)
    end
  end
  describe 'test attribute "redirect_to"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
