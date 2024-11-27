=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module FrontApi
  class MessageTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create child template
    # Create a new message template as a child of the given folder
    # @param message_template_folder_id [String] The parent message template folder ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMessageTemplateAsChild] :create_message_template_as_child Message template to create
    # @return [MessageTemplateResponse]
    def create_child_template(message_template_folder_id, opts = {})
      data, _status_code, _headers = create_child_template_with_http_info(message_template_folder_id, opts)
      data
    end

    # Create child template
    # Create a new message template as a child of the given folder
    # @param message_template_folder_id [String] The parent message template folder ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateMessageTemplateAsChild] :create_message_template_as_child Message template to create
    # @return [Array<(MessageTemplateResponse, Integer, Hash)>] MessageTemplateResponse data, response status code and response headers
    def create_child_template_with_http_info(message_template_folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.create_child_template ...'
      end
      # verify the required parameter 'message_template_folder_id' is set
      if @api_client.config.client_side_validation && message_template_folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_template_folder_id' when calling MessageTemplatesApi.create_child_template"
      end
      # resource path
      local_var_path = '/message_template_folders/{message_template_folder_id}/message_templates'.sub('{' + 'message_template_folder_id' + '}', CGI.escape(message_template_folder_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_message_template_as_child'])

      # return_type
      return_type = opts[:debug_return_type] || 'MessageTemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.create_child_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#create_child_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create message template
    # Create a new message template.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSharedMessageTemplate] :create_shared_message_template Message template to create
    # @return [MessageTemplateResponse]
    def create_message_template(opts = {})
      data, _status_code, _headers = create_message_template_with_http_info(opts)
      data
    end

    # Create message template
    # Create a new message template.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSharedMessageTemplate] :create_shared_message_template Message template to create
    # @return [Array<(MessageTemplateResponse, Integer, Hash)>] MessageTemplateResponse data, response status code and response headers
    def create_message_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.create_message_template ...'
      end
      # resource path
      local_var_path = '/message_templates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_shared_message_template'])

      # return_type
      return_type = opts[:debug_return_type] || 'MessageTemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.create_message_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#create_message_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create team message template
    # Create a new message template for the given team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSharedMessageTemplate] :create_shared_message_template Message template to create
    # @return [MessageTemplateResponse]
    def create_team_message_template(team_id, opts = {})
      data, _status_code, _headers = create_team_message_template_with_http_info(team_id, opts)
      data
    end

    # Create team message template
    # Create a new message template for the given team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSharedMessageTemplate] :create_shared_message_template Message template to create
    # @return [Array<(MessageTemplateResponse, Integer, Hash)>] MessageTemplateResponse data, response status code and response headers
    def create_team_message_template_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.create_team_message_template ...'
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling MessageTemplatesApi.create_team_message_template"
      end
      # resource path
      local_var_path = '/teams/{team_id}/message_templates'.sub('{' + 'team_id' + '}', CGI.escape(team_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_shared_message_template'])

      # return_type
      return_type = opts[:debug_return_type] || 'MessageTemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.create_team_message_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#create_team_message_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create teammate message template
    # Create a new message template for the given teammate
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePrivateMessageTemplate] :create_private_message_template Message template to create
    # @return [MessageTemplateResponse]
    def create_teammate_message_template(teammate_id, opts = {})
      data, _status_code, _headers = create_teammate_message_template_with_http_info(teammate_id, opts)
      data
    end

    # Create teammate message template
    # Create a new message template for the given teammate
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePrivateMessageTemplate] :create_private_message_template Message template to create
    # @return [Array<(MessageTemplateResponse, Integer, Hash)>] MessageTemplateResponse data, response status code and response headers
    def create_teammate_message_template_with_http_info(teammate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.create_teammate_message_template ...'
      end
      # verify the required parameter 'teammate_id' is set
      if @api_client.config.client_side_validation && teammate_id.nil?
        fail ArgumentError, "Missing the required parameter 'teammate_id' when calling MessageTemplatesApi.create_teammate_message_template"
      end
      # resource path
      local_var_path = '/teammates/{teammate_id}/message_templates'.sub('{' + 'teammate_id' + '}', CGI.escape(teammate_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_private_message_template'])

      # return_type
      return_type = opts[:debug_return_type] || 'MessageTemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.create_teammate_message_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#create_teammate_message_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete message template
    # Delete a message template
    # @param message_template_id [String] The message template ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_message_template(message_template_id, opts = {})
      delete_message_template_with_http_info(message_template_id, opts)
      nil
    end

    # Delete message template
    # Delete a message template
    # @param message_template_id [String] The message template ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_message_template_with_http_info(message_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.delete_message_template ...'
      end
      # verify the required parameter 'message_template_id' is set
      if @api_client.config.client_side_validation && message_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_template_id' when calling MessageTemplatesApi.delete_message_template"
      end
      # resource path
      local_var_path = '/message_templates/{message_template_id}'.sub('{' + 'message_template_id' + '}', CGI.escape(message_template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.delete_message_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#delete_message_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get child templates
    # Fetch the child message templates of a message template folder.
    # @param message_template_folder_id [String] The message template folder ID
    # @param [Hash] opts the optional parameters
    # @return [ListFolders200Response]
    def get_child_templates(message_template_folder_id, opts = {})
      data, _status_code, _headers = get_child_templates_with_http_info(message_template_folder_id, opts)
      data
    end

    # Get child templates
    # Fetch the child message templates of a message template folder.
    # @param message_template_folder_id [String] The message template folder ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListFolders200Response, Integer, Hash)>] ListFolders200Response data, response status code and response headers
    def get_child_templates_with_http_info(message_template_folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.get_child_templates ...'
      end
      # verify the required parameter 'message_template_folder_id' is set
      if @api_client.config.client_side_validation && message_template_folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_template_folder_id' when calling MessageTemplatesApi.get_child_templates"
      end
      # resource path
      local_var_path = '/message_template_folders/{message_template_folder_id}/message_templates'.sub('{' + 'message_template_folder_id' + '}', CGI.escape(message_template_folder_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListFolders200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.get_child_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#get_child_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get message template
    # Fetch a message template.
    # @param message_template_id [String] The message template ID
    # @param [Hash] opts the optional parameters
    # @return [MessageTemplateResponse]
    def get_message_template(message_template_id, opts = {})
      data, _status_code, _headers = get_message_template_with_http_info(message_template_id, opts)
      data
    end

    # Get message template
    # Fetch a message template.
    # @param message_template_id [String] The message template ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageTemplateResponse, Integer, Hash)>] MessageTemplateResponse data, response status code and response headers
    def get_message_template_with_http_info(message_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.get_message_template ...'
      end
      # verify the required parameter 'message_template_id' is set
      if @api_client.config.client_side_validation && message_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_template_id' when calling MessageTemplatesApi.get_message_template"
      end
      # resource path
      local_var_path = '/message_templates/{message_template_id}'.sub('{' + 'message_template_id' + '}', CGI.escape(message_template_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MessageTemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.get_message_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#get_message_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List message templates
    # List the message templates.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [ListMessageTemplates200Response]
    def list_message_templates(opts = {})
      data, _status_code, _headers = list_message_templates_with_http_info(opts)
      data
    end

    # List message templates
    # List the message templates.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [Array<(ListMessageTemplates200Response, Integer, Hash)>] ListMessageTemplates200Response data, response status code and response headers
    def list_message_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.list_message_templates ...'
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !allowable_values.include?(opts[:'sort_order'])
        fail ArgumentError, "invalid value for \"sort_order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/message_templates'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ListMessageTemplates200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.list_message_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#list_message_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List team message templates
    # List the message templates belonging to the requested team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [ListMessageTemplates200Response]
    def list_team_message_templates(team_id, opts = {})
      data, _status_code, _headers = list_team_message_templates_with_http_info(team_id, opts)
      data
    end

    # List team message templates
    # List the message templates belonging to the requested team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [Array<(ListMessageTemplates200Response, Integer, Hash)>] ListMessageTemplates200Response data, response status code and response headers
    def list_team_message_templates_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.list_team_message_templates ...'
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling MessageTemplatesApi.list_team_message_templates"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !allowable_values.include?(opts[:'sort_order'])
        fail ArgumentError, "invalid value for \"sort_order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/teams/{team_id}/message_templates'.sub('{' + 'team_id' + '}', CGI.escape(team_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ListMessageTemplates200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.list_team_message_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#list_team_message_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List teammate message templates
    # List the message templates belonging to the requested teammate.
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [ListMessageTemplates200Response]
    def list_teammate_message_templates(teammate_id, opts = {})
      data, _status_code, _headers = list_teammate_message_templates_with_http_info(teammate_id, opts)
      data
    end

    # List teammate message templates
    # List the message templates belonging to the requested teammate.
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Field used to sort the message templates. Either &#x60;created_at&#x60;, &#x60;updated_at&#x60;, or &#x60;sort_order&#x60;.
    # @option opts [String] :sort_order Order by which results should be sorted
    # @return [Array<(ListMessageTemplates200Response, Integer, Hash)>] ListMessageTemplates200Response data, response status code and response headers
    def list_teammate_message_templates_with_http_info(teammate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.list_teammate_message_templates ...'
      end
      # verify the required parameter 'teammate_id' is set
      if @api_client.config.client_side_validation && teammate_id.nil?
        fail ArgumentError, "Missing the required parameter 'teammate_id' when calling MessageTemplatesApi.list_teammate_message_templates"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !allowable_values.include?(opts[:'sort_order'])
        fail ArgumentError, "invalid value for \"sort_order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/teammates/{teammate_id}/message_templates'.sub('{' + 'teammate_id' + '}', CGI.escape(teammate_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ListMessageTemplates200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.list_teammate_message_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#list_teammate_message_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update message template
    # Update message template
    # @param message_template_id [String] The message template ID
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMessageTemplate] :update_message_template Message template to update
    # @return [MessageTemplateResponse]
    def update_message_template(message_template_id, opts = {})
      data, _status_code, _headers = update_message_template_with_http_info(message_template_id, opts)
      data
    end

    # Update message template
    # Update message template
    # @param message_template_id [String] The message template ID
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateMessageTemplate] :update_message_template Message template to update
    # @return [Array<(MessageTemplateResponse, Integer, Hash)>] MessageTemplateResponse data, response status code and response headers
    def update_message_template_with_http_info(message_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageTemplatesApi.update_message_template ...'
      end
      # verify the required parameter 'message_template_id' is set
      if @api_client.config.client_side_validation && message_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_template_id' when calling MessageTemplatesApi.update_message_template"
      end
      # resource path
      local_var_path = '/message_templates/{message_template_id}'.sub('{' + 'message_template_id' + '}', CGI.escape(message_template_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_message_template'])

      # return_type
      return_type = opts[:debug_return_type] || 'MessageTemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"MessageTemplatesApi.update_message_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageTemplatesApi#update_message_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
