=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.6.2
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OryClient
  # Update Registration Request Body
  module UpdateRegistrationFlowBody
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'UpdateRegistrationFlowWithCodeMethod',
          :'UpdateRegistrationFlowWithOidcMethod',
          :'UpdateRegistrationFlowWithPasswordMethod',
          :'UpdateRegistrationFlowWithWebAuthnMethod'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'method'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'code' => :'UpdateRegistrationFlowWithCodeMethod',
          :'oidc' => :'UpdateRegistrationFlowWithOidcMethod',
          :'password' => :'UpdateRegistrationFlowWithPasswordMethod',
          :'webauthn' => :'UpdateRegistrationFlowWithWebAuthnMethod'
        }
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        discriminator_value = data[openapi_discriminator_name]
        return nil if discriminator_value.nil?

        klass = openapi_discriminator_mapping[discriminator_value.to_s.to_sym]
        return nil unless klass

        OryClient.const_get(klass).build_from_hash(data)
      end
    end
  end

end
