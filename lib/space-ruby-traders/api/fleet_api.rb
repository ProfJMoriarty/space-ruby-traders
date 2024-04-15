require 'cgi'

module SpaceRubyTraderClient
  class FleetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Chart
    # Command a ship to chart the waypoint at its current location.  Most waypoints in the universe are uncharted by default. These waypoints have their traits hidden until they have been charted by a ship.  Charting a waypoint will record your agent as the one who created the chart, and all other agents would also be able to see the waypoint's traits.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [CreateChart201Response]
    def create_chart(ship_symbol, opts = {})
      data, _status_code, _headers = create_chart_with_http_info(ship_symbol, opts)
      data
    end

    # Create Chart
    # Command a ship to chart the waypoint at its current location.  Most waypoints in the universe are uncharted by default. These waypoints have their traits hidden until they have been charted by a ship.  Charting a waypoint will record your agent as the one who created the chart, and all other agents would also be able to see the waypoint's traits.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateChart201Response, Integer, Hash)>] CreateChart201Response data, response status code and response headers
    def create_chart_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.create_chart ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.create_chart"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/chart'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateChart201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.create_chart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#create_chart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Scan Ships
    # Scan for nearby ships, retrieving information for all ships in range.  Requires a ship to have the `Sensor Array` mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [CreateShipShipScan201Response]
    def create_ship_ship_scan(ship_symbol, opts = {})
      data, _status_code, _headers = create_ship_ship_scan_with_http_info(ship_symbol, opts)
      data
    end

    # Scan Ships
    # Scan for nearby ships, retrieving information for all ships in range.  Requires a ship to have the &#x60;Sensor Array&#x60; mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateShipShipScan201Response, Integer, Hash)>] CreateShipShipScan201Response data, response status code and response headers
    def create_ship_ship_scan_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.create_ship_ship_scan ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.create_ship_ship_scan"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/scan/ships'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateShipShipScan201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.create_ship_ship_scan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#create_ship_ship_scan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Scan Systems
    # Scan for nearby systems, retrieving information on the systems' distance from the ship and their waypoints. Requires a ship to have the `Sensor Array` mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [CreateShipSystemScan201Response]
    def create_ship_system_scan(ship_symbol, opts = {})
      data, _status_code, _headers = create_ship_system_scan_with_http_info(ship_symbol, opts)
      data
    end

    # Scan Systems
    # Scan for nearby systems, retrieving information on the systems' distance from the ship and their waypoints. Requires a ship to have the &#x60;Sensor Array&#x60; mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateShipSystemScan201Response, Integer, Hash)>] CreateShipSystemScan201Response data, response status code and response headers
    def create_ship_system_scan_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.create_ship_system_scan ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.create_ship_system_scan"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/scan/systems'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateShipSystemScan201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.create_ship_system_scan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#create_ship_system_scan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Scan Waypoints
    # Scan for nearby waypoints, retrieving detailed information on each waypoint in range. Scanning uncharted waypoints will allow you to ignore their uncharted state and will list the waypoints' traits.  Requires a ship to have the `Sensor Array` mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [CreateShipWaypointScan201Response]
    def create_ship_waypoint_scan(ship_symbol, opts = {})
      data, _status_code, _headers = create_ship_waypoint_scan_with_http_info(ship_symbol, opts)
      data
    end

    # Scan Waypoints
    # Scan for nearby waypoints, retrieving detailed information on each waypoint in range. Scanning uncharted waypoints will allow you to ignore their uncharted state and will list the waypoints' traits.  Requires a ship to have the &#x60;Sensor Array&#x60; mount installed to use.  The ship will enter a cooldown after using this function, during which it cannot execute certain actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateShipWaypointScan201Response, Integer, Hash)>] CreateShipWaypointScan201Response data, response status code and response headers
    def create_ship_waypoint_scan_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.create_ship_waypoint_scan ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.create_ship_waypoint_scan"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/scan/waypoints'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateShipWaypointScan201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.create_ship_waypoint_scan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#create_ship_waypoint_scan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Survey
    # Create surveys on a waypoint that can be extracted such as asteroid fields. A survey focuses on specific types of deposits from the extracted location. When ships extract using this survey, they are guaranteed to procure a high amount of one of the goods in the survey.  In order to use a survey, send the entire survey details in the body of the extract request.  Each survey may have multiple deposits, and if a symbol shows up more than once, that indicates a higher chance of extracting that resource.  Your ship will enter a cooldown after surveying in which it is unable to perform certain actions. Surveys will eventually expire after a period of time or will be exhausted after being extracted several times based on the survey's size. Multiple ships can use the same survey for extraction.  A ship must have the `Surveyor` mount installed in order to use this function.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [CreateSurvey201Response]
    def create_survey(ship_symbol, opts = {})
      data, _status_code, _headers = create_survey_with_http_info(ship_symbol, opts)
      data
    end

    # Create Survey
    # Create surveys on a waypoint that can be extracted such as asteroid fields. A survey focuses on specific types of deposits from the extracted location. When ships extract using this survey, they are guaranteed to procure a high amount of one of the goods in the survey.  In order to use a survey, send the entire survey details in the body of the extract request.  Each survey may have multiple deposits, and if a symbol shows up more than once, that indicates a higher chance of extracting that resource.  Your ship will enter a cooldown after surveying in which it is unable to perform certain actions. Surveys will eventually expire after a period of time or will be exhausted after being extracted several times based on the survey's size. Multiple ships can use the same survey for extraction.  A ship must have the &#x60;Surveyor&#x60; mount installed in order to use this function.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSurvey201Response, Integer, Hash)>] CreateSurvey201Response data, response status code and response headers
    def create_survey_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.create_survey ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.create_survey"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/survey'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateSurvey201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.create_survey",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#create_survey\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dock Ship
    # Attempt to dock your ship at its current location. Docking will only succeed if your ship is capable of docking at the time of the request.  Docked ships can access elements in their current location, such as the market or a shipyard, but cannot do actions that require the ship to be above surface such as navigating or extracting.  The endpoint is idempotent - successive calls will succeed even if the ship is already docked.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [DockShip200Response]
    def dock_ship(ship_symbol, opts = {})
      data, _status_code, _headers = dock_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Dock Ship
    # Attempt to dock your ship at its current location. Docking will only succeed if your ship is capable of docking at the time of the request.  Docked ships can access elements in their current location, such as the market or a shipyard, but cannot do actions that require the ship to be above surface such as navigating or extracting.  The endpoint is idempotent - successive calls will succeed even if the ship is already docked.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DockShip200Response, Integer, Hash)>] DockShip200Response data, response status code and response headers
    def dock_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.dock_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.dock_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/dock'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'DockShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.dock_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#dock_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract Resources
    # Extract resources from a waypoint that can be extracted, such as asteroid fields, into your ship. Send an optional survey as the payload to target specific yields.  The ship must be in orbit to be able to extract and must have mining equipments installed that can extract goods, such as the `Gas Siphon` mount for gas-based goods or `Mining Laser` mount for ore-based goods.  The survey property is now deprecated. See the `extract/survey` endpoint for more details.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [ExtractResourcesRequest] :extract_resources_request 
    # @return [ExtractResources201Response]
    def extract_resources(ship_symbol, opts = {})
      data, _status_code, _headers = extract_resources_with_http_info(ship_symbol, opts)
      data
    end

    # Extract Resources
    # Extract resources from a waypoint that can be extracted, such as asteroid fields, into your ship. Send an optional survey as the payload to target specific yields.  The ship must be in orbit to be able to extract and must have mining equipments installed that can extract goods, such as the &#x60;Gas Siphon&#x60; mount for gas-based goods or &#x60;Mining Laser&#x60; mount for ore-based goods.  The survey property is now deprecated. See the &#x60;extract/survey&#x60; endpoint for more details.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [ExtractResourcesRequest] :extract_resources_request 
    # @return [Array<(ExtractResources201Response, Integer, Hash)>] ExtractResources201Response data, response status code and response headers
    def extract_resources_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.extract_resources ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.extract_resources"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/extract'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'extract_resources_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ExtractResources201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.extract_resources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#extract_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract Resources with Survey
    # Use a survey when extracting resources from a waypoint. This endpoint requires a survey as the payload, which allows your ship to extract specific yields.  Send the full survey object as the payload which will be validated according to the signature. If the signature is invalid, or any properties of the survey are changed, the request will fail.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [Survey] :survey 
    # @return [ExtractResources201Response]
    def extract_resources_with_survey(ship_symbol, opts = {})
      data, _status_code, _headers = extract_resources_with_survey_with_http_info(ship_symbol, opts)
      data
    end

    # Extract Resources with Survey
    # Use a survey when extracting resources from a waypoint. This endpoint requires a survey as the payload, which allows your ship to extract specific yields.  Send the full survey object as the payload which will be validated according to the signature. If the signature is invalid, or any properties of the survey are changed, the request will fail.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [Survey] :survey 
    # @return [Array<(ExtractResources201Response, Integer, Hash)>] ExtractResources201Response data, response status code and response headers
    def extract_resources_with_survey_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.extract_resources_with_survey ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.extract_resources_with_survey"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/extract/survey'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'survey'])

      # return_type
      return_type = opts[:debug_return_type] || 'ExtractResources201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.extract_resources_with_survey",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#extract_resources_with_survey\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Mounts
    # Get the mounts installed on a ship.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @return [GetMounts200Response]
    def get_mounts(ship_symbol, opts = {})
      data, _status_code, _headers = get_mounts_with_http_info(ship_symbol, opts)
      data
    end

    # Get Mounts
    # Get the mounts installed on a ship.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMounts200Response, Integer, Hash)>] GetMounts200Response data, response status code and response headers
    def get_mounts_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_mounts ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.get_mounts"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/mounts'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetMounts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_mounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_mounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ship
    # Retrieve the details of a ship under your agent's ownership.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [GetMyShip200Response]
    def get_my_ship(ship_symbol, opts = {})
      data, _status_code, _headers = get_my_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Get Ship
    # Retrieve the details of a ship under your agent's ownership.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMyShip200Response, Integer, Hash)>] GetMyShip200Response data, response status code and response headers
    def get_my_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_my_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.get_my_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetMyShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_my_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_my_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ship Cargo
    # Retrieve the cargo of a ship under your agent's ownership.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [GetMyShipCargo200Response]
    def get_my_ship_cargo(ship_symbol, opts = {})
      data, _status_code, _headers = get_my_ship_cargo_with_http_info(ship_symbol, opts)
      data
    end

    # Get Ship Cargo
    # Retrieve the cargo of a ship under your agent's ownership.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMyShipCargo200Response, Integer, Hash)>] GetMyShipCargo200Response data, response status code and response headers
    def get_my_ship_cargo_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_my_ship_cargo ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.get_my_ship_cargo"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/cargo'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetMyShipCargo200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_my_ship_cargo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_my_ship_cargo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Ships
    # Return a paginated list of all of ships under your agent's ownership.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [GetMyShips200Response]
    def get_my_ships(opts = {})
      data, _status_code, _headers = get_my_ships_with_http_info(opts)
      data
    end

    # List Ships
    # Return a paginated list of all of ships under your agent's ownership.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [Array<(GetMyShips200Response, Integer, Hash)>] GetMyShips200Response data, response status code and response headers
    def get_my_ships_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_my_ships ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling FleetApi.get_my_ships, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FleetApi.get_my_ships, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FleetApi.get_my_ships, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/my/ships'

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
      return_type = opts[:debug_return_type] || 'GetMyShips200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_my_ships",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_my_ships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Repair Ship
    # Get the cost of repairing a ship.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [GetRepairShip200Response]
    def get_repair_ship(ship_symbol, opts = {})
      data, _status_code, _headers = get_repair_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Get Repair Ship
    # Get the cost of repairing a ship.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetRepairShip200Response, Integer, Hash)>] GetRepairShip200Response data, response status code and response headers
    def get_repair_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_repair_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.get_repair_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/repair'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetRepairShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_repair_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_repair_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Scrap Ship
    # Get the amount of value that will be returned when scrapping a ship.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [GetScrapShip200Response]
    def get_scrap_ship(ship_symbol, opts = {})
      data, _status_code, _headers = get_scrap_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Get Scrap Ship
    # Get the amount of value that will be returned when scrapping a ship.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetScrapShip200Response, Integer, Hash)>] GetScrapShip200Response data, response status code and response headers
    def get_scrap_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_scrap_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.get_scrap_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/scrap'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetScrapShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_scrap_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_scrap_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ship Cooldown
    # Retrieve the details of your ship's reactor cooldown. Some actions such as activating your jump drive, scanning, or extracting resources taxes your reactor and results in a cooldown.  Your ship cannot perform additional actions until your cooldown has expired. The duration of your cooldown is relative to the power consumption of the related modules or mounts for the action taken.  Response returns a 204 status code (no-content) when the ship has no cooldown.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [GetShipCooldown200Response]
    def get_ship_cooldown(ship_symbol, opts = {})
      data, _status_code, _headers = get_ship_cooldown_with_http_info(ship_symbol, opts)
      data
    end

    # Get Ship Cooldown
    # Retrieve the details of your ship's reactor cooldown. Some actions such as activating your jump drive, scanning, or extracting resources taxes your reactor and results in a cooldown.  Your ship cannot perform additional actions until your cooldown has expired. The duration of your cooldown is relative to the power consumption of the related modules or mounts for the action taken.  Response returns a 204 status code (no-content) when the ship has no cooldown.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetShipCooldown200Response, Integer, Hash)>] GetShipCooldown200Response data, response status code and response headers
    def get_ship_cooldown_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_ship_cooldown ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.get_ship_cooldown"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/cooldown'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetShipCooldown200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_ship_cooldown",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_ship_cooldown\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Ship Nav
    # Get the current nav status of a ship.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [GetShipNav200Response]
    def get_ship_nav(ship_symbol, opts = {})
      data, _status_code, _headers = get_ship_nav_with_http_info(ship_symbol, opts)
      data
    end

    # Get Ship Nav
    # Get the current nav status of a ship.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetShipNav200Response, Integer, Hash)>] GetShipNav200Response data, response status code and response headers
    def get_ship_nav_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.get_ship_nav ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.get_ship_nav"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/nav'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetShipNav200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.get_ship_nav",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#get_ship_nav\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Install Mount
    # Install a mount on a ship.  In order to install a mount, the ship must be docked and located in a waypoint that has a `Shipyard` trait. The ship also must have the mount to install in its cargo hold.  An installation fee will be deduced by the Shipyard for installing the mount on the ship. 
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [InstallMountRequest] :install_mount_request 
    # @return [InstallMount201Response]
    def install_mount(ship_symbol, opts = {})
      data, _status_code, _headers = install_mount_with_http_info(ship_symbol, opts)
      data
    end

    # Install Mount
    # Install a mount on a ship.  In order to install a mount, the ship must be docked and located in a waypoint that has a &#x60;Shipyard&#x60; trait. The ship also must have the mount to install in its cargo hold.  An installation fee will be deduced by the Shipyard for installing the mount on the ship. 
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [InstallMountRequest] :install_mount_request 
    # @return [Array<(InstallMount201Response, Integer, Hash)>] InstallMount201Response data, response status code and response headers
    def install_mount_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.install_mount ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.install_mount"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/mounts/install'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'install_mount_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'InstallMount201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.install_mount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#install_mount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Jettison Cargo
    # Jettison cargo from your ship's cargo hold.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [JettisonRequest] :jettison_request 
    # @return [Jettison200Response]
    def jettison(ship_symbol, opts = {})
      data, _status_code, _headers = jettison_with_http_info(ship_symbol, opts)
      data
    end

    # Jettison Cargo
    # Jettison cargo from your ship's cargo hold.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [JettisonRequest] :jettison_request 
    # @return [Array<(Jettison200Response, Integer, Hash)>] Jettison200Response data, response status code and response headers
    def jettison_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.jettison ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.jettison"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/jettison'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'jettison_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Jettison200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.jettison",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#jettison\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Jump Ship
    # Jump your ship instantly to a target connected waypoint. The ship must be in orbit to execute a jump.  A unit of antimatter is purchased and consumed from the market when jumping. The price of antimatter is determined by the market and is subject to change. A ship can only jump to connected waypoints
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [JumpShipRequest] :jump_ship_request 
    # @return [JumpShip200Response]
    def jump_ship(ship_symbol, opts = {})
      data, _status_code, _headers = jump_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Jump Ship
    # Jump your ship instantly to a target connected waypoint. The ship must be in orbit to execute a jump.  A unit of antimatter is purchased and consumed from the market when jumping. The price of antimatter is determined by the market and is subject to change. A ship can only jump to connected waypoints
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [JumpShipRequest] :jump_ship_request 
    # @return [Array<(JumpShip200Response, Integer, Hash)>] JumpShip200Response data, response status code and response headers
    def jump_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.jump_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.jump_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/jump'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'jump_ship_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'JumpShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.jump_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#jump_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Navigate Ship
    # Navigate to a target destination. The ship must be in orbit to use this function. The destination waypoint must be within the same system as the ship's current location. Navigating will consume the necessary fuel from the ship's manifest based on the distance to the target waypoint.  The returned response will detail the route information including the expected time of arrival. Most ship actions are unavailable until the ship has arrived at it's destination.  To travel between systems, see the ship's Warp or Jump actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [NavigateShipRequest] :navigate_ship_request 
    # @return [NavigateShip200Response]
    def navigate_ship(ship_symbol, opts = {})
      data, _status_code, _headers = navigate_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Navigate Ship
    # Navigate to a target destination. The ship must be in orbit to use this function. The destination waypoint must be within the same system as the ship's current location. Navigating will consume the necessary fuel from the ship's manifest based on the distance to the target waypoint.  The returned response will detail the route information including the expected time of arrival. Most ship actions are unavailable until the ship has arrived at it's destination.  To travel between systems, see the ship's Warp or Jump actions.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [NavigateShipRequest] :navigate_ship_request 
    # @return [Array<(NavigateShip200Response, Integer, Hash)>] NavigateShip200Response data, response status code and response headers
    def navigate_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.navigate_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.navigate_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/navigate'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'navigate_ship_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'NavigateShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.navigate_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#navigate_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Negotiate Contract
    # Negotiate a new contract with the HQ.  In order to negotiate a new contract, an agent must not have ongoing or offered contracts over the allowed maximum amount. Currently the maximum contracts an agent can have at a time is 1.  Once a contract is negotiated, it is added to the list of contracts offered to the agent, which the agent can then accept.   The ship must be present at any waypoint with a faction present to negotiate a contract with that faction.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @return [NegotiateContract200Response]
    def negotiate_contract(ship_symbol, opts = {})
      data, _status_code, _headers = negotiate_contract_with_http_info(ship_symbol, opts)
      data
    end

    # Negotiate Contract
    # Negotiate a new contract with the HQ.  In order to negotiate a new contract, an agent must not have ongoing or offered contracts over the allowed maximum amount. Currently the maximum contracts an agent can have at a time is 1.  Once a contract is negotiated, it is added to the list of contracts offered to the agent, which the agent can then accept.   The ship must be present at any waypoint with a faction present to negotiate a contract with that faction.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(NegotiateContract200Response, Integer, Hash)>] NegotiateContract200Response data, response status code and response headers
    def negotiate_contract_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.negotiate_contract ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.negotiate_contract"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/negotiate/contract'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'NegotiateContract200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.negotiate_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#negotiate_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Orbit Ship
    # Attempt to move your ship into orbit at its current location. The request will only succeed if your ship is capable of moving into orbit at the time of the request.  Orbiting ships are able to do actions that require the ship to be above surface such as navigating or extracting, but cannot access elements in their current waypoint, such as the market or a shipyard.  The endpoint is idempotent - successive calls will succeed even if the ship is already in orbit.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [OrbitShip200Response]
    def orbit_ship(ship_symbol, opts = {})
      data, _status_code, _headers = orbit_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Orbit Ship
    # Attempt to move your ship into orbit at its current location. The request will only succeed if your ship is capable of moving into orbit at the time of the request.  Orbiting ships are able to do actions that require the ship to be above surface such as navigating or extracting, but cannot access elements in their current waypoint, such as the market or a shipyard.  The endpoint is idempotent - successive calls will succeed even if the ship is already in orbit.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrbitShip200Response, Integer, Hash)>] OrbitShip200Response data, response status code and response headers
    def orbit_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.orbit_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.orbit_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/orbit'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'OrbitShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.orbit_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#orbit_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Ship Nav
    # Update the nav configuration of a ship.  Currently only supports configuring the Flight Mode of the ship, which affects its speed and fuel consumption.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [PatchShipNavRequest] :patch_ship_nav_request 
    # @return [GetShipNav200Response]
    def patch_ship_nav(ship_symbol, opts = {})
      data, _status_code, _headers = patch_ship_nav_with_http_info(ship_symbol, opts)
      data
    end

    # Patch Ship Nav
    # Update the nav configuration of a ship.  Currently only supports configuring the Flight Mode of the ship, which affects its speed and fuel consumption.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [PatchShipNavRequest] :patch_ship_nav_request 
    # @return [Array<(GetShipNav200Response, Integer, Hash)>] GetShipNav200Response data, response status code and response headers
    def patch_ship_nav_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.patch_ship_nav ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.patch_ship_nav"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/nav'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patch_ship_nav_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'GetShipNav200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.patch_ship_nav",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#patch_ship_nav\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Purchase Cargo
    # Purchase cargo from a market.  The ship must be docked in a waypoint that has `Marketplace` trait, and the market must be selling a good to be able to purchase it.  The maximum amount of units of a good that can be purchased in each transaction are denoted by the `tradeVolume` value of the good, which can be viewed by using the Get Market action.  Purchased goods are added to the ship's cargo hold.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [PurchaseCargoRequest] :purchase_cargo_request 
    # @return [PurchaseCargo201Response]
    def purchase_cargo(ship_symbol, opts = {})
      data, _status_code, _headers = purchase_cargo_with_http_info(ship_symbol, opts)
      data
    end

    # Purchase Cargo
    # Purchase cargo from a market.  The ship must be docked in a waypoint that has &#x60;Marketplace&#x60; trait, and the market must be selling a good to be able to purchase it.  The maximum amount of units of a good that can be purchased in each transaction are denoted by the &#x60;tradeVolume&#x60; value of the good, which can be viewed by using the Get Market action.  Purchased goods are added to the ship's cargo hold.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [PurchaseCargoRequest] :purchase_cargo_request 
    # @return [Array<(PurchaseCargo201Response, Integer, Hash)>] PurchaseCargo201Response data, response status code and response headers
    def purchase_cargo_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.purchase_cargo ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.purchase_cargo"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/purchase'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'purchase_cargo_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PurchaseCargo201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.purchase_cargo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#purchase_cargo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Purchase Ship
    # Purchase a ship from a Shipyard. In order to use this function, a ship under your agent's ownership must be in a waypoint that has the `Shipyard` trait, and the Shipyard must sell the type of the desired ship.  Shipyards typically offer ship types, which are predefined templates of ships that have dedicated roles. A template comes with a preset of an engine, a reactor, and a frame. It may also include a few modules and mounts.
    # @param [Hash] opts the optional parameters
    # @option opts [PurchaseShipRequest] :purchase_ship_request 
    # @return [PurchaseShip201Response]
    def purchase_ship(opts = {})
      data, _status_code, _headers = purchase_ship_with_http_info(opts)
      data
    end

    # Purchase Ship
    # Purchase a ship from a Shipyard. In order to use this function, a ship under your agent's ownership must be in a waypoint that has the &#x60;Shipyard&#x60; trait, and the Shipyard must sell the type of the desired ship.  Shipyards typically offer ship types, which are predefined templates of ships that have dedicated roles. A template comes with a preset of an engine, a reactor, and a frame. It may also include a few modules and mounts.
    # @param [Hash] opts the optional parameters
    # @option opts [PurchaseShipRequest] :purchase_ship_request 
    # @return [Array<(PurchaseShip201Response, Integer, Hash)>] PurchaseShip201Response data, response status code and response headers
    def purchase_ship_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.purchase_ship ...'
      end
      # resource path
      local_var_path = '/my/ships'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'purchase_ship_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PurchaseShip201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.purchase_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#purchase_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refuel Ship
    # Refuel your ship by buying fuel from the local market.  Requires the ship to be docked in a waypoint that has the `Marketplace` trait, and the market must be selling fuel in order to refuel.  Each fuel bought from the market replenishes 100 units in your ship's fuel.  Ships will always be refuel to their frame's maximum fuel capacity when using this action.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [RefuelShipRequest] :refuel_ship_request 
    # @return [RefuelShip200Response]
    def refuel_ship(ship_symbol, opts = {})
      data, _status_code, _headers = refuel_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Refuel Ship
    # Refuel your ship by buying fuel from the local market.  Requires the ship to be docked in a waypoint that has the &#x60;Marketplace&#x60; trait, and the market must be selling fuel in order to refuel.  Each fuel bought from the market replenishes 100 units in your ship's fuel.  Ships will always be refuel to their frame's maximum fuel capacity when using this action.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [RefuelShipRequest] :refuel_ship_request 
    # @return [Array<(RefuelShip200Response, Integer, Hash)>] RefuelShip200Response data, response status code and response headers
    def refuel_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.refuel_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.refuel_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/refuel'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'refuel_ship_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'RefuelShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.refuel_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#refuel_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove Mount
    # Remove a mount from a ship.  The ship must be docked in a waypoint that has the `Shipyard` trait, and must have the desired mount that it wish to remove installed.  A removal fee will be deduced from the agent by the Shipyard.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveMountRequest] :remove_mount_request 
    # @return [RemoveMount201Response]
    def remove_mount(ship_symbol, opts = {})
      data, _status_code, _headers = remove_mount_with_http_info(ship_symbol, opts)
      data
    end

    # Remove Mount
    # Remove a mount from a ship.  The ship must be docked in a waypoint that has the &#x60;Shipyard&#x60; trait, and must have the desired mount that it wish to remove installed.  A removal fee will be deduced from the agent by the Shipyard.
    # @param ship_symbol [String] The ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveMountRequest] :remove_mount_request 
    # @return [Array<(RemoveMount201Response, Integer, Hash)>] RemoveMount201Response data, response status code and response headers
    def remove_mount_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.remove_mount ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.remove_mount"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/mounts/remove'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'remove_mount_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'RemoveMount201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.remove_mount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#remove_mount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Repair Ship
    # Repair a ship, restoring the ship to maximum condition. The ship must be docked at a waypoint that has the `Shipyard` trait in order to use this function. To preview the cost of repairing the ship, use the Get action.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [RepairShip200Response]
    def repair_ship(ship_symbol, opts = {})
      data, _status_code, _headers = repair_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Repair Ship
    # Repair a ship, restoring the ship to maximum condition. The ship must be docked at a waypoint that has the &#x60;Shipyard&#x60; trait in order to use this function. To preview the cost of repairing the ship, use the Get action.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RepairShip200Response, Integer, Hash)>] RepairShip200Response data, response status code and response headers
    def repair_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.repair_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.repair_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/repair'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'RepairShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.repair_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#repair_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Scrap Ship
    # Scrap a ship, removing it from the game and returning a portion of the ship's value to the agent. The ship must be docked in a waypoint that has the `Shipyard` trait in order to use this function. To preview the amount of value that will be returned, use the Get Ship action.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [ScrapShip200Response]
    def scrap_ship(ship_symbol, opts = {})
      data, _status_code, _headers = scrap_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Scrap Ship
    # Scrap a ship, removing it from the game and returning a portion of the ship's value to the agent. The ship must be docked in a waypoint that has the &#x60;Shipyard&#x60; trait in order to use this function. To preview the amount of value that will be returned, use the Get Ship action.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ScrapShip200Response, Integer, Hash)>] ScrapShip200Response data, response status code and response headers
    def scrap_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.scrap_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.scrap_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/scrap'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'ScrapShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.scrap_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#scrap_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sell Cargo
    # Sell cargo in your ship to a market that trades this cargo. The ship must be docked in a waypoint that has the `Marketplace` trait in order to use this function.
    # @param ship_symbol [String] Symbol of a ship.
    # @param [Hash] opts the optional parameters
    # @option opts [SellCargoRequest] :sell_cargo_request 
    # @return [SellCargo201Response]
    def sell_cargo(ship_symbol, opts = {})
      data, _status_code, _headers = sell_cargo_with_http_info(ship_symbol, opts)
      data
    end

    # Sell Cargo
    # Sell cargo in your ship to a market that trades this cargo. The ship must be docked in a waypoint that has the &#x60;Marketplace&#x60; trait in order to use this function.
    # @param ship_symbol [String] Symbol of a ship.
    # @param [Hash] opts the optional parameters
    # @option opts [SellCargoRequest] :sell_cargo_request 
    # @return [Array<(SellCargo201Response, Integer, Hash)>] SellCargo201Response data, response status code and response headers
    def sell_cargo_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.sell_cargo ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.sell_cargo"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/sell'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'sell_cargo_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SellCargo201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.sell_cargo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#sell_cargo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ship Refine
    # Attempt to refine the raw materials on your ship. The request will only succeed if your ship is capable of refining at the time of the request. In order to be able to refine, a ship must have goods that can be refined and have installed a `Refinery` module that can refine it.  When refining, 30 basic goods will be converted into 10 processed goods.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @option opts [ShipRefineRequest] :ship_refine_request 
    # @return [ShipRefine201Response]
    def ship_refine(ship_symbol, opts = {})
      data, _status_code, _headers = ship_refine_with_http_info(ship_symbol, opts)
      data
    end

    # Ship Refine
    # Attempt to refine the raw materials on your ship. The request will only succeed if your ship is capable of refining at the time of the request. In order to be able to refine, a ship must have goods that can be refined and have installed a &#x60;Refinery&#x60; module that can refine it.  When refining, 30 basic goods will be converted into 10 processed goods.
    # @param ship_symbol [String] The symbol of the ship.
    # @param [Hash] opts the optional parameters
    # @option opts [ShipRefineRequest] :ship_refine_request 
    # @return [Array<(ShipRefine201Response, Integer, Hash)>] ShipRefine201Response data, response status code and response headers
    def ship_refine_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.ship_refine ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.ship_refine"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/refine'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ship_refine_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ShipRefine201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.ship_refine",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#ship_refine\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Siphon Resources
    # Siphon gases, such as hydrocarbon, from gas giants.  The ship must be in orbit to be able to siphon and must have siphon mounts and a gas processor installed.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [SiphonResources201Response]
    def siphon_resources(ship_symbol, opts = {})
      data, _status_code, _headers = siphon_resources_with_http_info(ship_symbol, opts)
      data
    end

    # Siphon Resources
    # Siphon gases, such as hydrocarbon, from gas giants.  The ship must be in orbit to be able to siphon and must have siphon mounts and a gas processor installed.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SiphonResources201Response, Integer, Hash)>] SiphonResources201Response data, response status code and response headers
    def siphon_resources_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.siphon_resources ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.siphon_resources"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/siphon'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'SiphonResources201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.siphon_resources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#siphon_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Transfer Cargo
    # Transfer cargo between ships.  The receiving ship must be in the same waypoint as the transferring ship, and it must able to hold the additional cargo after the transfer is complete. Both ships also must be in the same state, either both are docked or both are orbiting.  The response body's cargo shows the cargo of the transferring ship after the transfer is complete.
    # @param ship_symbol [String] The transferring ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [TransferCargoRequest] :transfer_cargo_request 
    # @return [TransferCargo200Response]
    def transfer_cargo(ship_symbol, opts = {})
      data, _status_code, _headers = transfer_cargo_with_http_info(ship_symbol, opts)
      data
    end

    # Transfer Cargo
    # Transfer cargo between ships.  The receiving ship must be in the same waypoint as the transferring ship, and it must able to hold the additional cargo after the transfer is complete. Both ships also must be in the same state, either both are docked or both are orbiting.  The response body's cargo shows the cargo of the transferring ship after the transfer is complete.
    # @param ship_symbol [String] The transferring ship's symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [TransferCargoRequest] :transfer_cargo_request 
    # @return [Array<(TransferCargo200Response, Integer, Hash)>] TransferCargo200Response data, response status code and response headers
    def transfer_cargo_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.transfer_cargo ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.transfer_cargo"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/transfer'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'transfer_cargo_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'TransferCargo200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.transfer_cargo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#transfer_cargo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Warp Ship
    # Warp your ship to a target destination in another system. The ship must be in orbit to use this function and must have the `Warp Drive` module installed. Warping will consume the necessary fuel from the ship's manifest.  The returned response will detail the route information including the expected time of arrival. Most ship actions are unavailable until the ship has arrived at its destination.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [NavigateShipRequest] :navigate_ship_request 
    # @return [WarpShip200Response]
    def warp_ship(ship_symbol, opts = {})
      data, _status_code, _headers = warp_ship_with_http_info(ship_symbol, opts)
      data
    end

    # Warp Ship
    # Warp your ship to a target destination in another system. The ship must be in orbit to use this function and must have the &#x60;Warp Drive&#x60; module installed. Warping will consume the necessary fuel from the ship's manifest.  The returned response will detail the route information including the expected time of arrival. Most ship actions are unavailable until the ship has arrived at its destination.
    # @param ship_symbol [String] The ship symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [NavigateShipRequest] :navigate_ship_request 
    # @return [Array<(WarpShip200Response, Integer, Hash)>] WarpShip200Response data, response status code and response headers
    def warp_ship_with_http_info(ship_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FleetApi.warp_ship ...'
      end
      # verify the required parameter 'ship_symbol' is set
      if @api_client.config.client_side_validation && ship_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'ship_symbol' when calling FleetApi.warp_ship"
      end
      # resource path
      local_var_path = '/my/ships/{shipSymbol}/warp'.sub('{' + 'shipSymbol' + '}', CGI.escape(ship_symbol.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'navigate_ship_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'WarpShip200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FleetApi.warp_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FleetApi#warp_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
