=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.2.0-alpha.16
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OryClient::AdminApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AdminApi' do
  before do
    # run before each test
    @api_instance = OryClient::AdminApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdminApi' do
    it 'should create an instance of AdminApi' do
      expect(@api_instance).to be_instance_of(OryClient::AdminApi)
    end
  end

  # unit tests for update_o_auth2_client_lifespans
  # UpdateLifespans an existing OAuth 2.0 client&#39;s token lifespan configuration. This client configuration takes precedence over the instance-wide token lifespan configuration.
  # @param id The id of the OAuth 2.0 Client.
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateOAuth2ClientLifespans] :update_o_auth2_client_lifespans 
  # @return [OAuth2Client]
  describe 'update_o_auth2_client_lifespans test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
