=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.13.0
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

# Common files
require 'ory-client/api_client'
require 'ory-client/api_error'
require 'ory-client/version'
require 'ory-client/configuration'

# Models
require 'ory-client/models/accept_o_auth2_consent_request'
require 'ory-client/models/accept_o_auth2_consent_request_session'
require 'ory-client/models/accept_o_auth2_login_request'
require 'ory-client/models/account_experience_configuration'
require 'ory-client/models/account_experience_theme_variables'
require 'ory-client/models/active_project_in_console'
require 'ory-client/models/add_project_to_workspace_body'
require 'ory-client/models/attribute'
require 'ory-client/models/attribute_filter'
require 'ory-client/models/attributes_count_datapoint'
require 'ory-client/models/authenticator_assurance_level'
require 'ory-client/models/batch_patch_identities_response'
require 'ory-client/models/billing_period_bucket'
require 'ory-client/models/check_opl_syntax_result'
require 'ory-client/models/check_permission_result'
require 'ory-client/models/cloud_account'
require 'ory-client/models/consistency_request_parameters'
require 'ory-client/models/continue_with'
require 'ory-client/models/continue_with_recovery_ui'
require 'ory-client/models/continue_with_recovery_ui_flow'
require 'ory-client/models/continue_with_set_ory_session_token'
require 'ory-client/models/continue_with_settings_ui'
require 'ory-client/models/continue_with_settings_ui_flow'
require 'ory-client/models/continue_with_verification_ui'
require 'ory-client/models/continue_with_verification_ui_flow'
require 'ory-client/models/courier_message_status'
require 'ory-client/models/courier_message_type'
require 'ory-client/models/create_custom_domain_body'
require 'ory-client/models/create_event_stream_body'
require 'ory-client/models/create_identity_body'
require 'ory-client/models/create_invite_response'
require 'ory-client/models/create_json_web_key_set'
require 'ory-client/models/create_project_api_key_request'
require 'ory-client/models/create_project_body'
require 'ory-client/models/create_project_branding'
require 'ory-client/models/create_project_member_invite_body'
require 'ory-client/models/create_project_normalized_payload'
require 'ory-client/models/create_recovery_code_for_identity_body'
require 'ory-client/models/create_recovery_link_for_identity_body'
require 'ory-client/models/create_relationship_body'
require 'ory-client/models/create_subscription_body'
require 'ory-client/models/create_subscription_common'
require 'ory-client/models/create_verifiable_credential_request_body'
require 'ory-client/models/create_workspace_body'
require 'ory-client/models/create_workspace_member_invite_body'
require 'ory-client/models/create_workspace_subscription_body'
require 'ory-client/models/credential_supported_draft00'
require 'ory-client/models/custom_domain'
require 'ory-client/models/delete_my_sessions_count'
require 'ory-client/models/email_template_data'
require 'ory-client/models/email_template_data_body'
require 'ory-client/models/error_authenticator_assurance_level_not_satisfied'
require 'ory-client/models/error_browser_location_change_required'
require 'ory-client/models/error_flow_replaced'
require 'ory-client/models/error_generic'
require 'ory-client/models/error_o_auth2'
require 'ory-client/models/event_stream'
require 'ory-client/models/expanded_permission_tree'
require 'ory-client/models/flow_error'
require 'ory-client/models/generic_error'
require 'ory-client/models/generic_error_content'
require 'ory-client/models/generic_usage'
require 'ory-client/models/get_attributes_count_response'
require 'ory-client/models/get_managed_identity_schema_location'
require 'ory-client/models/get_metrics_event_attributes_response'
require 'ory-client/models/get_metrics_event_types_response'
require 'ory-client/models/get_organization_response'
require 'ory-client/models/get_project_events_body'
require 'ory-client/models/get_project_events_response'
require 'ory-client/models/get_project_metrics_response'
require 'ory-client/models/get_session_activity_response'
require 'ory-client/models/get_version200_response'
require 'ory-client/models/health_not_ready_status'
require 'ory-client/models/health_status'
require 'ory-client/models/identity'
require 'ory-client/models/identity_credentials'
require 'ory-client/models/identity_credentials_code'
require 'ory-client/models/identity_credentials_oidc'
require 'ory-client/models/identity_credentials_oidc_provider'
require 'ory-client/models/identity_credentials_password'
require 'ory-client/models/identity_patch'
require 'ory-client/models/identity_patch_response'
require 'ory-client/models/identity_schema_container'
require 'ory-client/models/identity_schema_preset'
require 'ory-client/models/identity_with_credentials'
require 'ory-client/models/identity_with_credentials_oidc'
require 'ory-client/models/identity_with_credentials_oidc_config'
require 'ory-client/models/identity_with_credentials_oidc_config_provider'
require 'ory-client/models/identity_with_credentials_password'
require 'ory-client/models/identity_with_credentials_password_config'
require 'ory-client/models/internal_get_project_branding_body'
require 'ory-client/models/internal_is_ax_welcome_screen_enabled_for_project_body'
require 'ory-client/models/internal_is_owner_for_project_by_slug_body'
require 'ory-client/models/internal_is_owner_for_project_by_slug_response'
require 'ory-client/models/introspected_o_auth2_token'
require 'ory-client/models/invoice'
require 'ory-client/models/invoice_data_v1'
require 'ory-client/models/is_owner_for_project_by_slug'
require 'ory-client/models/json_patch'
require 'ory-client/models/json_web_key'
require 'ory-client/models/json_web_key_set'
require 'ory-client/models/keto_namespace'
require 'ory-client/models/line_item_v1'
require 'ory-client/models/list_event_streams'
require 'ory-client/models/list_invoices_response'
require 'ory-client/models/list_organizations_response'
require 'ory-client/models/list_workspace_projects'
require 'ory-client/models/list_workspaces'
require 'ory-client/models/login_flow'
require 'ory-client/models/login_flow_state'
require 'ory-client/models/logout_flow'
require 'ory-client/models/managed_identity_schema'
require 'ory-client/models/managed_identity_schema_validation_result'
require 'ory-client/models/member_invite'
require 'ory-client/models/message'
require 'ory-client/models/message_dispatch'
require 'ory-client/models/metrics_datapoint'
require 'ory-client/models/money'
require 'ory-client/models/namespace'
require 'ory-client/models/needs_privileged_session_error'
require 'ory-client/models/normalized_project'
require 'ory-client/models/normalized_project_revision'
require 'ory-client/models/normalized_project_revision_courier_channel'
require 'ory-client/models/normalized_project_revision_hook'
require 'ory-client/models/normalized_project_revision_identity_schema'
require 'ory-client/models/normalized_project_revision_third_party_provider'
require 'ory-client/models/normalized_project_revision_tokenizer_template'
require 'ory-client/models/o_auth2_client'
require 'ory-client/models/o_auth2_client_token_lifespans'
require 'ory-client/models/o_auth2_consent_request'
require 'ory-client/models/o_auth2_consent_request_open_id_connect_context'
require 'ory-client/models/o_auth2_consent_session'
require 'ory-client/models/o_auth2_consent_session_expires_at'
require 'ory-client/models/o_auth2_login_request'
require 'ory-client/models/o_auth2_logout_request'
require 'ory-client/models/o_auth2_redirect_to'
require 'ory-client/models/o_auth2_token_exchange'
require 'ory-client/models/oidc_configuration'
require 'ory-client/models/oidc_user_info'
require 'ory-client/models/organization'
require 'ory-client/models/organization_body'
require 'ory-client/models/pagination'
require 'ory-client/models/pagination_headers'
require 'ory-client/models/parse_error'
require 'ory-client/models/patch_identities_body'
require 'ory-client/models/perform_native_logout_body'
require 'ory-client/models/permissions_on_workspace'
require 'ory-client/models/plan'
require 'ory-client/models/plan_details'
require 'ory-client/models/post_check_permission_body'
require 'ory-client/models/post_check_permission_or_error_body'
require 'ory-client/models/project'
require 'ory-client/models/project_api_key'
require 'ory-client/models/project_branding'
require 'ory-client/models/project_branding_colors'
require 'ory-client/models/project_branding_theme'
require 'ory-client/models/project_cors'
require 'ory-client/models/project_events_datapoint'
require 'ory-client/models/project_host'
require 'ory-client/models/project_member'
require 'ory-client/models/project_metadata'
require 'ory-client/models/project_service_identity'
require 'ory-client/models/project_service_o_auth2'
require 'ory-client/models/project_service_permission'
require 'ory-client/models/project_services'
require 'ory-client/models/quota_usage'
require 'ory-client/models/rfc6749_error_json'
require 'ory-client/models/recovery_code_for_identity'
require 'ory-client/models/recovery_flow'
require 'ory-client/models/recovery_flow_state'
require 'ory-client/models/recovery_identity_address'
require 'ory-client/models/recovery_link_for_identity'
require 'ory-client/models/registration_flow'
require 'ory-client/models/registration_flow_state'
require 'ory-client/models/reject_o_auth2_request'
require 'ory-client/models/relation_query'
require 'ory-client/models/relationship'
require 'ory-client/models/relationship_namespaces'
require 'ory-client/models/relationship_patch'
require 'ory-client/models/relationships'
require 'ory-client/models/schema_patch'
require 'ory-client/models/self_service_flow_expired_error'
require 'ory-client/models/session'
require 'ory-client/models/session_activity_datapoint'
require 'ory-client/models/session_authentication_method'
require 'ory-client/models/session_device'
require 'ory-client/models/set_active_project_in_console_body'
require 'ory-client/models/set_custom_domain_body'
require 'ory-client/models/set_event_stream_body'
require 'ory-client/models/set_project'
require 'ory-client/models/set_project_branding_theme_body'
require 'ory-client/models/settings_flow'
require 'ory-client/models/settings_flow_state'
require 'ory-client/models/source_position'
require 'ory-client/models/subject_set'
require 'ory-client/models/subscription'
require 'ory-client/models/successful_code_exchange_response'
require 'ory-client/models/successful_native_login'
require 'ory-client/models/successful_native_registration'
require 'ory-client/models/successful_project_update'
require 'ory-client/models/tax_line_item'
require 'ory-client/models/time_interval'
require 'ory-client/models/token_pagination'
require 'ory-client/models/token_pagination_headers'
require 'ory-client/models/token_pagination_request_parameters'
require 'ory-client/models/token_pagination_response_headers'
require 'ory-client/models/trust_o_auth2_jwt_grant_issuer'
require 'ory-client/models/trusted_o_auth2_jwt_grant_issuer'
require 'ory-client/models/trusted_o_auth2_jwt_grant_json_web_key'
require 'ory-client/models/ui_container'
require 'ory-client/models/ui_node'
require 'ory-client/models/ui_node_anchor_attributes'
require 'ory-client/models/ui_node_attributes'
require 'ory-client/models/ui_node_image_attributes'
require 'ory-client/models/ui_node_input_attributes'
require 'ory-client/models/ui_node_meta'
require 'ory-client/models/ui_node_script_attributes'
require 'ory-client/models/ui_node_text_attributes'
require 'ory-client/models/ui_text'
require 'ory-client/models/update_identity_body'
require 'ory-client/models/update_login_flow_body'
require 'ory-client/models/update_login_flow_with_code_method'
require 'ory-client/models/update_login_flow_with_lookup_secret_method'
require 'ory-client/models/update_login_flow_with_oidc_method'
require 'ory-client/models/update_login_flow_with_passkey_method'
require 'ory-client/models/update_login_flow_with_password_method'
require 'ory-client/models/update_login_flow_with_totp_method'
require 'ory-client/models/update_login_flow_with_web_authn_method'
require 'ory-client/models/update_recovery_flow_body'
require 'ory-client/models/update_recovery_flow_with_code_method'
require 'ory-client/models/update_recovery_flow_with_link_method'
require 'ory-client/models/update_registration_flow_body'
require 'ory-client/models/update_registration_flow_with_code_method'
require 'ory-client/models/update_registration_flow_with_oidc_method'
require 'ory-client/models/update_registration_flow_with_passkey_method'
require 'ory-client/models/update_registration_flow_with_password_method'
require 'ory-client/models/update_registration_flow_with_profile_method'
require 'ory-client/models/update_registration_flow_with_web_authn_method'
require 'ory-client/models/update_settings_flow_body'
require 'ory-client/models/update_settings_flow_with_lookup_method'
require 'ory-client/models/update_settings_flow_with_oidc_method'
require 'ory-client/models/update_settings_flow_with_passkey_method'
require 'ory-client/models/update_settings_flow_with_password_method'
require 'ory-client/models/update_settings_flow_with_profile_method'
require 'ory-client/models/update_settings_flow_with_totp_method'
require 'ory-client/models/update_settings_flow_with_web_authn_method'
require 'ory-client/models/update_subscription_body'
require 'ory-client/models/update_verification_flow_body'
require 'ory-client/models/update_verification_flow_with_code_method'
require 'ory-client/models/update_verification_flow_with_link_method'
require 'ory-client/models/update_workspace_body'
require 'ory-client/models/usage'
require 'ory-client/models/verifiable_credential_priming_response'
require 'ory-client/models/verifiable_credential_proof'
require 'ory-client/models/verifiable_credential_response'
require 'ory-client/models/verifiable_identity_address'
require 'ory-client/models/verification_flow'
require 'ory-client/models/verification_flow_state'
require 'ory-client/models/version'
require 'ory-client/models/warning'
require 'ory-client/models/workspace'
require 'ory-client/models/workspace_api_key'

# APIs
require 'ory-client/api/courier_api'
require 'ory-client/api/events_api'
require 'ory-client/api/frontend_api'
require 'ory-client/api/identity_api'
require 'ory-client/api/jwk_api'
require 'ory-client/api/metadata_api'
require 'ory-client/api/o_auth2_api'
require 'ory-client/api/oidc_api'
require 'ory-client/api/permission_api'
require 'ory-client/api/project_api'
require 'ory-client/api/relationship_api'
require 'ory-client/api/wellknown_api'
require 'ory-client/api/workspace_api'

module OryClient
  class << self
    # Customize default settings for the SDK using block.
    #   OryClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
