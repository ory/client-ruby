=begin
#Ory APIs

## Introduction Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.  ## SDKs This document describes the APIs available in the Ory Network. The APIs are available as SDKs for the following languages:  | Language       | Download SDK                                                     | Documentation                                                                        | | -------------- | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------ | | Dart           | [pub.dev](https://pub.dev/packages/ory_client)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/dart/README.md)       | | .NET           | [nuget.org](https://www.nuget.org/packages/Ory.Client/)          | [README](https://github.com/ory/sdk/blob/master/clients/client/dotnet/README.md)     | | Elixir         | [hex.pm](https://hex.pm/packages/ory_client)                     | [README](https://github.com/ory/sdk/blob/master/clients/client/elixir/README.md)     | | Go             | [github.com](https://github.com/ory/client-go)                   | [README](https://github.com/ory/sdk/blob/master/clients/client/go/README.md)         | | Java           | [maven.org](https://search.maven.org/artifact/sh.ory/ory-client) | [README](https://github.com/ory/sdk/blob/master/clients/client/java/README.md)       | | JavaScript     | [npmjs.com](https://www.npmjs.com/package/@ory/client)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript/README.md) | | JavaScript (With fetch) | [npmjs.com](https://www.npmjs.com/package/@ory/client-fetch)           | [README](https://github.com/ory/sdk/blob/master/clients/client/typescript-fetch/README.md) |  | PHP            | [packagist.org](https://packagist.org/packages/ory/client)       | [README](https://github.com/ory/sdk/blob/master/clients/client/php/README.md)        | | Python         | [pypi.org](https://pypi.org/project/ory-client/)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/python/README.md)     | | Ruby           | [rubygems.org](https://rubygems.org/gems/ory-client)             | [README](https://github.com/ory/sdk/blob/master/clients/client/ruby/README.md)       | | Rust           | [crates.io](https://crates.io/crates/ory-client)                 | [README](https://github.com/ory/sdk/blob/master/clients/client/rust/README.md)       | 

The version of the OpenAPI document: v1.15.12
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

module OryClient
  class Configuration
    # Defines url scheme
    attr_accessor :scheme

    # Defines url host
    attr_accessor :host

    # Defines url base path
    attr_accessor :base_path

    # Define server configuration index
    attr_accessor :server_index

    # Define server operation configuration index
    attr_accessor :server_operation_index

    # Default server variables
    attr_accessor :server_variables

    # Default server operation variables
    attr_accessor :server_operation_variables

    # Defines API keys used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    #
    # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
    #   config.api_key['api_key'] = 'xxx'
    attr_accessor :api_key

    # Defines API key prefixes used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: API key prefix
    #
    # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
    #   config.api_key_prefix['api_key'] = 'Token'
    attr_accessor :api_key_prefix

    # Defines the username used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :username

    # Defines the password used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :password

    # Defines the access token (Bearer) used with OAuth2.
    attr_accessor :access_token

    # Defines a Proc used to fetch or refresh access tokens (Bearer) used with OAuth2.
    # Overrides the access_token if set
    # @return [Proc]
    attr_accessor :access_token_getter

    # Set this to return data as binary instead of downloading a temp file. When enabled (set to true)
    # HTTP responses with return type `File` will be returned as a stream of binary data.
    # Default to false.
    attr_accessor :return_binary_data

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Set this to ignore operation servers for the API client. This is useful when you need to
    # send requests to a different server than the one specified in the OpenAPI document.
    # Will default to the base url defined in the spec but can be overridden by setting
    # `scheme`, `host`, `base_path` directly.
    # Default to false.
    # @return [true, false]
    attr_accessor :ignore_operation_servers

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    attr_accessor :timeout

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl_host

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    #
    # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
    # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
    attr_accessor :ssl_ca_cert

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :cert_file

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :key_file

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    attr_accessor :params_encoding


    attr_accessor :inject_format

    attr_accessor :force_ending_format

    def initialize
      @scheme = 'https'
      @host = 'playground.projects.oryapis.com'
      @base_path = ''
      @server_index = nil
      @server_operation_index = {}
      @server_variables = {}
      @server_operation_variables = {}
      @api_key = {}
      @api_key_prefix = {}
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @cert_file = nil
      @key_file = nil
      @timeout = 0
      @params_encoding = nil
      @debugging = false
      @ignore_operation_servers = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, '')
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, '').split('/').first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = '' if @base_path == '/'
    end

    # Returns base URL for specified operation based on server settings
    def base_url(operation = nil)
      return "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') if ignore_operation_servers
      if operation_server_settings.key?(operation) then
        index = server_operation_index.fetch(operation, server_index)
        server_url(index.nil? ? 0 : index, server_operation_variables.fetch(operation, server_variables), operation_server_settings[operation])
      else
        server_index.nil? ? "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') : server_url(server_index, server_variables, nil)
      end
    end

    # Gets API key (with prefix if set).
    # @param [String] param_name the parameter name of API key auth
    def api_key_with_prefix(param_name, param_alias = nil)
      key = @api_key[param_name]
      key = @api_key.fetch(param_alias, key) unless param_alias.nil?
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{key}"
      else
        key
      end
    end

    # Gets access_token using access_token_getter or uses the static access_token
    def access_token_with_refresh
      return access_token if access_token_getter.nil?
      access_token_getter.call
    end

    # Gets Basic Auth token string
    def basic_auth_token
      'Basic ' + ["#{username}:#{password}"].pack('m').delete("\r\n")
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      {
        'basic' =>
          {
            type: 'basic',
            in: 'header',
            key: 'Authorization',
            value: basic_auth_token
          },
        'bearer' =>
          {
            type: 'bearer',
            in: 'header',
            key: 'Authorization',
            value: "Bearer #{access_token_with_refresh}"
          },
        'oauth2' =>
          {
            type: 'oauth2',
            in: 'header',
            key: 'Authorization',
            value: "Bearer #{access_token_with_refresh}"
          },
        'oryAccessToken' =>
          {
            type: 'bearer',
            in: 'header',
            key: 'Authorization',
            value: "Bearer #{access_token_with_refresh}"
          },
        'oryWorkspaceApiKey' =>
          {
            type: 'bearer',
            in: 'header',
            key: 'Authorization',
            value: "Bearer #{access_token_with_refresh}"
          },
      }
    end

    # Returns an array of Server setting
    def server_settings
      [
        {
          url: "https://{project_slug}.projects.oryapis.com",
          description: "No description provided",
          variables: {
            project_slug: {
                description: "Your Ory Network Project slug. You can find it in the [Ory Network Console](https://console.ory.sh/projects/current/developers/guides).",
                default_value: "playground",
              }
            }
        }
      ]
    end

    def operation_server_settings
      {
        "EventsApi.create_event_stream": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "EventsApi.delete_event_stream": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "EventsApi.list_event_streams": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "EventsApi.set_event_stream": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.create_organization": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.create_project": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.create_project_api_key": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.delete_organization": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.delete_project_api_key": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.get_organization": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.get_project": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.get_project_members": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.list_organizations": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.list_project_api_keys": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.list_projects": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.patch_project": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.patch_project_with_revision": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.purge_project": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.remove_project_member": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.set_project": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "ProjectApi.update_organization": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.create_workspace": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.create_workspace_api_key": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.delete_workspace_api_key": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.get_workspace": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.list_workspace_api_keys": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.list_workspace_projects": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.list_workspaces": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
        "WorkspaceApi.update_workspace": [
          {
          url: "https://api.console.ory.sh",
          description: "The Ory Network control plane API which is used to manage your Ory Network projects and workspaces.",
          }
        ],
      }
    end

    # Returns URL based on server settings
    #
    # @param index array index of the server settings
    # @param variables hash of variable and the corresponding value
    def server_url(index, variables = {}, servers = nil)
      servers = server_settings if servers == nil

      # check array index out of bound
      if (index.nil? || index < 0 || index >= servers.size)
        fail ArgumentError, "Invalid index #{index} when selecting the server. Must not be nil and must be less than #{servers.size}"
      end

      server = servers[index]
      url = server[:url]

      return url unless server.key? :variables

      # go through variable and assign a value
      server[:variables].each do |name, variable|
        if variables.key?(name)
          if (!server[:variables][name].key?(:enum_values) || server[:variables][name][:enum_values].include?(variables[name]))
            url.gsub! "{" + name.to_s + "}", variables[name]
          else
            fail ArgumentError, "The variable `#{name}` in the server URL has invalid value #{variables[name]}. Must be #{server[:variables][name][:enum_values]}."
          end
        else
          # use default value
          url.gsub! "{" + name.to_s + "}", server[:variables][name][:default_value]
        end
      end

      url
    end


  end
end
