=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.15.5
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

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

  # unit tests for get_courier_message
  # Get a Message
  # Gets a specific messages by the given ID.
  # @param id MessageID is the ID of the message.
  # @param [Hash] opts the optional parameters
  # @return [Message]
  describe 'get_courier_message test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_courier_messages
  # List Messages
  # Lists all messages by given status and recipient.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  # @option opts [String] :page_token Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  # @option opts [CourierMessageStatus] :status Status filters out messages based on status. If no value is provided, it doesn&#39;t take effect on filter.
  # @option opts [String] :recipient Recipient filters out messages based on recipient. If no value is provided, it doesn&#39;t take effect on filter.
  # @return [Array<Message>]
  describe 'list_courier_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
