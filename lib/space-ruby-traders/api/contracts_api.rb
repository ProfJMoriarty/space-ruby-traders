require 'cgi'

module SpaceRubyTraderClient
  class ContractsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Accept Contract
    # Accept a contract by ID.   You can only accept contracts that were offered to you, were not accepted yet, and whose deadlines has not passed yet.
    # @param contract_id [String] The contract ID to accept.
    # @param [Hash] opts the optional parameters
    # @return [AcceptContract200Response]
    def accept_contract(contract_id, opts = {})
      data, _status_code, _headers = accept_contract_with_http_info(contract_id, opts)
      data
    end

    # Accept Contract
    # Accept a contract by ID.   You can only accept contracts that were offered to you, were not accepted yet, and whose deadlines has not passed yet.
    # @param contract_id [String] The contract ID to accept.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptContract200Response, Integer, Hash)>] AcceptContract200Response data, response status code and response headers
    def accept_contract_with_http_info(contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.accept_contract ...'
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.accept_contract"
      end
      # resource path
      local_var_path = '/my/contracts/{contractId}/accept'.sub('{' + 'contractId' + '}', CGI.escape(contract_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptContract200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"ContractsApi.accept_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#accept_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deliver Cargo to Contract
    # Deliver cargo to a contract.  In order to use this API, a ship must be at the delivery location (denoted in the delivery terms as `destinationSymbol` of a contract) and must have a number of units of a good required by this contract in its cargo.  Cargo that was delivered will be removed from the ship's cargo.
    # @param contract_id [String] The ID of the contract.
    # @param [Hash] opts the optional parameters
    # @option opts [DeliverContractRequest] :deliver_contract_request 
    # @return [DeliverContract200Response]
    def deliver_contract(contract_id, opts = {})
      data, _status_code, _headers = deliver_contract_with_http_info(contract_id, opts)
      data
    end

    # Deliver Cargo to Contract
    # Deliver cargo to a contract.  In order to use this API, a ship must be at the delivery location (denoted in the delivery terms as &#x60;destinationSymbol&#x60; of a contract) and must have a number of units of a good required by this contract in its cargo.  Cargo that was delivered will be removed from the ship's cargo.
    # @param contract_id [String] The ID of the contract.
    # @param [Hash] opts the optional parameters
    # @option opts [DeliverContractRequest] :deliver_contract_request 
    # @return [Array<(DeliverContract200Response, Integer, Hash)>] DeliverContract200Response data, response status code and response headers
    def deliver_contract_with_http_info(contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.deliver_contract ...'
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.deliver_contract"
      end
      # resource path
      local_var_path = '/my/contracts/{contractId}/deliver'.sub('{' + 'contractId' + '}', CGI.escape(contract_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'deliver_contract_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'DeliverContract200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"ContractsApi.deliver_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#deliver_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fulfill Contract
    # Fulfill a contract. Can only be used on contracts that have all of their delivery terms fulfilled.
    # @param contract_id [String] The ID of the contract to fulfill.
    # @param [Hash] opts the optional parameters
    # @return [FulfillContract200Response]
    def fulfill_contract(contract_id, opts = {})
      data, _status_code, _headers = fulfill_contract_with_http_info(contract_id, opts)
      data
    end

    # Fulfill Contract
    # Fulfill a contract. Can only be used on contracts that have all of their delivery terms fulfilled.
    # @param contract_id [String] The ID of the contract to fulfill.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FulfillContract200Response, Integer, Hash)>] FulfillContract200Response data, response status code and response headers
    def fulfill_contract_with_http_info(contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.fulfill_contract ...'
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.fulfill_contract"
      end
      # resource path
      local_var_path = '/my/contracts/{contractId}/fulfill'.sub('{' + 'contractId' + '}', CGI.escape(contract_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FulfillContract200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"ContractsApi.fulfill_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#fulfill_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Contract
    # Get the details of a contract by ID.
    # @param contract_id [String] The contract ID
    # @param [Hash] opts the optional parameters
    # @return [GetContract200Response]
    def get_contract(contract_id, opts = {})
      data, _status_code, _headers = get_contract_with_http_info(contract_id, opts)
      data
    end

    # Get Contract
    # Get the details of a contract by ID.
    # @param contract_id [String] The contract ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContract200Response, Integer, Hash)>] GetContract200Response data, response status code and response headers
    def get_contract_with_http_info(contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.get_contract ...'
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.get_contract"
      end
      # resource path
      local_var_path = '/my/contracts/{contractId}'.sub('{' + 'contractId' + '}', CGI.escape(contract_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetContract200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"ContractsApi.get_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Contracts
    # Return a paginated list of all your contracts.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [GetContracts200Response]
    def get_contracts(opts = {})
      data, _status_code, _headers = get_contracts_with_http_info(opts)
      data
    end

    # List Contracts
    # Return a paginated list of all your contracts.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [Array<(GetContracts200Response, Integer, Hash)>] GetContracts200Response data, response status code and response headers
    def get_contracts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.get_contracts ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ContractsApi.get_contracts, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContractsApi.get_contracts, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContractsApi.get_contracts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/my/contracts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetContracts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"ContractsApi.get_contracts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_contracts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
