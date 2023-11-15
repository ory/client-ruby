=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.4.0
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OryClient
  class CourierMessageStatus
    QUEUED = "queued".freeze
    SENT = "sent".freeze
    PROCESSING = "processing".freeze
    ABANDONED = "abandoned".freeze

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
      constantValues = CourierMessageStatus.constants.select { |c| CourierMessageStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CourierMessageStatus" if constantValues.empty?
      value
    end
  end
end
