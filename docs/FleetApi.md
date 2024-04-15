# SpaceRubyTraderClient::FleetApi

All URIs are relative to *https://api.spacetraders.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_chart**](FleetApi.md#create_chart) | **POST** /my/ships/{shipSymbol}/chart | Create Chart |
| [**create_ship_ship_scan**](FleetApi.md#create_ship_ship_scan) | **POST** /my/ships/{shipSymbol}/scan/ships | Scan Ships |
| [**create_ship_system_scan**](FleetApi.md#create_ship_system_scan) | **POST** /my/ships/{shipSymbol}/scan/systems | Scan Systems |
| [**create_ship_waypoint_scan**](FleetApi.md#create_ship_waypoint_scan) | **POST** /my/ships/{shipSymbol}/scan/waypoints | Scan Waypoints |
| [**create_survey**](FleetApi.md#create_survey) | **POST** /my/ships/{shipSymbol}/survey | Create Survey |
| [**dock_ship**](FleetApi.md#dock_ship) | **POST** /my/ships/{shipSymbol}/dock | Dock Ship |
| [**extract_resources**](FleetApi.md#extract_resources) | **POST** /my/ships/{shipSymbol}/extract | Extract Resources |
| [**extract_resources_with_survey**](FleetApi.md#extract_resources_with_survey) | **POST** /my/ships/{shipSymbol}/extract/survey | Extract Resources with Survey |
| [**get_mounts**](FleetApi.md#get_mounts) | **GET** /my/ships/{shipSymbol}/mounts | Get Mounts |
| [**get_my_ship**](FleetApi.md#get_my_ship) | **GET** /my/ships/{shipSymbol} | Get Ship |
| [**get_my_ship_cargo**](FleetApi.md#get_my_ship_cargo) | **GET** /my/ships/{shipSymbol}/cargo | Get Ship Cargo |
| [**get_my_ships**](FleetApi.md#get_my_ships) | **GET** /my/ships | List Ships |
| [**get_repair_ship**](FleetApi.md#get_repair_ship) | **GET** /my/ships/{shipSymbol}/repair | Get Repair Ship |
| [**get_scrap_ship**](FleetApi.md#get_scrap_ship) | **GET** /my/ships/{shipSymbol}/scrap | Get Scrap Ship |
| [**get_ship_cooldown**](FleetApi.md#get_ship_cooldown) | **GET** /my/ships/{shipSymbol}/cooldown | Get Ship Cooldown |
| [**get_ship_nav**](FleetApi.md#get_ship_nav) | **GET** /my/ships/{shipSymbol}/nav | Get Ship Nav |
| [**install_mount**](FleetApi.md#install_mount) | **POST** /my/ships/{shipSymbol}/mounts/install | Install Mount |
| [**jettison**](FleetApi.md#jettison) | **POST** /my/ships/{shipSymbol}/jettison | Jettison Cargo |
| [**jump_ship**](FleetApi.md#jump_ship) | **POST** /my/ships/{shipSymbol}/jump | Jump Ship |
| [**navigate_ship**](FleetApi.md#navigate_ship) | **POST** /my/ships/{shipSymbol}/navigate | Navigate Ship |
| [**negotiate_contract**](FleetApi.md#negotiate_contract) | **POST** /my/ships/{shipSymbol}/negotiate/contract | Negotiate Contract |
| [**orbit_ship**](FleetApi.md#orbit_ship) | **POST** /my/ships/{shipSymbol}/orbit | Orbit Ship |
| [**patch_ship_nav**](FleetApi.md#patch_ship_nav) | **PATCH** /my/ships/{shipSymbol}/nav | Patch Ship Nav |
| [**purchase_cargo**](FleetApi.md#purchase_cargo) | **POST** /my/ships/{shipSymbol}/purchase | Purchase Cargo |
| [**purchase_ship**](FleetApi.md#purchase_ship) | **POST** /my/ships | Purchase Ship |
| [**refuel_ship**](FleetApi.md#refuel_ship) | **POST** /my/ships/{shipSymbol}/refuel | Refuel Ship |
| [**remove_mount**](FleetApi.md#remove_mount) | **POST** /my/ships/{shipSymbol}/mounts/remove | Remove Mount |
| [**repair_ship**](FleetApi.md#repair_ship) | **POST** /my/ships/{shipSymbol}/repair | Repair Ship |
| [**scrap_ship**](FleetApi.md#scrap_ship) | **POST** /my/ships/{shipSymbol}/scrap | Scrap Ship |
| [**sell_cargo**](FleetApi.md#sell_cargo) | **POST** /my/ships/{shipSymbol}/sell | Sell Cargo |
| [**ship_refine**](FleetApi.md#ship_refine) | **POST** /my/ships/{shipSymbol}/refine | Ship Refine |
| [**siphon_resources**](FleetApi.md#siphon_resources) | **POST** /my/ships/{shipSymbol}/siphon | Siphon Resources |
| [**transfer_cargo**](FleetApi.md#transfer_cargo) | **POST** /my/ships/{shipSymbol}/transfer | Transfer Cargo |
| [**warp_ship**](FleetApi.md#warp_ship) | **POST** /my/ships/{shipSymbol}/warp | Warp Ship |


## create_chart

> <CreateChart201Response> create_chart(ship_symbol)

Create Chart

Command a ship to chart the waypoint at its current location.  Most waypoints in the universe are uncharted by default. These waypoints have their traits hidden until they have been charted by a ship.  Charting a waypoint will record your agent as the one who created the chart, and all other agents would also be able to see the waypoint's traits.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.

begin
  # Create Chart
  result = api_instance.create_chart(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_chart: #{e}"
end
```

#### Using the create_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateChart201Response>, Integer, Hash)> create_chart_with_http_info(ship_symbol)

```ruby
begin
  # Create Chart
  data, status_code, headers = api_instance.create_chart_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateChart201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |

### Return type

[**CreateChart201Response**](CreateChart201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ship_ship_scan

> <CreateShipShipScan201Response> create_ship_ship_scan(ship_symbol)

Scan Ships

Scan for nearby ships, retrieving information for all ships in range.  Requires a ship to have the `Sensor Array` mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Scan Ships
  result = api_instance.create_ship_ship_scan(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_ship_ship_scan: #{e}"
end
```

#### Using the create_ship_ship_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateShipShipScan201Response>, Integer, Hash)> create_ship_ship_scan_with_http_info(ship_symbol)

```ruby
begin
  # Scan Ships
  data, status_code, headers = api_instance.create_ship_ship_scan_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateShipShipScan201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_ship_ship_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**CreateShipShipScan201Response**](CreateShipShipScan201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ship_system_scan

> <CreateShipSystemScan201Response> create_ship_system_scan(ship_symbol)

Scan Systems

Scan for nearby systems, retrieving information on the systems' distance from the ship and their waypoints. Requires a ship to have the `Sensor Array` mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Scan Systems
  result = api_instance.create_ship_system_scan(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_ship_system_scan: #{e}"
end
```

#### Using the create_ship_system_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateShipSystemScan201Response>, Integer, Hash)> create_ship_system_scan_with_http_info(ship_symbol)

```ruby
begin
  # Scan Systems
  data, status_code, headers = api_instance.create_ship_system_scan_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateShipSystemScan201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_ship_system_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**CreateShipSystemScan201Response**](CreateShipSystemScan201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ship_waypoint_scan

> <CreateShipWaypointScan201Response> create_ship_waypoint_scan(ship_symbol)

Scan Waypoints

Scan for nearby waypoints, retrieving detailed information on each waypoint in range. Scanning uncharted waypoints will allow you to ignore their uncharted state and will list the waypoints' traits.  Requires a ship to have the `Sensor Array` mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Scan Waypoints
  result = api_instance.create_ship_waypoint_scan(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_ship_waypoint_scan: #{e}"
end
```

#### Using the create_ship_waypoint_scan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateShipWaypointScan201Response>, Integer, Hash)> create_ship_waypoint_scan_with_http_info(ship_symbol)

```ruby
begin
  # Scan Waypoints
  data, status_code, headers = api_instance.create_ship_waypoint_scan_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateShipWaypointScan201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_ship_waypoint_scan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**CreateShipWaypointScan201Response**](CreateShipWaypointScan201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_survey

> <CreateSurvey201Response> create_survey(ship_symbol)

Create Survey

Create surveys on a waypoint that can be extracted such as asteroid fields. A survey focuses on specific types of deposits from the extracted location. When ships extract using this survey, they are guaranteed to procure a high amount of one of the goods in the survey.  In order to use a survey, send the entire survey details in the body of the extract request.  Each survey may have multiple deposits, and if a symbol shows up more than once, that indicates a higher chance of extracting that resource.  Your ship will enter a cooldown after surveying in which it is unable to perform certain actions. Surveys will eventually expire after a period of time or will be exhausted after being extracted several times based on the survey's size. Multiple ships can use the same survey for extraction.  A ship must have the `Surveyor` mount installed in order to use this function.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.

begin
  # Create Survey
  result = api_instance.create_survey(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_survey: #{e}"
end
```

#### Using the create_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSurvey201Response>, Integer, Hash)> create_survey_with_http_info(ship_symbol)

```ruby
begin
  # Create Survey
  data, status_code, headers = api_instance.create_survey_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSurvey201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->create_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |

### Return type

[**CreateSurvey201Response**](CreateSurvey201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dock_ship

> <DockShip200Response> dock_ship(ship_symbol)

Dock Ship

Attempt to dock your ship at its current location. Docking will only succeed if your ship is capable of docking at the time of the request.  Docked ships can access elements in their current location, such as the market or a shipyard, but cannot do actions that require the ship to be above surface such as navigating or extracting.  The endpoint is idempotent - successive calls will succeed even if the ship is already docked.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.

begin
  # Dock Ship
  result = api_instance.dock_ship(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->dock_ship: #{e}"
end
```

#### Using the dock_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DockShip200Response>, Integer, Hash)> dock_ship_with_http_info(ship_symbol)

```ruby
begin
  # Dock Ship
  data, status_code, headers = api_instance.dock_ship_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DockShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->dock_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |

### Return type

[**DockShip200Response**](DockShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_resources

> <ExtractResources201Response> extract_resources(ship_symbol, opts)

Extract Resources

Extract resources from a waypoint that can be extracted, such as asteroid fields, into your ship. Send an optional survey as the payload to target specific yields.  The ship must be in orbit to be able to extract and must have mining equipments installed that can extract goods, such as the `Gas Siphon` mount for gas-based goods or `Mining Laser` mount for ore-based goods.  The survey property is now deprecated. See the `extract/survey` endpoint for more details.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  extract_resources_request: SpaceRubyTraderClient::ExtractResourcesRequest.new # ExtractResourcesRequest | 
}

begin
  # Extract Resources
  result = api_instance.extract_resources(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->extract_resources: #{e}"
end
```

#### Using the extract_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractResources201Response>, Integer, Hash)> extract_resources_with_http_info(ship_symbol, opts)

```ruby
begin
  # Extract Resources
  data, status_code, headers = api_instance.extract_resources_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractResources201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->extract_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **extract_resources_request** | [**ExtractResourcesRequest**](ExtractResourcesRequest.md) |  | [optional] |

### Return type

[**ExtractResources201Response**](ExtractResources201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## extract_resources_with_survey

> <ExtractResources201Response> extract_resources_with_survey(ship_symbol, opts)

Extract Resources with Survey

Use a survey when extracting resources from a waypoint. This endpoint requires a survey as the payload, which allows your ship to extract specific yields.  Send the full survey object as the payload which will be validated according to the signature. If the signature is invalid, or any properties of the survey are changed, the request will fail.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  survey: SpaceRubyTraderClient::Survey.new({signature: 'signature_example', symbol: 'symbol_example', deposits: [SpaceRubyTraderClient::SurveyDeposit.new({symbol: 'symbol_example'})], expiration: Time.now, size: 'SMALL'}) # Survey | 
}

begin
  # Extract Resources with Survey
  result = api_instance.extract_resources_with_survey(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->extract_resources_with_survey: #{e}"
end
```

#### Using the extract_resources_with_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractResources201Response>, Integer, Hash)> extract_resources_with_survey_with_http_info(ship_symbol, opts)

```ruby
begin
  # Extract Resources with Survey
  data, status_code, headers = api_instance.extract_resources_with_survey_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractResources201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->extract_resources_with_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **survey** | [**Survey**](Survey.md) |  | [optional] |

### Return type

[**ExtractResources201Response**](ExtractResources201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_mounts

> <GetMounts200Response> get_mounts(ship_symbol)

Get Mounts

Get the mounts installed on a ship.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship's symbol.

begin
  # Get Mounts
  result = api_instance.get_mounts(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_mounts: #{e}"
end
```

#### Using the get_mounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMounts200Response>, Integer, Hash)> get_mounts_with_http_info(ship_symbol)

```ruby
begin
  # Get Mounts
  data, status_code, headers = api_instance.get_mounts_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMounts200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_mounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship's symbol. |  |

### Return type

[**GetMounts200Response**](GetMounts200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_my_ship

> <GetMyShip200Response> get_my_ship(ship_symbol)

Get Ship

Retrieve the details of a ship under your agent's ownership.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.

begin
  # Get Ship
  result = api_instance.get_my_ship(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_my_ship: #{e}"
end
```

#### Using the get_my_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMyShip200Response>, Integer, Hash)> get_my_ship_with_http_info(ship_symbol)

```ruby
begin
  # Get Ship
  data, status_code, headers = api_instance.get_my_ship_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMyShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_my_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |

### Return type

[**GetMyShip200Response**](GetMyShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_my_ship_cargo

> <GetMyShipCargo200Response> get_my_ship_cargo(ship_symbol)

Get Ship Cargo

Retrieve the cargo of a ship under your agent's ownership.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.

begin
  # Get Ship Cargo
  result = api_instance.get_my_ship_cargo(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_my_ship_cargo: #{e}"
end
```

#### Using the get_my_ship_cargo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMyShipCargo200Response>, Integer, Hash)> get_my_ship_cargo_with_http_info(ship_symbol)

```ruby
begin
  # Get Ship Cargo
  data, status_code, headers = api_instance.get_my_ship_cargo_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMyShipCargo200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_my_ship_cargo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |

### Return type

[**GetMyShipCargo200Response**](GetMyShipCargo200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_my_ships

> <GetMyShips200Response> get_my_ships(opts)

List Ships

Return a paginated list of all of ships under your agent's ownership.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
opts = {
  page: 56, # Integer | What entry offset to request
  limit: 56 # Integer | How many entries to return per page
}

begin
  # List Ships
  result = api_instance.get_my_ships(opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_my_ships: #{e}"
end
```

#### Using the get_my_ships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMyShips200Response>, Integer, Hash)> get_my_ships_with_http_info(opts)

```ruby
begin
  # List Ships
  data, status_code, headers = api_instance.get_my_ships_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMyShips200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_my_ships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | What entry offset to request | [optional][default to 1] |
| **limit** | **Integer** | How many entries to return per page | [optional][default to 10] |

### Return type

[**GetMyShips200Response**](GetMyShips200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repair_ship

> <GetRepairShip200Response> get_repair_ship(ship_symbol)

Get Repair Ship

Get the cost of repairing a ship.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Get Repair Ship
  result = api_instance.get_repair_ship(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_repair_ship: #{e}"
end
```

#### Using the get_repair_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRepairShip200Response>, Integer, Hash)> get_repair_ship_with_http_info(ship_symbol)

```ruby
begin
  # Get Repair Ship
  data, status_code, headers = api_instance.get_repair_ship_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRepairShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_repair_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**GetRepairShip200Response**](GetRepairShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scrap_ship

> <GetScrapShip200Response> get_scrap_ship(ship_symbol)

Get Scrap Ship

Get the amount of value that will be returned when scrapping a ship.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Get Scrap Ship
  result = api_instance.get_scrap_ship(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_scrap_ship: #{e}"
end
```

#### Using the get_scrap_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetScrapShip200Response>, Integer, Hash)> get_scrap_ship_with_http_info(ship_symbol)

```ruby
begin
  # Get Scrap Ship
  data, status_code, headers = api_instance.get_scrap_ship_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetScrapShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_scrap_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**GetScrapShip200Response**](GetScrapShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ship_cooldown

> <GetShipCooldown200Response> get_ship_cooldown(ship_symbol)

Get Ship Cooldown

Retrieve the details of your ship's reactor cooldown. Some actions such as activating your jump drive, scanning, or extracting resources taxes your reactor and results in a cooldown.  Your ship cannot perform additional actions until your cooldown has expired. The duration of your cooldown is relative to the power consumption of the related modules or mounts for the action taken.  Response returns a 204 status code (no-content) when the ship has no cooldown.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.

begin
  # Get Ship Cooldown
  result = api_instance.get_ship_cooldown(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_ship_cooldown: #{e}"
end
```

#### Using the get_ship_cooldown_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShipCooldown200Response>, Integer, Hash)> get_ship_cooldown_with_http_info(ship_symbol)

```ruby
begin
  # Get Ship Cooldown
  data, status_code, headers = api_instance.get_ship_cooldown_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShipCooldown200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_ship_cooldown_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |

### Return type

[**GetShipCooldown200Response**](GetShipCooldown200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ship_nav

> <GetShipNav200Response> get_ship_nav(ship_symbol)

Get Ship Nav

Get the current nav status of a ship.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Get Ship Nav
  result = api_instance.get_ship_nav(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_ship_nav: #{e}"
end
```

#### Using the get_ship_nav_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShipNav200Response>, Integer, Hash)> get_ship_nav_with_http_info(ship_symbol)

```ruby
begin
  # Get Ship Nav
  data, status_code, headers = api_instance.get_ship_nav_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShipNav200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->get_ship_nav_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**GetShipNav200Response**](GetShipNav200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## install_mount

> <InstallMount201Response> install_mount(ship_symbol, opts)

Install Mount

Install a mount on a ship.  In order to install a mount, the ship must be docked and located in a waypoint that has a `Shipyard` trait. The ship also must have the mount to install in its cargo hold.  An installation fee will be deduced by the Shipyard for installing the mount on the ship. 

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship's symbol.
opts = {
  install_mount_request: SpaceRubyTraderClient::InstallMountRequest.new({symbol: 'symbol_example'}) # InstallMountRequest | 
}

begin
  # Install Mount
  result = api_instance.install_mount(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->install_mount: #{e}"
end
```

#### Using the install_mount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstallMount201Response>, Integer, Hash)> install_mount_with_http_info(ship_symbol, opts)

```ruby
begin
  # Install Mount
  data, status_code, headers = api_instance.install_mount_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstallMount201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->install_mount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship's symbol. |  |
| **install_mount_request** | [**InstallMountRequest**](InstallMountRequest.md) |  | [optional] |

### Return type

[**InstallMount201Response**](InstallMount201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## jettison

> <Jettison200Response> jettison(ship_symbol, opts)

Jettison Cargo

Jettison cargo from your ship's cargo hold.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  jettison_request: SpaceRubyTraderClient::JettisonRequest.new({symbol: SpaceRubyTraderClient::TradeSymbol::PRECIOUS_STONES, units: 37}) # JettisonRequest | 
}

begin
  # Jettison Cargo
  result = api_instance.jettison(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->jettison: #{e}"
end
```

#### Using the jettison_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Jettison200Response>, Integer, Hash)> jettison_with_http_info(ship_symbol, opts)

```ruby
begin
  # Jettison Cargo
  data, status_code, headers = api_instance.jettison_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Jettison200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->jettison_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **jettison_request** | [**JettisonRequest**](JettisonRequest.md) |  | [optional] |

### Return type

[**Jettison200Response**](Jettison200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## jump_ship

> <JumpShip200Response> jump_ship(ship_symbol, opts)

Jump Ship

Jump your ship instantly to a target connected waypoint. The ship must be in orbit to execute a jump.  A unit of antimatter is purchased and consumed from the market when jumping. The price of antimatter is determined by the market and is subject to change. A ship can only jump to connected waypoints

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  jump_ship_request: SpaceRubyTraderClient::JumpShipRequest.new({waypoint_symbol: 'waypoint_symbol_example'}) # JumpShipRequest | 
}

begin
  # Jump Ship
  result = api_instance.jump_ship(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->jump_ship: #{e}"
end
```

#### Using the jump_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JumpShip200Response>, Integer, Hash)> jump_ship_with_http_info(ship_symbol, opts)

```ruby
begin
  # Jump Ship
  data, status_code, headers = api_instance.jump_ship_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JumpShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->jump_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **jump_ship_request** | [**JumpShipRequest**](JumpShipRequest.md) |  | [optional] |

### Return type

[**JumpShip200Response**](JumpShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## navigate_ship

> <NavigateShip200Response> navigate_ship(ship_symbol, opts)

Navigate Ship

Navigate to a target destination. The ship must be in orbit to use this function. The destination waypoint must be within the same system as the ship's current location. Navigating will consume the necessary fuel from the ship's manifest based on the distance to the target waypoint.  The returned response will detail the route information including the expected time of arrival. Most ship actions are unavailable until the ship has arrived at it's destination.  To travel between systems, see the ship's Warp or Jump actions.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  navigate_ship_request: SpaceRubyTraderClient::NavigateShipRequest.new({waypoint_symbol: 'waypoint_symbol_example'}) # NavigateShipRequest | 
}

begin
  # Navigate Ship
  result = api_instance.navigate_ship(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->navigate_ship: #{e}"
end
```

#### Using the navigate_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NavigateShip200Response>, Integer, Hash)> navigate_ship_with_http_info(ship_symbol, opts)

```ruby
begin
  # Navigate Ship
  data, status_code, headers = api_instance.navigate_ship_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NavigateShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->navigate_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **navigate_ship_request** | [**NavigateShipRequest**](NavigateShipRequest.md) |  | [optional] |

### Return type

[**NavigateShip200Response**](NavigateShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## negotiate_contract

> <NegotiateContract200Response> negotiate_contract(ship_symbol)

Negotiate Contract

Negotiate a new contract with the HQ.  In order to negotiate a new contract, an agent must not have ongoing or offered contracts over the allowed maximum amount. Currently the maximum contracts an agent can have at a time is 1.  Once a contract is negotiated, it is added to the list of contracts offered to the agent, which the agent can then accept.   The ship must be present at any waypoint with a faction present to negotiate a contract with that faction.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship's symbol.

begin
  # Negotiate Contract
  result = api_instance.negotiate_contract(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->negotiate_contract: #{e}"
end
```

#### Using the negotiate_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NegotiateContract200Response>, Integer, Hash)> negotiate_contract_with_http_info(ship_symbol)

```ruby
begin
  # Negotiate Contract
  data, status_code, headers = api_instance.negotiate_contract_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NegotiateContract200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->negotiate_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship's symbol. |  |

### Return type

[**NegotiateContract200Response**](NegotiateContract200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orbit_ship

> <OrbitShip200Response> orbit_ship(ship_symbol)

Orbit Ship

Attempt to move your ship into orbit at its current location. The request will only succeed if your ship is capable of moving into orbit at the time of the request.  Orbiting ships are able to do actions that require the ship to be above surface such as navigating or extracting, but cannot access elements in their current waypoint, such as the market or a shipyard.  The endpoint is idempotent - successive calls will succeed even if the ship is already in orbit.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.

begin
  # Orbit Ship
  result = api_instance.orbit_ship(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->orbit_ship: #{e}"
end
```

#### Using the orbit_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrbitShip200Response>, Integer, Hash)> orbit_ship_with_http_info(ship_symbol)

```ruby
begin
  # Orbit Ship
  data, status_code, headers = api_instance.orbit_ship_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrbitShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->orbit_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |

### Return type

[**OrbitShip200Response**](OrbitShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_ship_nav

> <GetShipNav200Response> patch_ship_nav(ship_symbol, opts)

Patch Ship Nav

Update the nav configuration of a ship.  Currently only supports configuring the Flight Mode of the ship, which affects its speed and fuel consumption.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  patch_ship_nav_request: SpaceRubyTraderClient::PatchShipNavRequest.new # PatchShipNavRequest | 
}

begin
  # Patch Ship Nav
  result = api_instance.patch_ship_nav(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->patch_ship_nav: #{e}"
end
```

#### Using the patch_ship_nav_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShipNav200Response>, Integer, Hash)> patch_ship_nav_with_http_info(ship_symbol, opts)

```ruby
begin
  # Patch Ship Nav
  data, status_code, headers = api_instance.patch_ship_nav_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShipNav200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->patch_ship_nav_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **patch_ship_nav_request** | [**PatchShipNavRequest**](PatchShipNavRequest.md) |  | [optional] |

### Return type

[**GetShipNav200Response**](GetShipNav200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## purchase_cargo

> <PurchaseCargo201Response> purchase_cargo(ship_symbol, opts)

Purchase Cargo

Purchase cargo from a market.  The ship must be docked in a waypoint that has `Marketplace` trait, and the market must be selling a good to be able to purchase it.  The maximum amount of units of a good that can be purchased in each transaction are denoted by the `tradeVolume` value of the good, which can be viewed by using the Get Market action.  Purchased goods are added to the ship's cargo hold.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship's symbol.
opts = {
  purchase_cargo_request: SpaceRubyTraderClient::PurchaseCargoRequest.new({symbol: SpaceRubyTraderClient::TradeSymbol::PRECIOUS_STONES, units: 37}) # PurchaseCargoRequest | 
}

begin
  # Purchase Cargo
  result = api_instance.purchase_cargo(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->purchase_cargo: #{e}"
end
```

#### Using the purchase_cargo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchaseCargo201Response>, Integer, Hash)> purchase_cargo_with_http_info(ship_symbol, opts)

```ruby
begin
  # Purchase Cargo
  data, status_code, headers = api_instance.purchase_cargo_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchaseCargo201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->purchase_cargo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship's symbol. |  |
| **purchase_cargo_request** | [**PurchaseCargoRequest**](PurchaseCargoRequest.md) |  | [optional] |

### Return type

[**PurchaseCargo201Response**](PurchaseCargo201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## purchase_ship

> <PurchaseShip201Response> purchase_ship(opts)

Purchase Ship

Purchase a ship from a Shipyard. In order to use this function, a ship under your agent's ownership must be in a waypoint that has the `Shipyard` trait, and the Shipyard must sell the type of the desired ship.  Shipyards typically offer ship types, which are predefined templates of ships that have dedicated roles. A template comes with a preset of an engine, a reactor, and a frame. It may also include a few modules and mounts.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
opts = {
  purchase_ship_request: SpaceRubyTraderClient::PurchaseShipRequest.new({ship_type: SpaceRubyTraderClient::ShipType::PROBE, waypoint_symbol: 'waypoint_symbol_example'}) # PurchaseShipRequest | 
}

begin
  # Purchase Ship
  result = api_instance.purchase_ship(opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->purchase_ship: #{e}"
end
```

#### Using the purchase_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchaseShip201Response>, Integer, Hash)> purchase_ship_with_http_info(opts)

```ruby
begin
  # Purchase Ship
  data, status_code, headers = api_instance.purchase_ship_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchaseShip201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->purchase_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_ship_request** | [**PurchaseShipRequest**](PurchaseShipRequest.md) |  | [optional] |

### Return type

[**PurchaseShip201Response**](PurchaseShip201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## refuel_ship

> <RefuelShip200Response> refuel_ship(ship_symbol, opts)

Refuel Ship

Refuel your ship by buying fuel from the local market.  Requires the ship to be docked in a waypoint that has the `Marketplace` trait, and the market must be selling fuel in order to refuel.  Each fuel bought from the market replenishes 100 units in your ship's fuel.  Ships will always be refuel to their frame's maximum fuel capacity when using this action.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  refuel_ship_request: SpaceRubyTraderClient::RefuelShipRequest.new # RefuelShipRequest | 
}

begin
  # Refuel Ship
  result = api_instance.refuel_ship(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->refuel_ship: #{e}"
end
```

#### Using the refuel_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefuelShip200Response>, Integer, Hash)> refuel_ship_with_http_info(ship_symbol, opts)

```ruby
begin
  # Refuel Ship
  data, status_code, headers = api_instance.refuel_ship_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefuelShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->refuel_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **refuel_ship_request** | [**RefuelShipRequest**](RefuelShipRequest.md) |  | [optional] |

### Return type

[**RefuelShip200Response**](RefuelShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_mount

> <RemoveMount201Response> remove_mount(ship_symbol, opts)

Remove Mount

Remove a mount from a ship.  The ship must be docked in a waypoint that has the `Shipyard` trait, and must have the desired mount that it wish to remove installed.  A removal fee will be deduced from the agent by the Shipyard.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship's symbol.
opts = {
  remove_mount_request: SpaceRubyTraderClient::RemoveMountRequest.new({symbol: 'symbol_example'}) # RemoveMountRequest | 
}

begin
  # Remove Mount
  result = api_instance.remove_mount(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->remove_mount: #{e}"
end
```

#### Using the remove_mount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveMount201Response>, Integer, Hash)> remove_mount_with_http_info(ship_symbol, opts)

```ruby
begin
  # Remove Mount
  data, status_code, headers = api_instance.remove_mount_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveMount201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->remove_mount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship's symbol. |  |
| **remove_mount_request** | [**RemoveMountRequest**](RemoveMountRequest.md) |  | [optional] |

### Return type

[**RemoveMount201Response**](RemoveMount201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repair_ship

> <RepairShip200Response> repair_ship(ship_symbol)

Repair Ship

Repair a ship, restoring the ship to maximum condition. The ship must be docked at a waypoint that has the `Shipyard` trait in order to use this function. To preview the cost of repairing the ship, use the Get action.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Repair Ship
  result = api_instance.repair_ship(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->repair_ship: #{e}"
end
```

#### Using the repair_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepairShip200Response>, Integer, Hash)> repair_ship_with_http_info(ship_symbol)

```ruby
begin
  # Repair Ship
  data, status_code, headers = api_instance.repair_ship_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepairShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->repair_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**RepairShip200Response**](RepairShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scrap_ship

> <ScrapShip200Response> scrap_ship(ship_symbol)

Scrap Ship

Scrap a ship, removing it from the game and returning a portion of the ship's value to the agent. The ship must be docked in a waypoint that has the `Shipyard` trait in order to use this function. To preview the amount of value that will be returned, use the Get Ship action.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Scrap Ship
  result = api_instance.scrap_ship(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->scrap_ship: #{e}"
end
```

#### Using the scrap_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScrapShip200Response>, Integer, Hash)> scrap_ship_with_http_info(ship_symbol)

```ruby
begin
  # Scrap Ship
  data, status_code, headers = api_instance.scrap_ship_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScrapShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->scrap_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**ScrapShip200Response**](ScrapShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sell_cargo

> <SellCargo201Response> sell_cargo(ship_symbol, opts)

Sell Cargo

Sell cargo in your ship to a market that trades this cargo. The ship must be docked in a waypoint that has the `Marketplace` trait in order to use this function.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | Symbol of a ship.
opts = {
  sell_cargo_request: SpaceRubyTraderClient::SellCargoRequest.new({symbol: SpaceRubyTraderClient::TradeSymbol::PRECIOUS_STONES, units: 37}) # SellCargoRequest | 
}

begin
  # Sell Cargo
  result = api_instance.sell_cargo(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->sell_cargo: #{e}"
end
```

#### Using the sell_cargo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SellCargo201Response>, Integer, Hash)> sell_cargo_with_http_info(ship_symbol, opts)

```ruby
begin
  # Sell Cargo
  data, status_code, headers = api_instance.sell_cargo_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SellCargo201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->sell_cargo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | Symbol of a ship. |  |
| **sell_cargo_request** | [**SellCargoRequest**](SellCargoRequest.md) |  | [optional] |

### Return type

[**SellCargo201Response**](SellCargo201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ship_refine

> <ShipRefine201Response> ship_refine(ship_symbol, opts)

Ship Refine

Attempt to refine the raw materials on your ship. The request will only succeed if your ship is capable of refining at the time of the request. In order to be able to refine, a ship must have goods that can be refined and have installed a `Refinery` module that can refine it.  When refining, 30 basic goods will be converted into 10 processed goods.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The symbol of the ship.
opts = {
  ship_refine_request: SpaceRubyTraderClient::ShipRefineRequest.new({produce: 'IRON'}) # ShipRefineRequest | 
}

begin
  # Ship Refine
  result = api_instance.ship_refine(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->ship_refine: #{e}"
end
```

#### Using the ship_refine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShipRefine201Response>, Integer, Hash)> ship_refine_with_http_info(ship_symbol, opts)

```ruby
begin
  # Ship Refine
  data, status_code, headers = api_instance.ship_refine_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShipRefine201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->ship_refine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The symbol of the ship. |  |
| **ship_refine_request** | [**ShipRefineRequest**](ShipRefineRequest.md) |  | [optional] |

### Return type

[**ShipRefine201Response**](ShipRefine201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## siphon_resources

> <SiphonResources201Response> siphon_resources(ship_symbol)

Siphon Resources

Siphon gases, such as hydrocarbon, from gas giants.  The ship must be in orbit to be able to siphon and must have siphon mounts and a gas processor installed.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.

begin
  # Siphon Resources
  result = api_instance.siphon_resources(ship_symbol)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->siphon_resources: #{e}"
end
```

#### Using the siphon_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SiphonResources201Response>, Integer, Hash)> siphon_resources_with_http_info(ship_symbol)

```ruby
begin
  # Siphon Resources
  data, status_code, headers = api_instance.siphon_resources_with_http_info(ship_symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SiphonResources201Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->siphon_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |

### Return type

[**SiphonResources201Response**](SiphonResources201Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transfer_cargo

> <TransferCargo200Response> transfer_cargo(ship_symbol, opts)

Transfer Cargo

Transfer cargo between ships.  The receiving ship must be in the same waypoint as the transferring ship, and it must able to hold the additional cargo after the transfer is complete. Both ships also must be in the same state, either both are docked or both are orbiting.  The response body's cargo shows the cargo of the transferring ship after the transfer is complete.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The transferring ship's symbol.
opts = {
  transfer_cargo_request: SpaceRubyTraderClient::TransferCargoRequest.new({trade_symbol: SpaceRubyTraderClient::TradeSymbol::PRECIOUS_STONES, units: 37, ship_symbol: 'ship_symbol_example'}) # TransferCargoRequest | 
}

begin
  # Transfer Cargo
  result = api_instance.transfer_cargo(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->transfer_cargo: #{e}"
end
```

#### Using the transfer_cargo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransferCargo200Response>, Integer, Hash)> transfer_cargo_with_http_info(ship_symbol, opts)

```ruby
begin
  # Transfer Cargo
  data, status_code, headers = api_instance.transfer_cargo_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransferCargo200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->transfer_cargo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The transferring ship's symbol. |  |
| **transfer_cargo_request** | [**TransferCargoRequest**](TransferCargoRequest.md) |  | [optional] |

### Return type

[**TransferCargo200Response**](TransferCargo200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## warp_ship

> <WarpShip200Response> warp_ship(ship_symbol, opts)

Warp Ship

Warp your ship to a target destination in another system. The ship must be in orbit to use this function and must have the `Warp Drive` module installed. Warping will consume the necessary fuel from the ship's manifest.  The returned response will detail the route information including the expected time of arrival. Most ship actions are unavailable until the ship has arrived at its destination.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::FleetApi.new
ship_symbol = 'ship_symbol_example' # String | The ship symbol.
opts = {
  navigate_ship_request: SpaceRubyTraderClient::NavigateShipRequest.new({waypoint_symbol: 'waypoint_symbol_example'}) # NavigateShipRequest | 
}

begin
  # Warp Ship
  result = api_instance.warp_ship(ship_symbol, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->warp_ship: #{e}"
end
```

#### Using the warp_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WarpShip200Response>, Integer, Hash)> warp_ship_with_http_info(ship_symbol, opts)

```ruby
begin
  # Warp Ship
  data, status_code, headers = api_instance.warp_ship_with_http_info(ship_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WarpShip200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling FleetApi->warp_ship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_symbol** | **String** | The ship symbol. |  |
| **navigate_ship_request** | [**NavigateShipRequest**](NavigateShipRequest.md) |  | [optional] |

### Return type

[**WarpShip200Response**](WarpShip200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

