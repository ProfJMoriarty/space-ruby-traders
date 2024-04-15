require 'cgi'

module SpaceRubyTraderClient
  class FactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Faction
    # View the details of a faction.
    # @param faction_symbol [String] The faction symbol
    # @param [Hash] opts the optional parameters
    # @return [GetFaction200Response]
    def get_faction(faction_symbol, opts = {})
      data, _status_code, _headers = get_faction_with_http_info(faction_symbol, opts)
      data
    end

    # Get Faction
    # View the details of a faction.
    # @param faction_symbol [String] The faction symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetFaction200Response, Integer, Hash)>] GetFaction200Response data, response status code and response headers
    def get_faction_with_http_info(faction_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionsApi.get_faction ...'
      end
      # verify the required parameter 'faction_symbol' is set
      if @api_client.config.client_side_validation && faction_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'faction_symbol' when calling FactionsApi.get_faction"
      end
      # resource path
      local_var_path = '/factions/{factionSymbol}'.sub('{' + 'factionSymbol' + '}', CGI.escape(faction_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'GetFaction200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FactionsApi.get_faction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionsApi#get_faction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Factions
    # Return a paginated list of all the factions in the game.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [GetFactions200Response]
    def get_factions(opts = {})
      data, _status_code, _headers = get_factions_with_http_info(opts)
      data
    end

    # List Factions
    # Return a paginated list of all the factions in the game.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page What entry offset to request (default to 1)
    # @option opts [Integer] :limit How many entries to return per page (default to 10)
    # @return [Array<(GetFactions200Response, Integer, Hash)>] GetFactions200Response data, response status code and response headers
    def get_factions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FactionsApi.get_factions ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling FactionsApi.get_factions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 20
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FactionsApi.get_factions, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FactionsApi.get_factions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/factions'

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
      return_type = opts[:debug_return_type] || 'GetFactions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AgentToken']

      new_options = opts.merge(
        :operation => :"FactionsApi.get_factions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FactionsApi#get_factions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
