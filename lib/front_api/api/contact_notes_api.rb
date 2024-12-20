=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module FrontApi
  class ContactNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add note
    # Create a new note on a contact.
    # @param contact_id [String] The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactNote] :create_contact_note 
    # @return [ContactNoteResponses]
    def add_note(contact_id, opts = {})
      data, _status_code, _headers = add_note_with_http_info(contact_id, opts)
      data
    end

    # Add note
    # Create a new note on a contact.
    # @param contact_id [String] The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactNote] :create_contact_note 
    # @return [Array<(ContactNoteResponses, Integer, Hash)>] ContactNoteResponses data, response status code and response headers
    def add_note_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactNotesApi.add_note ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactNotesApi.add_note"
      end
      # resource path
      local_var_path = '/contacts/{contact_id}/notes'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_contact_note'])

      # return_type
      return_type = opts[:debug_return_type] || 'ContactNoteResponses'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactNotesApi.add_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactNotesApi#add_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List notes
    # List the notes added to a contact.
    # @param contact_id [String] The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @return [ListNotes202Response]
    def list_notes(contact_id, opts = {})
      data, _status_code, _headers = list_notes_with_http_info(contact_id, opts)
      data
    end

    # List notes
    # List the notes added to a contact.
    # @param contact_id [String] The contact ID. Alternatively, you can supply the contact&#39;s source and handle as a [resource alias](https://dev.frontapp.com/docs/resource-aliases-1).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListNotes202Response, Integer, Hash)>] ListNotes202Response data, response status code and response headers
    def list_notes_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactNotesApi.list_notes ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactNotesApi.list_notes"
      end
      # resource path
      local_var_path = '/contacts/{contact_id}/notes'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListNotes202Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"ContactNotesApi.list_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactNotesApi#list_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
