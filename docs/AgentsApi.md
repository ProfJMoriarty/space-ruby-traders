# SpaceRubyTraderClient::AgentsApi

All URIs are relative to *https://api.spacetraders.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_agent**](AgentsApi.md#get_agent) | **GET** /agents/{agentSymbol} | Get Public Agent |
| [**get_agents**](AgentsApi.md#get_agents) | **GET** /agents | List Agents |
| [**get_my_agent**](AgentsApi.md#get_my_agent) | **GET** /my/agent | Get Agent |


## get_agent

> <GetMyAgent200Response> get_agent(agent_symbol)

Get Public Agent

Fetch agent details.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::AgentsApi.new
agent_symbol = 'agent_symbol_example' # String | The agent symbol

begin
  # Get Public Agent
  result = api_instance.get_agent(agent_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling AgentsApi->get_agent: #{e}"
end
```

#### Using the get_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMyAgent200Response>, Integer, Hash)> get_agent_with_http_info(agent_symbol)

```ruby
begin
  # Get Public Agent
  data, status_code, headers = api_instance.get_agent_with_http_info(agent_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMyAgent200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling AgentsApi->get_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_symbol** | **String** | The agent symbol | [default to 'FEBA66'] |

### Return type

[**GetMyAgent200Response**](GetMyAgent200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_agents

> <GetAgents200Response> get_agents(opts)

List Agents

Fetch agents details.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::AgentsApi.new
opts = {
  page: 56, # Integer | What entry offset to request
  limit: 56 # Integer | How many entries to return per page
}

begin
  # List Agents
  result = api_instance.get_agents(opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling AgentsApi->get_agents: #{e}"
end
```

#### Using the get_agents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAgents200Response>, Integer, Hash)> get_agents_with_http_info(opts)

```ruby
begin
  # List Agents
  data, status_code, headers = api_instance.get_agents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAgents200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling AgentsApi->get_agents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | What entry offset to request | [optional][default to 1] |
| **limit** | **Integer** | How many entries to return per page | [optional][default to 10] |

### Return type

[**GetAgents200Response**](GetAgents200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_my_agent

> <GetMyAgent200Response> get_my_agent

Get Agent

Fetch your agent's details.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::AgentsApi.new

begin
  # Get Agent
  result = api_instance.get_my_agent
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling AgentsApi->get_my_agent: #{e}"
end
```

#### Using the get_my_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMyAgent200Response>, Integer, Hash)> get_my_agent_with_http_info

```ruby
begin
  # Get Agent
  data, status_code, headers = api_instance.get_my_agent_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMyAgent200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling AgentsApi->get_my_agent_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetMyAgent200Response**](GetMyAgent200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

