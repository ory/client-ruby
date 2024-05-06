# OryClient::CreateProjectBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | **String** | The environment of the project. prod Production stage Staging dev Development |  |
| **name** | **String** | The name of the project to be created |  |
| **workspace_id** | **String** | The workspace to create the project in. | [optional] |

## Example

```ruby
require 'ory-client'

instance = OryClient::CreateProjectBody.new(
  environment: null,
  name: null,
  workspace_id: null
)
```

