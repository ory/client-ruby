=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.14.1
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

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
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OryClient::QuotaUsage)
    end
  end

  describe 'test attribute "additional_price"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "can_use_more"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "feature"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["production_projects", "staging_projects", "development_projects", "daily_active_users", "custom_domains", "event_streams", "event_stream_events", "sla", "collaborator_seats", "edge_cache", "branding_themes", "zendesk_support", "project_metrics", "project_metrics_time_window", "project_metrics_events_history", "organizations", "rop_grant", "concierge_onboarding", "credit", "data_location_global", "data_location_us", "m2m_token_issuance", "permission_checks", "data_location_regional", "rate_limit_tier", "session_rate_limit_tier", "identities_list_rate_limit_tier", "permission_checks_rate_limit_tier", "oauth2_introspect_rate_limit_tier"])
      # validator.allowable_values.each do |value|
      #   expect { instance.feature = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "feature_available"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "included"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "used"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
