# SpaceRubyTraderClient::FactionsApi

All URIs are relative to *https://api.spacetraders.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_faction**](FactionsApi.md#get_faction) | **GET** /factions/{factionSymbol} | Get Faction |
| [**get_factions**](FactionsApi.md#get_factions) | **GET** /factions | List Factions |


## get_faction

> <GetFaction200Response> get_faction(faction_symbol)

Get Faction

View the details of a faction.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FactionsApi.new
faction_symbol = 'COSMIC' # String | The faction symbol

begin
  # Get Faction
  result = api_instance.get_faction(faction_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FactionsApi->get_faction: #{e}"
end
```

#### Using the get_faction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFaction200Response>, Integer, Hash)> get_faction_with_http_info(faction_symbol)

```ruby
begin
  # Get Faction
  data, status_code, headers = api_instance.get_faction_with_http_info(faction_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFaction200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FactionsApi->get_faction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **faction_symbol** | **String** | The faction symbol |  |

### Return type

[**GetFaction200Response**](GetFaction200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_factions

> <GetFactions200Response> get_factions(opts)

List Factions

Return a paginated list of all the factions in the game.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FactionsApi.new
opts = {
  page: 56, # Integer | What entry offset to request
  limit: 56 # Integer | How many entries to return per page
}

begin
  # List Factions
  result = api_instance.get_factions(opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FactionsApi->get_factions: #{e}"
end
```

#### Using the get_factions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFactions200Response>, Integer, Hash)> get_factions_with_http_info(opts)

```ruby
begin
  # List Factions
  data, status_code, headers = api_instance.get_factions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFactions200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FactionsApi->get_factions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | What entry offset to request | [optional][default to 1] |
| **limit** | **Integer** | How many entries to return per page | [optional][default to 10] |

### Return type

[**GetFactions200Response**](GetFactions200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

