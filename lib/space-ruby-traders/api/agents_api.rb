require 'cgi'

module SpaceRubyTraderClient
  class AgentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Public Agent
    # Fetch agent details.
    # @param agent_symbol [String] The agent symbol
    # @param [Hash] opts the optional parameters
    # @return [GetMyAgent200Response]
    def get_agent(agent_symbol, opts = {})
      data, _status_code, _headers = get_agent_with_http_info(agent_symbol, opts)
      data
    end

    # Get Public Agent
    # Fetch agent details.
    # @param agent_symbol [String] The agent symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMyAgent200Response, Integer, Hash)>] GetMyAgent200Response data, response status code and response headers
    def get_agent_with_http_info(agent_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentsApi.get_agent ...'
      end
      # verify the required parameter 'agent_symbol' is set
      if @api_client.config.client_side_validation && agent_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'agent_symbol' when calling AgentsApi.get_agent"
      end
      # resource path
      local_var_path = '/agents/{agentSymbol}'.sub('{' + 'agentSymbol' + '}', CGI.escape(agent_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetMyAgent200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"AgentsApi.get_agent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgentsApi#get_agent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Agents
    # Fetch agents details.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [GetAgents200Response]
    def get_agents(opts = {})
      data, _status_code, _headers = get_agents_with_http_info(opts)
      data
    end

    # List Agents
    # Fetch agents details.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [Array<(GetAgents200Response, Integer, Hash)>] GetAgents200Response data, response status code and response headers
    def get_agents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentsApi.get_agents ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling AgentsApi.get_agents, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AgentsApi.get_agents, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AgentsApi.get_agents, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/agents'

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
      return_type = opts[:debug_return_type] || 'GetAgents200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"AgentsApi.get_agents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgentsApi#get_agents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Agent
    # Fetch your agent's details.
    # @param [Hash] opts the optional parameters
    # @return [GetMyAgent200Response]
    def get_my_agent(opts = {})
      data, _status_code, _headers = get_my_agent_with_http_info(opts)
      data
    end

    # Get Agent
    # Fetch your agent's details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMyAgent200Response, Integer, Hash)>] GetMyAgent200Response data, response status code and response headers
    def get_my_agent_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentsApi.get_my_agent ...'
      end
      # resource path
      local_var_path = '/my/agent'

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
      return_type = opts[:debug_return_type] || 'GetMyAgent200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"AgentsApi.get_my_agent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgentsApi#get_my_agent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
