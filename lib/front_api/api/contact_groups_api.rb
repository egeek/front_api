=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module FrontApi
  class ContactGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add contacts to group
    # Add contacts to the requested group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [AddContactsToGroup] :add_contacts_to_group 
    # @return [nil]
    def add_contacts_to_group(contact_group_id, opts = {})
      add_contacts_to_group_with_http_info(contact_group_id, opts)
      nil
    end

    # Add contacts to group
    # Add contacts to the requested group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [AddContactsToGroup] :add_contacts_to_group 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_contacts_to_group_with_http_info(contact_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.add_contacts_to_group ...'
      end
      # verify the required parameter 'contact_group_id' is set
      if @api_client.config.client_side_validation && contact_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_group_id' when calling ContactGroupsApi.add_contacts_to_group"
      end
      # resource path
      local_var_path = '/contact_groups/{contact_group_id}/contacts'.sub('{' + 'contact_group_id' + '}', CGI.escape(contact_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_contacts_to_group'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.add_contacts_to_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#add_contacts_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create group
    # Create a new contact group in the default team (workspace).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactGroup] :create_contact_group 
    # @return [nil]
    def create_group(opts = {})
      create_group_with_http_info(opts)
      nil
    end

    # Create group
    # Create a new contact group in the default team (workspace).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactGroup] :create_contact_group 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.create_group ...'
      end
      # resource path
      local_var_path = '/contact_groups'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_contact_group'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.create_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create team group
    # Create a new contact group for the requested team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactGroup] :create_contact_group 
    # @return [nil]
    def create_team_group(team_id, opts = {})
      create_team_group_with_http_info(team_id, opts)
      nil
    end

    # Create team group
    # Create a new contact group for the requested team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactGroup] :create_contact_group 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_team_group_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.create_team_group ...'
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling ContactGroupsApi.create_team_group"
      end
      # resource path
      local_var_path = '/teams/{team_id}/contact_groups'.sub('{' + 'team_id' + '}', CGI.escape(team_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_contact_group'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.create_team_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#create_team_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create teammate group
    # Create a new contact group for the requested teammate.
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactGroup] :create_contact_group 
    # @return [nil]
    def create_teammate_group(teammate_id, opts = {})
      create_teammate_group_with_http_info(teammate_id, opts)
      nil
    end

    # Create teammate group
    # Create a new contact group for the requested teammate.
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactGroup] :create_contact_group 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_teammate_group_with_http_info(teammate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.create_teammate_group ...'
      end
      # verify the required parameter 'teammate_id' is set
      if @api_client.config.client_side_validation && teammate_id.nil?
        fail ArgumentError, "Missing the required parameter 'teammate_id' when calling ContactGroupsApi.create_teammate_group"
      end
      # resource path
      local_var_path = '/teammates/{teammate_id}/contact_groups'.sub('{' + 'teammate_id' + '}', CGI.escape(teammate_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_contact_group'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.create_teammate_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#create_teammate_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete group
    # Delete a contact group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group(contact_group_id, opts = {})
      delete_group_with_http_info(contact_group_id, opts)
      nil
    end

    # Delete group
    # Delete a contact group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_with_http_info(contact_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.delete_group ...'
      end
      # verify the required parameter 'contact_group_id' is set
      if @api_client.config.client_side_validation && contact_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_group_id' when calling ContactGroupsApi.delete_group"
      end
      # resource path
      local_var_path = '/contact_groups/{contact_group_id}'.sub('{' + 'contact_group_id' + '}', CGI.escape(contact_group_id.to_s))

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
        :operation => :"ContactGroupsApi.delete_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List contacts in group
    # List the contacts belonging to the requested group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @return [ListAccountContacts200Response]
    def list_contacts_in_group(contact_group_id, opts = {})
      data, _status_code, _headers = list_contacts_in_group_with_http_info(contact_group_id, opts)
      data
    end

    # List contacts in group
    # List the contacts belonging to the requested group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @return [Array<(ListAccountContacts200Response, Integer, Hash)>] ListAccountContacts200Response data, response status code and response headers
    def list_contacts_in_group_with_http_info(contact_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.list_contacts_in_group ...'
      end
      # verify the required parameter 'contact_group_id' is set
      if @api_client.config.client_side_validation && contact_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_group_id' when calling ContactGroupsApi.list_contacts_in_group"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactGroupsApi.list_contacts_in_group, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/contact_groups/{contact_group_id}/contacts'.sub('{' + 'contact_group_id' + '}', CGI.escape(contact_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListAccountContacts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.list_contacts_in_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#list_contacts_in_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List groups
    # List the contact groups.
    # @param [Hash] opts the optional parameters
    # @return [ListGroups200Response]
    def list_groups(opts = {})
      data, _status_code, _headers = list_groups_with_http_info(opts)
      data
    end

    # List groups
    # List the contact groups.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListGroups200Response, Integer, Hash)>] ListGroups200Response data, response status code and response headers
    def list_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.list_groups ...'
      end
      # resource path
      local_var_path = '/contact_groups'

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
      return_type = opts[:debug_return_type] || 'ListGroups200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.list_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#list_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List team groups
    # List contact groups belonging to the requested team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @return [ListGroups200Response]
    def list_team_groups(team_id, opts = {})
      data, _status_code, _headers = list_team_groups_with_http_info(team_id, opts)
      data
    end

    # List team groups
    # List contact groups belonging to the requested team (workspace).
    # @param team_id [String] The team ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListGroups200Response, Integer, Hash)>] ListGroups200Response data, response status code and response headers
    def list_team_groups_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.list_team_groups ...'
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling ContactGroupsApi.list_team_groups"
      end
      # resource path
      local_var_path = '/teams/{team_id}/contact_groups'.sub('{' + 'team_id' + '}', CGI.escape(team_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListGroups200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.list_team_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#list_team_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List teammate groups
    # List the contact groups belonging to the requested teammate.
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @return [ListGroups200Response]
    def list_teammate_groups(teammate_id, opts = {})
      data, _status_code, _headers = list_teammate_groups_with_http_info(teammate_id, opts)
      data
    end

    # List teammate groups
    # List the contact groups belonging to the requested teammate.
    # @param teammate_id [String] The teammate ID. Alternatively, you can supply an email as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListGroups200Response, Integer, Hash)>] ListGroups200Response data, response status code and response headers
    def list_teammate_groups_with_http_info(teammate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.list_teammate_groups ...'
      end
      # verify the required parameter 'teammate_id' is set
      if @api_client.config.client_side_validation && teammate_id.nil?
        fail ArgumentError, "Missing the required parameter 'teammate_id' when calling ContactGroupsApi.list_teammate_groups"
      end
      # resource path
      local_var_path = '/teammates/{teammate_id}/contact_groups'.sub('{' + 'teammate_id' + '}', CGI.escape(teammate_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListGroups200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.list_teammate_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#list_teammate_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove contacts from group
    # Remove contacts from the requested group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveContactsFromGroup] :remove_contacts_from_group 
    # @return [nil]
    def remove_contacts_from_group(contact_group_id, opts = {})
      remove_contacts_from_group_with_http_info(contact_group_id, opts)
      nil
    end

    # Remove contacts from group
    # Remove contacts from the requested group.
    # @param contact_group_id [String] The contact group ID
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveContactsFromGroup] :remove_contacts_from_group 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_contacts_from_group_with_http_info(contact_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactGroupsApi.remove_contacts_from_group ...'
      end
      # verify the required parameter 'contact_group_id' is set
      if @api_client.config.client_side_validation && contact_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_group_id' when calling ContactGroupsApi.remove_contacts_from_group"
      end
      # resource path
      local_var_path = '/contact_groups/{contact_group_id}/contacts'.sub('{' + 'contact_group_id' + '}', CGI.escape(contact_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'remove_contacts_from_group'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactGroupsApi.remove_contacts_from_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#remove_contacts_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
