# SpaceRubyTraderClient::DefaultApi

All URIs are relative to *https://api.spacetraders.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_status**](DefaultApi.md#get_status) | **GET** / | Get Status |
| [**register**](DefaultApi.md#register) | **POST** /register | Register New Agent |


## get_status

> <GetStatus200Response> get_status

Get Status

Return the status of the game server. This also includes a few global elements, such as announcements, server reset dates and leaderboards.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::DefaultApi.new

begin
  # Get Status
  result = api_instance.get_status
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling DefaultApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatus200Response>, Integer, Hash)> get_status_with_http_info

```ruby
begin
  # Get Status
  data, status_code, headers = api_instance.get_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatus200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling DefaultApi->get_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetStatus200Response**](GetStatus200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register

> <Register201Response> register(opts)

Register New Agent

Creates a new agent and ties it to an account.  The agent symbol must consist of a 3-14 character string, and will be used to represent your agent. This symbol will prefix the symbol of every ship you own. Agent symbols will be cast to all uppercase characters.  This new agent will be tied to a starting faction of your choice, which determines your starting location, and will be granted an authorization token, a contract with their starting faction, a command ship that can fly across space with advanced capabilities, a small probe ship that can be used for reconnaissance, and 150,000 credits.  > #### Keep your token safe and secure > > Save your token during the alpha phase. There is no way to regenerate this token without starting a new agent. In the future you will be able to generate and manage your tokens from the SpaceTraders website.  If you are new to SpaceTraders, It is recommended to register with the COSMIC faction, a faction that is well connected to the rest of the universe. After registering, you should try our interactive [quickstart guide](https://docs.spacetraders.io/quickstart/new-game) which will walk you through basic API requests in just a few minutes.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'

api_instance = SpaceRubyTraderClient::DefaultApi.new
opts = {
  register_request: SpaceRubyTraderClient::RegisterRequest.new({faction: SpaceRubyTraderClient::FactionSymbol::COSMIC, symbol: 'BADGER'}) # RegisterRequest | 
}

begin
  # Register New Agent
  result = api_instance.register(opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling DefaultApi->register: #{e}"
end
```

#### Using the register_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Register201Response>, Integer, Hash)> register_with_http_info(opts)

```ruby
begin
  # Register New Agent
  data, status_code, headers = api_instance.register_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Register201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling DefaultApi->register_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **register_request** | [**RegisterRequest**](RegisterRequest.md) |  | [optional] |

### Return type

[**Register201Response**](Register201Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

