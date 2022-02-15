=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.96
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OryClient::V0alpha0Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'V0alpha0Api' do
  before do
    # run before each test
    @api_instance = OryClient::V0alpha0Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V0alpha0Api' do
    it 'should create an instance of V0alpha0Api' do
      expect(@api_instance).to be_instance_of(OryClient::V0alpha0Api)
    end
  end

  # unit tests for create_project
  # Create a Project
  # Creates a new project.
  # @param [Hash] opts the optional parameters
  # @option opts [ProjectRevision] :project_revision 
  # @return [Project]
  describe 'create_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_active_project
  # Returns Your Active Ory Cloud Project
  # Use this API to get your active project in the Ory Cloud Console UI.
  # @param [Hash] opts the optional parameters
  # @return [ActiveProject]
  describe 'get_active_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_project
  # Get a Project
  # Get a projects you have access to by its ID.
  # @param project_id Project ID  The project&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [Project]
  describe 'get_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_project_members
  # Get all members associated with this project.
  # This endpoint requires the user to be a member of the project with the role &#x60;OWNER&#x60; or &#x60;DEVELOPER&#x60;.
  # @param project_id Project ID  The project&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [Array<CloudAccount>]
  describe 'get_project_members test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_projects
  # List All Projects
  # Lists all projects you have access to.
  # @param [Hash] opts the optional parameters
  # @return [Array<Project>]
  describe 'list_projects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for purge_project
  # Irrecoverably Purge a Project
  # !! Use with extreme caution !!  Using this API endpoint you can purge (completely delete) a project and its data. This action can not be undone and will delete ALL your data.  !! Use with extreme caution !!
  # @param project_id Project ID  The project&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_project_member
  # Remove a member associated with this project. This also sets their invite status to &#x60;REMOVED&#x60;.
  # This endpoint requires the user to be a member of the project with the role &#x60;OWNER&#x60;.
  # @param project_id Project ID  The project&#39;s ID.
  # @param member_id Member ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_project_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_active_project
  # Sets Your Active Project
  # Use this API to set your active project in the Ory Cloud Console UI.
  # @param [Hash] opts the optional parameters
  # @option opts [InlineObject] :inline_object 
  # @return [nil]
  describe 'set_active_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_project
  # Update a Project
  # Creates a new configuration revision for a project.
  # @param project_id Project ID  The project&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @option opts [ProjectRevision] :project_revision 
  # @return [Project]
  describe 'update_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_project_config
  # Update an Ory Cloud Project Configuration
  # This endpoints allows you to update the Ory Cloud Project configuration for individual services (identity, permission, ...). The configuration is fully compatible with the open source projects for the respective services (e.g. Ory Kratos for Identity, Ory Keto for Permissions).  This endpoint expects the &#x60;version&#x60; key to be set in the payload. If it is unset, it will try to import the config as if it is from the most recent version.  If you have an older version of a configuration, you should set the version key in the payload!  While this endpoint is able to process all configuration items related to features (e.g. password reset), it does not support operational configuration items (e.g. port, tracing, logging) otherwise available in the open source.  For configuration items that can not be translated to Ory Cloud, this endpoint will return a list of warnings to help you understand which parts of your config could not be processed.  Be aware that updating any service&#39;s configuration will completely override your current configuration for that service!
  # @param project_id Project ID  The project&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateProjectConfigConfig] :update_project_config_config 
  # @return [SuccessfulProjectConfigUpdate]
  describe 'update_project_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
