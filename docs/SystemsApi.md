# SpaceRubyTraderClient::SystemsApi

All URIs are relative to *https://api.spacetraders.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_construction**](SystemsApi.md#get_construction) | **GET** /systems/{systemSymbol}/waypoints/{waypointSymbol}/construction | Get Construction Site |
| [**get_jump_gate**](SystemsApi.md#get_jump_gate) | **GET** /systems/{systemSymbol}/waypoints/{waypointSymbol}/jump-gate | Get Jump Gate |
| [**get_market**](SystemsApi.md#get_market) | **GET** /systems/{systemSymbol}/waypoints/{waypointSymbol}/market | Get Market |
| [**get_shipyard**](SystemsApi.md#get_shipyard) | **GET** /systems/{systemSymbol}/waypoints/{waypointSymbol}/shipyard | Get Shipyard |
| [**get_system**](SystemsApi.md#get_system) | **GET** /systems/{systemSymbol} | Get System |
| [**get_system_waypoints**](SystemsApi.md#get_system_waypoints) | **GET** /systems/{systemSymbol}/waypoints | List Waypoints in System |
| [**get_systems**](SystemsApi.md#get_systems) | **GET** /systems | List Systems |
| [**get_waypoint**](SystemsApi.md#get_waypoint) | **GET** /systems/{systemSymbol}/waypoints/{waypointSymbol} | Get Waypoint |
| [**supply_construction**](SystemsApi.md#supply_construction) | **POST** /systems/{systemSymbol}/waypoints/{waypointSymbol}/construction/supply | Supply Construction Site |


## get_construction

> <GetConstruction200Response> get_construction(system_symbol, waypoint_symbol)

Get Construction Site

Get construction details for a waypoint. Requires a waypoint with a property of `isUnderConstruction` to be true.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol
waypoint_symbol = 'waypoint_symbol_example' # String | The waypoint symbol

begin
  # Get Construction Site
  result = api_instance.get_construction(system_symbol, waypoint_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_construction: #{e}"
end
```

#### Using the get_construction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConstruction200Response>, Integer, Hash)> get_construction_with_http_info(system_symbol, waypoint_symbol)

```ruby
begin
  # Get Construction Site
  data, status_code, headers = api_instance.get_construction_with_http_info(system_symbol, waypoint_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConstruction200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_construction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol |  |
| **waypoint_symbol** | **String** | The waypoint symbol |  |

### Return type

[**GetConstruction200Response**](GetConstruction200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jump_gate

> <GetJumpGate200Response> get_jump_gate(system_symbol, waypoint_symbol)

Get Jump Gate

Get jump gate details for a waypoint. Requires a waypoint of type `JUMP_GATE` to use.  Waypoints connected to this jump gate can be 

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol
waypoint_symbol = 'waypoint_symbol_example' # String | The waypoint symbol

begin
  # Get Jump Gate
  result = api_instance.get_jump_gate(system_symbol, waypoint_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_jump_gate: #{e}"
end
```

#### Using the get_jump_gate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetJumpGate200Response>, Integer, Hash)> get_jump_gate_with_http_info(system_symbol, waypoint_symbol)

```ruby
begin
  # Get Jump Gate
  data, status_code, headers = api_instance.get_jump_gate_with_http_info(system_symbol, waypoint_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetJumpGate200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_jump_gate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol |  |
| **waypoint_symbol** | **String** | The waypoint symbol |  |

### Return type

[**GetJumpGate200Response**](GetJumpGate200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_market

> <GetMarket200Response> get_market(system_symbol, waypoint_symbol)

Get Market

Retrieve imports, exports and exchange data from a marketplace. Requires a waypoint that has the `Marketplace` trait to use.  Send a ship to the waypoint to access trade good prices and recent transactions. Refer to the [Market Overview page](https://docs.spacetraders.io/game-concepts/markets) to gain better a understanding of the market in the game.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol
waypoint_symbol = 'waypoint_symbol_example' # String | The waypoint symbol

begin
  # Get Market
  result = api_instance.get_market(system_symbol, waypoint_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_market: #{e}"
end
```

#### Using the get_market_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMarket200Response>, Integer, Hash)> get_market_with_http_info(system_symbol, waypoint_symbol)

```ruby
begin
  # Get Market
  data, status_code, headers = api_instance.get_market_with_http_info(system_symbol, waypoint_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMarket200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_market_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol |  |
| **waypoint_symbol** | **String** | The waypoint symbol |  |

### Return type

[**GetMarket200Response**](GetMarket200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shipyard

> <GetShipyard200Response> get_shipyard(system_symbol, waypoint_symbol)

Get Shipyard

Get the shipyard for a waypoint. Requires a waypoint that has the `Shipyard` trait to use. Send a ship to the waypoint to access data on ships that are currently available for purchase and recent transactions.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol
waypoint_symbol = 'waypoint_symbol_example' # String | The waypoint symbol

begin
  # Get Shipyard
  result = api_instance.get_shipyard(system_symbol, waypoint_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_shipyard: #{e}"
end
```

#### Using the get_shipyard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShipyard200Response>, Integer, Hash)> get_shipyard_with_http_info(system_symbol, waypoint_symbol)

```ruby
begin
  # Get Shipyard
  data, status_code, headers = api_instance.get_shipyard_with_http_info(system_symbol, waypoint_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShipyard200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_shipyard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol |  |
| **waypoint_symbol** | **String** | The waypoint symbol |  |

### Return type

[**GetShipyard200Response**](GetShipyard200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_system

> <GetSystem200Response> get_system(system_symbol)

Get System

Get the details of a system.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol

begin
  # Get System
  result = api_instance.get_system(system_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_system: #{e}"
end
```

#### Using the get_system_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSystem200Response>, Integer, Hash)> get_system_with_http_info(system_symbol)

```ruby
begin
  # Get System
  data, status_code, headers = api_instance.get_system_with_http_info(system_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSystem200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_system_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol | [default to 'X1-OE'] |

### Return type

[**GetSystem200Response**](GetSystem200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_system_waypoints

> <GetSystemWaypoints200Response> get_system_waypoints(system_symbol, opts)

List Waypoints in System

Return a paginated list of all of the waypoints for a given system.  If a waypoint is uncharted, it will return the `Uncharted` trait instead of its actual traits.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol
opts = {
  page: 56, # Integer | What entry offset to request
  limit: 56, # Integer | How many entries to return per page
  type: SpaceRubyTraderClient::WaypointType::PLANET, # WaypointType | Filter waypoints by type.
  traits: nil # GetSystemWaypointsTraitsParameter | Filter waypoints by one or more traits.
}

begin
  # List Waypoints in System
  result = api_instance.get_system_waypoints(system_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_system_waypoints: #{e}"
end
```

#### Using the get_system_waypoints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSystemWaypoints200Response>, Integer, Hash)> get_system_waypoints_with_http_info(system_symbol, opts)

```ruby
begin
  # List Waypoints in System
  data, status_code, headers = api_instance.get_system_waypoints_with_http_info(system_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSystemWaypoints200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_system_waypoints_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol |  |
| **page** | **Integer** | What entry offset to request | [optional][default to 1] |
| **limit** | **Integer** | How many entries to return per page | [optional][default to 10] |
| **type** | [**WaypointType**](.md) | Filter waypoints by type. | [optional] |
| **traits** | [**GetSystemWaypointsTraitsParameter**](.md) | Filter waypoints by one or more traits. | [optional] |

### Return type

[**GetSystemWaypoints200Response**](GetSystemWaypoints200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_systems

> <GetSystems200Response> get_systems(opts)

List Systems

Return a paginated list of all systems.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
opts = {
  page: 56, # Integer | What entry offset to request
  limit: 56 # Integer | How many entries to return per page
}

begin
  # List Systems
  result = api_instance.get_systems(opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_systems: #{e}"
end
```

#### Using the get_systems_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSystems200Response>, Integer, Hash)> get_systems_with_http_info(opts)

```ruby
begin
  # List Systems
  data, status_code, headers = api_instance.get_systems_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSystems200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_systems_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | What entry offset to request | [optional][default to 1] |
| **limit** | **Integer** | How many entries to return per page | [optional][default to 10] |

### Return type

[**GetSystems200Response**](GetSystems200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_waypoint

> <GetWaypoint200Response> get_waypoint(system_symbol, waypoint_symbol)

Get Waypoint

View the details of a waypoint.  If the waypoint is uncharted, it will return the 'Uncharted' trait instead of its actual traits.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol
waypoint_symbol = 'waypoint_symbol_example' # String | The waypoint symbol

begin
  # Get Waypoint
  result = api_instance.get_waypoint(system_symbol, waypoint_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_waypoint: #{e}"
end
```

#### Using the get_waypoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWaypoint200Response>, Integer, Hash)> get_waypoint_with_http_info(system_symbol, waypoint_symbol)

```ruby
begin
  # Get Waypoint
  data, status_code, headers = api_instance.get_waypoint_with_http_info(system_symbol, waypoint_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWaypoint200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->get_waypoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol |  |
| **waypoint_symbol** | **String** | The waypoint symbol |  |

### Return type

[**GetWaypoint200Response**](GetWaypoint200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## supply_construction

> <SupplyConstruction201Response> supply_construction(system_symbol, waypoint_symbol, opts)

Supply Construction Site

Supply a construction site with the specified good. Requires a waypoint with a property of `isUnderConstruction` to be true.  The good must be in your ship's cargo. The good will be removed from your ship's cargo and added to the construction site's materials.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::SystemsApi.new
system_symbol = 'system_symbol_example' # String | The system symbol
waypoint_symbol = 'waypoint_symbol_example' # String | The waypoint symbol
opts = {
  supply_construction_request: SpaceRubyTraderClient::SupplyConstructionRequest.new({ship_symbol: 'ship_symbol_example', trade_symbol: 'trade_symbol_example', units: 37}) # SupplyConstructionRequest | 
}

begin
  # Supply Construction Site
  result = api_instance.supply_construction(system_symbol, waypoint_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->supply_construction: #{e}"
end
```

#### Using the supply_construction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SupplyConstruction201Response>, Integer, Hash)> supply_construction_with_http_info(system_symbol, waypoint_symbol, opts)

```ruby
begin
  # Supply Construction Site
  data, status_code, headers = api_instance.supply_construction_with_http_info(system_symbol, waypoint_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SupplyConstruction201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling SystemsApi->supply_construction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_symbol** | **String** | The system symbol |  |
| **waypoint_symbol** | **String** | The waypoint symbol |  |
| **supply_construction_request** | [**SupplyConstructionRequest**](SupplyConstructionRequest.md) |  | [optional] |

### Return type

[**SupplyConstruction201Response**](SupplyConstruction201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

