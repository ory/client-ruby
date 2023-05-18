=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.1.30
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OryClient::PermissionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PermissionApi' do
  before do
    # run before each test
    @api_instance = OryClient::PermissionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PermissionApi' do
    it 'should create an instance of PermissionApi' do
      expect(@api_instance).to be_instance_of(OryClient::PermissionApi)
    end
  end

  # unit tests for check_permission
  # Check a permission
  # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :namespace Namespace of the Relationship
  # @option opts [String] :object Object of the Relationship
  # @option opts [String] :relation Relation of the Relationship
  # @option opts [String] :subject_id SubjectID of the Relationship
  # @option opts [String] :subject_set_namespace Namespace of the Subject Set
  # @option opts [String] :subject_set_object Object of the Subject Set
  # @option opts [String] :subject_set_relation Relation of the Subject Set
  # @option opts [Integer] :max_depth 
  # @return [CheckPermissionResult]
  describe 'check_permission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_permission_or_error
  # Check a permission
  # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :namespace Namespace of the Relationship
  # @option opts [String] :object Object of the Relationship
  # @option opts [String] :relation Relation of the Relationship
  # @option opts [String] :subject_id SubjectID of the Relationship
  # @option opts [String] :subject_set_namespace Namespace of the Subject Set
  # @option opts [String] :subject_set_object Object of the Subject Set
  # @option opts [String] :subject_set_relation Relation of the Subject Set
  # @option opts [Integer] :max_depth 
  # @return [CheckPermissionResult]
  describe 'check_permission_or_error test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for expand_permissions
  # Expand a Relationship into permissions.
  # Use this endpoint to expand a relationship tuple into permissions.
  # @param namespace Namespace of the Subject Set
  # @param object Object of the Subject Set
  # @param relation Relation of the Subject Set
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_depth 
  # @return [ExpandedPermissionTree]
  describe 'expand_permissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_check_permission
  # Check a permission
  # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_depth 
  # @option opts [PostCheckPermissionBody] :post_check_permission_body 
  # @return [CheckPermissionResult]
  describe 'post_check_permission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_check_permission_or_error
  # Check a permission
  # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_depth nolint:deadcode,unused
  # @option opts [PostCheckPermissionOrErrorBody] :post_check_permission_or_error_body 
  # @return [CheckPermissionResult]
  describe 'post_check_permission_or_error test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
