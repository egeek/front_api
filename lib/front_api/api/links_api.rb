=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module FrontApi
  class LinksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create link
    # Create a link. You must supply either `pattern` or `external_url` in the request, but not both (`pattern` is for dynamic objects while `external_url` is for standard links). If `pattern` is provided, the API call updates the dynamic objects matching the exact pattern. If the link is resolved to an installed links integration, any name retrieved from the integration will override the provided name in the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateLink] :create_link Link to create
    # @return [LinkResponse]
    def create_link(opts = {})
      data, _status_code, _headers = create_link_with_http_info(opts)
      data
    end

    # Create link
    # Create a link. You must supply either &#x60;pattern&#x60; or &#x60;external_url&#x60; in the request, but not both (&#x60;pattern&#x60; is for dynamic objects while &#x60;external_url&#x60; is for standard links). If &#x60;pattern&#x60; is provided, the API call updates the dynamic objects matching the exact pattern. If the link is resolved to an installed links integration, any name retrieved from the integration will override the provided name in the request.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateLink] :create_link Link to create
    # @return [Array<(LinkResponse, Integer, Hash)>] LinkResponse data, response status code and response headers
    def create_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinksApi.create_link ...'
      end
      # resource path
      local_var_path = '/links'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_link'])

      # return_type
      return_type = opts[:debug_return_type] || 'LinkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"LinksApi.create_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#create_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get link
    # Fetch a link.
    # @param link_id [String] The link ID
    # @param [Hash] opts the optional parameters
    # @return [LinkResponse]
    def get_link(link_id, opts = {})
      data, _status_code, _headers = get_link_with_http_info(link_id, opts)
      data
    end

    # Get link
    # Fetch a link.
    # @param link_id [String] The link ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LinkResponse, Integer, Hash)>] LinkResponse data, response status code and response headers
    def get_link_with_http_info(link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinksApi.get_link ...'
      end
      # verify the required parameter 'link_id' is set
      if @api_client.config.client_side_validation && link_id.nil?
        fail ArgumentError, "Missing the required parameter 'link_id' when calling LinksApi.get_link"
      end
      # resource path
      local_var_path = '/links/{link_id}'.sub('{' + 'link_id' + '}', CGI.escape(link_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LinkResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"LinksApi.get_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#get_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List link conversations
    # List the conversations linked to a specific link. For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 
    # @param link_id [String] The Link ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;statuses&#x60;, whose value should be a list of conversation statuses (&#x60;assigned&#x60;, &#x60;unassigned&#x60;, &#x60;archived&#x60;, or &#x60;deleted&#x60;).
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :sort_by Field used to sort the conversations. Only supports &#x60;date&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [ListContactConversations200Response]
    def list_link_conversations(link_id, opts = {})
      data, _status_code, _headers = list_link_conversations_with_http_info(link_id, opts)
      data
    end

    # List link conversations
    # List the conversations linked to a specific link. For more advanced filtering, see the [search endpoint](https://dev.frontapp.com/reference/conversations#search-conversations). 
    # @param link_id [String] The Link ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;statuses&#x60;, whose value should be a list of conversation statuses (&#x60;assigned&#x60;, &#x60;unassigned&#x60;, &#x60;archived&#x60;, or &#x60;deleted&#x60;).
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :sort_by Field used to sort the conversations. Only supports &#x60;date&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [Array<(ListContactConversations200Response, Integer, Hash)>] ListContactConversations200Response data, response status code and response headers
    def list_link_conversations_with_http_info(link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinksApi.list_link_conversations ...'
      end
      # verify the required parameter 'link_id' is set
      if @api_client.config.client_side_validation && link_id.nil?
        fail ArgumentError, "Missing the required parameter 'link_id' when calling LinksApi.list_link_conversations"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LinksApi.list_link_conversations, must be smaller than or equal to 100.'
      end

      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !allowable_values.include?(opts[:'sort_order'])
        fail ArgumentError, "invalid value for \"sort_order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/links/{link_id}/conversations'.sub('{' + 'link_id' + '}', CGI.escape(link_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sort_order'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListContactConversations200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"LinksApi.list_link_conversations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#list_link_conversations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List links
    # List the links of the company paginated by id. Allows filtering by link type via the q.types param.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;types&#x60;, whose value should be a list of link types (examples - &#x60;web&#x60;, &#x60;jira&#x60;, &#x60;asana&#x60; ).
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :sort_by Field used to sort the links. Only supports &#x60;id&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [ListLinks200Response]
    def list_links(opts = {})
      data, _status_code, _headers = list_links_with_http_info(opts)
      data
    end

    # List links
    # List the links of the company paginated by id. Allows filtering by link type via the q.types param.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q [Search query object](https://dev.frontapp.com/docs/query-object-q) with a property &#x60;types&#x60;, whose value should be a list of link types (examples - &#x60;web&#x60;, &#x60;jira&#x60;, &#x60;asana&#x60; ).
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :sort_by Field used to sort the links. Only supports &#x60;id&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [Array<(ListLinks200Response, Integer, Hash)>] ListLinks200Response data, response status code and response headers
    def list_links_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinksApi.list_links ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LinksApi.list_links, must be smaller than or equal to 100.'
      end

      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !allowable_values.include?(opts[:'sort_order'])
        fail ArgumentError, "invalid value for \"sort_order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/links'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sort_order'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListLinks200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"LinksApi.list_links",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#list_links\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a link
    # Update a link.
    # @param link_id [String] The link ID
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateLink] :update_link Link fields to update
    # @return [nil]
    def update_a_link(link_id, opts = {})
      update_a_link_with_http_info(link_id, opts)
      nil
    end

    # Update a link
    # Update a link.
    # @param link_id [String] The link ID
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateLink] :update_link Link fields to update
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_a_link_with_http_info(link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinksApi.update_a_link ...'
      end
      # verify the required parameter 'link_id' is set
      if @api_client.config.client_side_validation && link_id.nil?
        fail ArgumentError, "Missing the required parameter 'link_id' when calling LinksApi.update_a_link"
      end
      # resource path
      local_var_path = '/links/{link_id}'.sub('{' + 'link_id' + '}', CGI.escape(link_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_link'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"LinksApi.update_a_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinksApi#update_a_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
