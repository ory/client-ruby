=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.0.0-alpha.0
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OryClient::CourierApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CourierApi' do
  before do
    # run before each test
    @api_instance = OryClient::CourierApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CourierApi' do
    it 'should create an instance of CourierApi' do
      expect(@api_instance).to be_instance_of(OryClient::CourierApi)
    end
  end

  # unit tests for list_courier_messages
  # List Messages
  # Lists all messages by given status and recipient.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :per_page Items per Page  This is the number of items per page.
  # @option opts [Integer] :page Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist.
  # @option opts [CourierMessageStatus] :status Status filters out messages based on status. If no value is provided, it doesn&#39;t take effect on filter.
  # @option opts [String] :recipient Recipient filters out messages based on recipient. If no value is provided, it doesn&#39;t take effect on filter.
  # @return [Array<Message>]
  describe 'list_courier_messages test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
