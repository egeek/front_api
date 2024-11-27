=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module FrontApi
  class KnowledgeBaseCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a knowledge base category
    # Deletes a knowledge base category.  > ⚠️ Warning > > When a category is deleted, all articles in the category are also deleted.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_a_knowledge_base_category(category_id, opts = {})
      delete_a_knowledge_base_category_with_http_info(category_id, opts)
      nil
    end

    # Delete a knowledge base category
    # Deletes a knowledge base category.  &gt; ⚠️ Warning &gt; &gt; When a category is deleted, all articles in the category are also deleted.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_a_knowledge_base_category_with_http_info(category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KnowledgeBaseCategoriesApi.delete_a_knowledge_base_category ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling KnowledgeBaseCategoriesApi.delete_a_knowledge_base_category"
      end
      # resource path
      local_var_path = '/knowledge_base_categories/{category_id}'.sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s))

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
        :operation => :"KnowledgeBaseCategoriesApi.delete_a_knowledge_base_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeBaseCategoriesApi#delete_a_knowledge_base_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a knowledge base category
    # Fetches a knowledge base category.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to fetch
    # @param [Hash] opts the optional parameters
    # @return [KnowledgeBaseCategorySlimResponse]
    def get_a_knowledge_base_category(category_id, opts = {})
      data, _status_code, _headers = get_a_knowledge_base_category_with_http_info(category_id, opts)
      data
    end

    # Get a knowledge base category
    # Fetches a knowledge base category.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(KnowledgeBaseCategorySlimResponse, Integer, Hash)>] KnowledgeBaseCategorySlimResponse data, response status code and response headers
    def get_a_knowledge_base_category_with_http_info(category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KnowledgeBaseCategoriesApi.get_a_knowledge_base_category ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling KnowledgeBaseCategoriesApi.get_a_knowledge_base_category"
      end
      # resource path
      local_var_path = '/knowledge_base_categories/{category_id}'.sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s))

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
      return_type = opts[:debug_return_type] || 'KnowledgeBaseCategorySlimResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"KnowledgeBaseCategoriesApi.get_a_knowledge_base_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeBaseCategoriesApi#get_a_knowledge_base_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get knowledge base category content in default locale
    # Fetches a knowledge base category with content in the default locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to fetch
    # @param [Hash] opts the optional parameters
    # @return [KnowledgeBaseCategoryResponse]
    def get_knowledge_base_category_content_in_default_locale(category_id, opts = {})
      data, _status_code, _headers = get_knowledge_base_category_content_in_default_locale_with_http_info(category_id, opts)
      data
    end

    # Get knowledge base category content in default locale
    # Fetches a knowledge base category with content in the default locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(KnowledgeBaseCategoryResponse, Integer, Hash)>] KnowledgeBaseCategoryResponse data, response status code and response headers
    def get_knowledge_base_category_content_in_default_locale_with_http_info(category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KnowledgeBaseCategoriesApi.get_knowledge_base_category_content_in_default_locale ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling KnowledgeBaseCategoriesApi.get_knowledge_base_category_content_in_default_locale"
      end
      # resource path
      local_var_path = '/knowledge_base_categories/{category_id}/content'.sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s))

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
      return_type = opts[:debug_return_type] || 'KnowledgeBaseCategoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"KnowledgeBaseCategoriesApi.get_knowledge_base_category_content_in_default_locale",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeBaseCategoriesApi#get_knowledge_base_category_content_in_default_locale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get knowledge base category with content in specified locale
    # Fetches a knowledge base category with content for a given locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to fetch
    # @param locale [String] The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch
    # @param [Hash] opts the optional parameters
    # @return [KnowledgeBaseCategoryResponse]
    def get_knowledge_base_category_with_content_in_specified_locale(category_id, locale, opts = {})
      data, _status_code, _headers = get_knowledge_base_category_with_content_in_specified_locale_with_http_info(category_id, locale, opts)
      data
    end

    # Get knowledge base category with content in specified locale
    # Fetches a knowledge base category with content for a given locale.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to fetch
    # @param locale [String] The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the content to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(KnowledgeBaseCategoryResponse, Integer, Hash)>] KnowledgeBaseCategoryResponse data, response status code and response headers
    def get_knowledge_base_category_with_content_in_specified_locale_with_http_info(category_id, locale, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KnowledgeBaseCategoriesApi.get_knowledge_base_category_with_content_in_specified_locale ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling KnowledgeBaseCategoriesApi.get_knowledge_base_category_with_content_in_specified_locale"
      end
      # verify the required parameter 'locale' is set
      if @api_client.config.client_side_validation && locale.nil?
        fail ArgumentError, "Missing the required parameter 'locale' when calling KnowledgeBaseCategoriesApi.get_knowledge_base_category_with_content_in_specified_locale"
      end
      # resource path
      local_var_path = '/knowledge_base_categories/{category_id}/locales/{locale}/content'.sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s)).sub('{' + 'locale' + '}', CGI.escape(locale.to_s))

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
      return_type = opts[:debug_return_type] || 'KnowledgeBaseCategoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"KnowledgeBaseCategoriesApi.get_knowledge_base_category_with_content_in_specified_locale",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeBaseCategoriesApi#get_knowledge_base_category_with_content_in_specified_locale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List categories in a knowledge base
    # List categories in a knowledge base.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param knowledge_base_id [String] The ID of the knowledge base
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @return [ListCategoriesInAKnowledgeBase200Response]
    def list_categories_in_a_knowledge_base(knowledge_base_id, opts = {})
      data, _status_code, _headers = list_categories_in_a_knowledge_base_with_http_info(knowledge_base_id, opts)
      data
    end

    # List categories in a knowledge base
    # List categories in a knowledge base.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param knowledge_base_id [String] The ID of the knowledge base
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Max number of results per [page](https://dev.frontapp.com/docs/pagination)
    # @option opts [String] :page_token Token to use to request the [next page](https://dev.frontapp.com/docs/pagination)
    # @return [Array<(ListCategoriesInAKnowledgeBase200Response, Integer, Hash)>] ListCategoriesInAKnowledgeBase200Response data, response status code and response headers
    def list_categories_in_a_knowledge_base_with_http_info(knowledge_base_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KnowledgeBaseCategoriesApi.list_categories_in_a_knowledge_base ...'
      end
      # verify the required parameter 'knowledge_base_id' is set
      if @api_client.config.client_side_validation && knowledge_base_id.nil?
        fail ArgumentError, "Missing the required parameter 'knowledge_base_id' when calling KnowledgeBaseCategoriesApi.list_categories_in_a_knowledge_base"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KnowledgeBaseCategoriesApi.list_categories_in_a_knowledge_base, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/knowledge_bases/{knowledge_base_id}/categories'.sub('{' + 'knowledge_base_id' + '}', CGI.escape(knowledge_base_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListCategoriesInAKnowledgeBase200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"KnowledgeBaseCategoriesApi.list_categories_in_a_knowledge_base",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeBaseCategoriesApi#list_categories_in_a_knowledge_base\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update knowledge base category in default locale
    # Updates a knowledge base category in the default locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to update
    # @param [Hash] opts the optional parameters
    # @option opts [KnowledgeBaseCategoryPatch] :knowledge_base_category_patch 
    # @return [KnowledgeBaseCategoryResponse]
    def update_knowledge_base_category_in_default_locale(category_id, opts = {})
      data, _status_code, _headers = update_knowledge_base_category_in_default_locale_with_http_info(category_id, opts)
      data
    end

    # Update knowledge base category in default locale
    # Updates a knowledge base category in the default locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to update
    # @param [Hash] opts the optional parameters
    # @option opts [KnowledgeBaseCategoryPatch] :knowledge_base_category_patch 
    # @return [Array<(KnowledgeBaseCategoryResponse, Integer, Hash)>] KnowledgeBaseCategoryResponse data, response status code and response headers
    def update_knowledge_base_category_in_default_locale_with_http_info(category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KnowledgeBaseCategoriesApi.update_knowledge_base_category_in_default_locale ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling KnowledgeBaseCategoriesApi.update_knowledge_base_category_in_default_locale"
      end
      # resource path
      local_var_path = '/knowledge_base_categories/{category_id}/content'.sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'knowledge_base_category_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'KnowledgeBaseCategoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"KnowledgeBaseCategoriesApi.update_knowledge_base_category_in_default_locale",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeBaseCategoriesApi#update_knowledge_base_category_in_default_locale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update knowledge base category in specified locale
    # Updates a knowledge base category for a given locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to update
    # @param locale [String] The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content
    # @param [Hash] opts the optional parameters
    # @option opts [KnowledgeBaseCategoryPatch] :knowledge_base_category_patch 
    # @return [KnowledgeBaseCategoryResponse]
    def update_knowledge_base_category_in_specified_locale(category_id, locale, opts = {})
      data, _status_code, _headers = update_knowledge_base_category_in_specified_locale_with_http_info(category_id, locale, opts)
      data
    end

    # Update knowledge base category in specified locale
    # Updates a knowledge base category for a given locale. Will republish the knowledge base if the knowledge base is currently published.  **Note**: You must use an API token to authenticate. OAuth is not supported at this time. 
    # @param category_id [String] The ID of the category to update
    # @param locale [String] The [locale](https://dev.frontapp.com/reference/knowledge-bases#locales) of the updated content
    # @param [Hash] opts the optional parameters
    # @option opts [KnowledgeBaseCategoryPatch] :knowledge_base_category_patch 
    # @return [Array<(KnowledgeBaseCategoryResponse, Integer, Hash)>] KnowledgeBaseCategoryResponse data, response status code and response headers
    def update_knowledge_base_category_in_specified_locale_with_http_info(category_id, locale, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KnowledgeBaseCategoriesApi.update_knowledge_base_category_in_specified_locale ...'
      end
      # verify the required parameter 'category_id' is set
      if @api_client.config.client_side_validation && category_id.nil?
        fail ArgumentError, "Missing the required parameter 'category_id' when calling KnowledgeBaseCategoriesApi.update_knowledge_base_category_in_specified_locale"
      end
      # verify the required parameter 'locale' is set
      if @api_client.config.client_side_validation && locale.nil?
        fail ArgumentError, "Missing the required parameter 'locale' when calling KnowledgeBaseCategoriesApi.update_knowledge_base_category_in_specified_locale"
      end
      # resource path
      local_var_path = '/knowledge_base_categories/{category_id}/locales/{locale}/content'.sub('{' + 'category_id' + '}', CGI.escape(category_id.to_s)).sub('{' + 'locale' + '}', CGI.escape(locale.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'knowledge_base_category_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'KnowledgeBaseCategoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"KnowledgeBaseCategoriesApi.update_knowledge_base_category_in_specified_locale",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeBaseCategoriesApi#update_knowledge_base_category_in_specified_locale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
