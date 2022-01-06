=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.37
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module OryClient
  module SubmitSelfServiceRegistrationFlowBody
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'SubmitSelfServiceRegistrationFlowWithOidcMethodBody',
          :'SubmitSelfServiceRegistrationFlowWithPasswordMethodBody'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'method'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'oidc' => :'SubmitSelfServiceRegistrationFlowWithOidcMethodBody',
          :'password' => :'SubmitSelfServiceRegistrationFlowWithPasswordMethodBody'
        }
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        discriminator_value = data[openapi_discriminator_name]
        return nil unless discriminator_value

        klass = openapi_discriminator_mapping[discriminator_value.to_sym]
        return nil unless klass

        OryClient.const_get(klass).build_from_hash(data)
      end
    end
  end

end
