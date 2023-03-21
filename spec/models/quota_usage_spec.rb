=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.1.23
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryClient::QuotaUsage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryClient::QuotaUsage do
  let(:instance) { OryClient::QuotaUsage.new }

  describe 'test an instance of QuotaUsage' do
    it 'should create an instance of QuotaUsage' do
      expect(instance).to be_instance_of(OryClient::QuotaUsage)
    end
  end
  describe 'test attribute "additional_price"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "can_use_more"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "feature"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["region_eu", "region_us", "region_apac", "region_global", "production_projects", "daily_active_users", "custom_domains", "sla", "collaborator_seats", "edge_cache", "branding_themes", "zendesk_support", "rate_limit_tier", "session_rate_limit_tier"])
      # validator.allowable_values.each do |value|
      #   expect { instance.feature = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "feature_available"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "included"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "used"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
