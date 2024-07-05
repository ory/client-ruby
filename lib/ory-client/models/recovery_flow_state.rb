=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.13.0
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OryClient
  class RecoveryFlowState
    CHOOSE_METHOD = "choose_method".freeze
    SENT_EMAIL = "sent_email".freeze
    PASSED_CHALLENGE = "passed_challenge".freeze

    def self.all_vars
      @all_vars ||= [CHOOSE_METHOD, SENT_EMAIL, PASSED_CHALLENGE].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if RecoveryFlowState.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #RecoveryFlowState"
    end
  end
end
