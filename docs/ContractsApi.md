# SpaceRubyTraderClient::ContractsApi

All URIs are relative to *https://api.spacetraders.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept_contract**](ContractsApi.md#accept_contract) | **POST** /my/contracts/{contractId}/accept | Accept Contract |
| [**deliver_contract**](ContractsApi.md#deliver_contract) | **POST** /my/contracts/{contractId}/deliver | Deliver Cargo to Contract |
| [**fulfill_contract**](ContractsApi.md#fulfill_contract) | **POST** /my/contracts/{contractId}/fulfill | Fulfill Contract |
| [**get_contract**](ContractsApi.md#get_contract) | **GET** /my/contracts/{contractId} | Get Contract |
| [**get_contracts**](ContractsApi.md#get_contracts) | **GET** /my/contracts | List Contracts |


## accept_contract

> <AcceptContract200Response> accept_contract(contract_id)

Accept Contract

Accept a contract by ID.   You can only accept contracts that were offered to you, were not accepted yet, and whose deadlines has not passed yet.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::ContractsApi.new
contract_id = 'contract_id_example' # String | The contract ID to accept.

begin
  # Accept Contract
  result = api_instance.accept_contract(contract_id)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->accept_contract: #{e}"
end
```

#### Using the accept_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptContract200Response>, Integer, Hash)> accept_contract_with_http_info(contract_id)

```ruby
begin
  # Accept Contract
  data, status_code, headers = api_instance.accept_contract_with_http_info(contract_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptContract200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->accept_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | The contract ID to accept. |  |

### Return type

[**AcceptContract200Response**](AcceptContract200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deliver_contract

> <DeliverContract200Response> deliver_contract(contract_id, opts)

Deliver Cargo to Contract

Deliver cargo to a contract.  In order to use this API, a ship must be at the delivery location (denoted in the delivery terms as `destinationSymbol` of a contract) and must have a number of units of a good required by this contract in its cargo.  Cargo that was delivered will be removed from the ship's cargo.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::ContractsApi.new
contract_id = 'contract_id_example' # String | The ID of the contract.
opts = {
  deliver_contract_request: SpaceRubyTraderClient::DeliverContractRequest.new({ship_symbol: 'ship_symbol_example', trade_symbol: 'trade_symbol_example', units: 37}) # DeliverContractRequest | 
}

begin
  # Deliver Cargo to Contract
  result = api_instance.deliver_contract(contract_id, opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->deliver_contract: #{e}"
end
```

#### Using the deliver_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeliverContract200Response>, Integer, Hash)> deliver_contract_with_http_info(contract_id, opts)

```ruby
begin
  # Deliver Cargo to Contract
  data, status_code, headers = api_instance.deliver_contract_with_http_info(contract_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeliverContract200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->deliver_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | The ID of the contract. |  |
| **deliver_contract_request** | [**DeliverContractRequest**](DeliverContractRequest.md) |  | [optional] |

### Return type

[**DeliverContract200Response**](DeliverContract200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fulfill_contract

> <FulfillContract200Response> fulfill_contract(contract_id)

Fulfill Contract

Fulfill a contract. Can only be used on contracts that have all of their delivery terms fulfilled.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::ContractsApi.new
contract_id = 'contract_id_example' # String | The ID of the contract to fulfill.

begin
  # Fulfill Contract
  result = api_instance.fulfill_contract(contract_id)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->fulfill_contract: #{e}"
end
```

#### Using the fulfill_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FulfillContract200Response>, Integer, Hash)> fulfill_contract_with_http_info(contract_id)

```ruby
begin
  # Fulfill Contract
  data, status_code, headers = api_instance.fulfill_contract_with_http_info(contract_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FulfillContract200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->fulfill_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | The ID of the contract to fulfill. |  |

### Return type

[**FulfillContract200Response**](FulfillContract200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contract

> <GetContract200Response> get_contract(contract_id)

Get Contract

Get the details of a contract by ID.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::ContractsApi.new
contract_id = 'contract_id_example' # String | The contract ID

begin
  # Get Contract
  result = api_instance.get_contract(contract_id)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->get_contract: #{e}"
end
```

#### Using the get_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContract200Response>, Integer, Hash)> get_contract_with_http_info(contract_id)

```ruby
begin
  # Get Contract
  data, status_code, headers = api_instance.get_contract_with_http_info(contract_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContract200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->get_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | The contract ID |  |

### Return type

[**GetContract200Response**](GetContract200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts

> <GetContracts200Response> get_contracts(opts)

List Contracts

Return a paginated list of all your contracts.

### Examples

```ruby
require 'time'
require 'space-ruby-traders'
# setup authorization
SpaceRubyTraderClient.configure do |config|
  # Configure Bearer authorization: AgentToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SpaceRubyTraderClient::ContractsApi.new
opts = {
  page: 56, # Integer | What entry offset to request
  limit: 56 # Integer | How many entries to return per page
}

begin
  # List Contracts
  result = api_instance.get_contracts(opts)
  p result
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts: #{e}"
end
```

#### Using the get_contracts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContracts200Response>, Integer, Hash)> get_contracts_with_http_info(opts)

```ruby
begin
  # List Contracts
  data, status_code, headers = api_instance.get_contracts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContracts200Response>
rescue SpaceRubyTraderClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | What entry offset to request | [optional][default to 1] |
| **limit** | **Integer** | How many entries to return per page | [optional][default to 10] |

### Return type

[**GetContracts200Response**](GetContracts200Response.md)

### Authorization

[AgentToken](../README.md#AgentToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

