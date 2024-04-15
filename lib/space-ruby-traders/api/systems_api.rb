require 'cgi'

module SpaceRubyTraderClient
  class SystemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Construction Site
    # Get construction details for a waypoint. Requires a waypoint with a property of `isUnderConstruction` to be true.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [GetConstruction200Response]
    def get_construction(system_symbol, waypoint_symbol, opts = {})
      data, _status_code, _headers = get_construction_with_http_info(system_symbol, waypoint_symbol, opts)
      data
    end

    # Get Construction Site
    # Get construction details for a waypoint. Requires a waypoint with a property of &#x60;isUnderConstruction&#x60; to be true.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetConstruction200Response, Integer, Hash)>] GetConstruction200Response data, response status code and response headers
    def get_construction_with_http_info(system_symbol, waypoint_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_construction ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.get_construction"
      end
      # verify the required parameter 'waypoint_symbol' is set
      if @api_client.config.client_side_validation && waypoint_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'waypoint_symbol' when calling SystemsApi.get_construction"
      end
      # resource path
      local_var_path = '/systems/{systemSymbol}/waypoints/{waypointSymbol}/construction'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s)).sub('{' + 'waypointSymbol' + '}', CGI.escape(waypoint_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetConstruction200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_construction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_construction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Jump Gate
    # Get jump gate details for a waypoint. Requires a waypoint of type `JUMP_GATE` to use.  Waypoints connected to this jump gate can be 
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [GetJumpGate200Response]
    def get_jump_gate(system_symbol, waypoint_symbol, opts = {})
      data, _status_code, _headers = get_jump_gate_with_http_info(system_symbol, waypoint_symbol, opts)
      data
    end

    # Get Jump Gate
    # Get jump gate details for a waypoint. Requires a waypoint of type &#x60;JUMP_GATE&#x60; to use.  Waypoints connected to this jump gate can be 
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetJumpGate200Response, Integer, Hash)>] GetJumpGate200Response data, response status code and response headers
    def get_jump_gate_with_http_info(system_symbol, waypoint_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_jump_gate ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.get_jump_gate"
      end
      # verify the required parameter 'waypoint_symbol' is set
      if @api_client.config.client_side_validation && waypoint_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'waypoint_symbol' when calling SystemsApi.get_jump_gate"
      end
      # resource path
      local_var_path = '/systems/{systemSymbol}/waypoints/{waypointSymbol}/jump-gate'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s)).sub('{' + 'waypointSymbol' + '}', CGI.escape(waypoint_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetJumpGate200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_jump_gate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_jump_gate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Market
    # Retrieve imports, exports and exchange data from a marketplace. Requires a waypoint that has the `Marketplace` trait to use.  Send a ship to the waypoint to access trade good prices and recent transactions. Refer to the [Market Overview page](https://docs.spacetraders.io/game-concepts/markets) to gain better a understanding of the market in the game.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [GetMarket200Response]
    def get_market(system_symbol, waypoint_symbol, opts = {})
      data, _status_code, _headers = get_market_with_http_info(system_symbol, waypoint_symbol, opts)
      data
    end

    # Get Market
    # Retrieve imports, exports and exchange data from a marketplace. Requires a waypoint that has the &#x60;Marketplace&#x60; trait to use.  Send a ship to the waypoint to access trade good prices and recent transactions. Refer to the [Market Overview page](https://docs.spacetraders.io/game-concepts/markets) to gain better a understanding of the market in the game.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMarket200Response, Integer, Hash)>] GetMarket200Response data, response status code and response headers
    def get_market_with_http_info(system_symbol, waypoint_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_market ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.get_market"
      end
      # verify the required parameter 'waypoint_symbol' is set
      if @api_client.config.client_side_validation && waypoint_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'waypoint_symbol' when calling SystemsApi.get_market"
      end
      # resource path
      local_var_path = '/systems/{systemSymbol}/waypoints/{waypointSymbol}/market'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s)).sub('{' + 'waypointSymbol' + '}', CGI.escape(waypoint_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetMarket200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_market",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_market\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Shipyard
    # Get the shipyard for a waypoint. Requires a waypoint that has the `Shipyard` trait to use. Send a ship to the waypoint to access data on ships that are currently available for purchase and recent transactions.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [GetShipyard200Response]
    def get_shipyard(system_symbol, waypoint_symbol, opts = {})
      data, _status_code, _headers = get_shipyard_with_http_info(system_symbol, waypoint_symbol, opts)
      data
    end

    # Get Shipyard
    # Get the shipyard for a waypoint. Requires a waypoint that has the &#x60;Shipyard&#x60; trait to use. Send a ship to the waypoint to access data on ships that are currently available for purchase and recent transactions.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetShipyard200Response, Integer, Hash)>] GetShipyard200Response data, response status code and response headers
    def get_shipyard_with_http_info(system_symbol, waypoint_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_shipyard ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.get_shipyard"
      end
      # verify the required parameter 'waypoint_symbol' is set
      if @api_client.config.client_side_validation && waypoint_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'waypoint_symbol' when calling SystemsApi.get_shipyard"
      end
      # resource path
      local_var_path = '/systems/{systemSymbol}/waypoints/{waypointSymbol}/shipyard'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s)).sub('{' + 'waypointSymbol' + '}', CGI.escape(waypoint_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetShipyard200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_shipyard",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_shipyard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get System
    # Get the details of a system.
    # @param system_symbol [String] The system symbol
    # @param [Hash] opts the optional parameters
    # @return [GetSystem200Response]
    def get_system(system_symbol, opts = {})
      data, _status_code, _headers = get_system_with_http_info(system_symbol, opts)
      data
    end

    # Get System
    # Get the details of a system.
    # @param system_symbol [String] The system symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSystem200Response, Integer, Hash)>] GetSystem200Response data, response status code and response headers
    def get_system_with_http_info(system_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_system ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.get_system"
      end
      # resource path
      local_var_path = '/systems/{systemSymbol}'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetSystem200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_system",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_system\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Waypoints in System
    # Return a paginated list of all of the waypoints for a given system.  If a waypoint is uncharted, it will return the `Uncharted` trait instead of its actual traits.
    # @param system_symbol [String] The system symbol
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @option opts [WaypointType] :type Filter waypoints by type.
    # @option opts [GetSystemWaypointsTraitsParameter] :traits Filter waypoints by one or more traits.
    # @return [GetSystemWaypoints200Response]
    def get_system_waypoints(system_symbol, opts = {})
      data, _status_code, _headers = get_system_waypoints_with_http_info(system_symbol, opts)
      data
    end

    # List Waypoints in System
    # Return a paginated list of all of the waypoints for a given system.  If a waypoint is uncharted, it will return the &#x60;Uncharted&#x60; trait instead of its actual traits.
    # @param system_symbol [String] The system symbol
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @option opts [WaypointType] :type Filter waypoints by type.
    # @option opts [GetSystemWaypointsTraitsParameter] :traits Filter waypoints by one or more traits.
    # @return [Array<(GetSystemWaypoints200Response, Integer, Hash)>] GetSystemWaypoints200Response data, response status code and response headers
    def get_system_waypoints_with_http_info(system_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_system_waypoints ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.get_system_waypoints"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling SystemsApi.get_system_waypoints, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SystemsApi.get_system_waypoints, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SystemsApi.get_system_waypoints, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/systems/{systemSymbol}/waypoints'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'traits'] = opts[:'traits'] if !opts[:'traits'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetSystemWaypoints200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_system_waypoints",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_system_waypoints\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Systems
    # Return a paginated list of all systems.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [GetSystems200Response]
    def get_systems(opts = {})
      data, _status_code, _headers = get_systems_with_http_info(opts)
      data
    end

    # List Systems
    # Return a paginated list of all systems.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [Array<(GetSystems200Response, Integer, Hash)>] GetSystems200Response data, response status code and response headers
    def get_systems_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_systems ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling SystemsApi.get_systems, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SystemsApi.get_systems, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SystemsApi.get_systems, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/systems'

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
      return_type = opts[:debug_return_type] || 'GetSystems200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_systems",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_systems\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Waypoint
    # View the details of a waypoint.  If the waypoint is uncharted, it will return the 'Uncharted' trait instead of its actual traits.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [GetWaypoint200Response]
    def get_waypoint(system_symbol, waypoint_symbol, opts = {})
      data, _status_code, _headers = get_waypoint_with_http_info(system_symbol, waypoint_symbol, opts)
      data
    end

    # Get Waypoint
    # View the details of a waypoint.  If the waypoint is uncharted, it will return the 'Uncharted' trait instead of its actual traits.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetWaypoint200Response, Integer, Hash)>] GetWaypoint200Response data, response status code and response headers
    def get_waypoint_with_http_info(system_symbol, waypoint_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.get_waypoint ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.get_waypoint"
      end
      # verify the required parameter 'waypoint_symbol' is set
      if @api_client.config.client_side_validation && waypoint_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'waypoint_symbol' when calling SystemsApi.get_waypoint"
      end
      # resource path
      local_var_path = '/systems/{systemSymbol}/waypoints/{waypointSymbol}'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s)).sub('{' + 'waypointSymbol' + '}', CGI.escape(waypoint_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetWaypoint200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.get_waypoint",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#get_waypoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Supply Construction Site
    # Supply a construction site with the specified good. Requires a waypoint with a property of `isUnderConstruction` to be true.  The good must be in your ship's cargo. The good will be removed from your ship's cargo and added to the construction site's materials.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @option opts [SupplyConstructionRequest] :supply_construction_request 
    # @return [SupplyConstruction201Response]
    def supply_construction(system_symbol, waypoint_symbol, opts = {})
      data, _status_code, _headers = supply_construction_with_http_info(system_symbol, waypoint_symbol, opts)
      data
    end

    # Supply Construction Site
    # Supply a construction site with the specified good. Requires a waypoint with a property of &#x60;isUnderConstruction&#x60; to be true.  The good must be in your ship's cargo. The good will be removed from your ship's cargo and added to the construction site's materials.
    # @param system_symbol [String] The system symbol
    # @param waypoint_symbol [String] The waypoint symbol
    # @param [Hash] opts the optional parameters
    # @option opts [SupplyConstructionRequest] :supply_construction_request 
    # @return [Array<(SupplyConstruction201Response, Integer, Hash)>] SupplyConstruction201Response data, response status code and response headers
    def supply_construction_with_http_info(system_symbol, waypoint_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.supply_construction ...'
      end
      # verify the required parameter 'system_symbol' is set
      if @api_client.config.client_side_validation && system_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'system_symbol' when calling SystemsApi.supply_construction"
      end
      # verify the required parameter 'waypoint_symbol' is set
      if @api_client.config.client_side_validation && waypoint_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'waypoint_symbol' when calling SystemsApi.supply_construction"
      end
      # resource path
      local_var_path = '/systems/{systemSymbol}/waypoints/{waypointSymbol}/construction/supply'.sub('{' + 'systemSymbol' + '}', CGI.escape(system_symbol.to_s)).sub('{' + 'waypointSymbol' + '}', CGI.escape(waypoint_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'supply_construction_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SupplyConstruction201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"SystemsApi.supply_construction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#supply_construction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
