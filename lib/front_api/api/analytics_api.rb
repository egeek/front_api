=begin
#Core API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module FrontApi
  class AnalyticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new analytics export.
    # Create a new analytics export of messages or events (activities) over a specific time span. The export will be executed asynchronously. The response will include a link that can be used to retrieve the export status & result. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics. 
    # @param [Hash] opts the optional parameters
    # @option opts [AnalyticsExportRequest] :analytics_export_request 
    # @return [AnalyticsExportResponse]
    def create_analytics_export(opts = {})
      data, _status_code, _headers = create_analytics_export_with_http_info(opts)
      data
    end

    # Create a new analytics export.
    # Create a new analytics export of messages or events (activities) over a specific time span. The export will be executed asynchronously. The response will include a link that can be used to retrieve the export status &amp; result. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics. 
    # @param [Hash] opts the optional parameters
    # @option opts [AnalyticsExportRequest] :analytics_export_request 
    # @return [Array<(AnalyticsExportResponse, Integer, Hash)>] AnalyticsExportResponse data, response status code and response headers
    def create_analytics_export_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsApi.create_analytics_export ...'
      end
      # resource path
      local_var_path = '/analytics/exports'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'analytics_export_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'AnalyticsExportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"AnalyticsApi.create_analytics_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#create_analytics_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new analytics report.
    # Create a new analytics report for a set of metrics over a specific time span. Different filters (e.g. Inbox v Tag v Teammates) will be joined with AND logic, but the IDs within a filter will be joined with OR logic (e.g. Inbox A or Inbox B, Tag A or Tag B). The report will be executed asynchronously. The response will include a link that can be used to retrieve the report status & result. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics. 
    # @param [Hash] opts the optional parameters
    # @option opts [AnalyticsReportRequest] :analytics_report_request 
    # @return [AnalyticsReportResponse]
    def create_analytics_report(opts = {})
      data, _status_code, _headers = create_analytics_report_with_http_info(opts)
      data
    end

    # Create a new analytics report.
    # Create a new analytics report for a set of metrics over a specific time span. Different filters (e.g. Inbox v Tag v Teammates) will be joined with AND logic, but the IDs within a filter will be joined with OR logic (e.g. Inbox A or Inbox B, Tag A or Tag B). The report will be executed asynchronously. The response will include a link that can be used to retrieve the report status &amp; result. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics. 
    # @param [Hash] opts the optional parameters
    # @option opts [AnalyticsReportRequest] :analytics_report_request 
    # @return [Array<(AnalyticsReportResponse, Integer, Hash)>] AnalyticsReportResponse data, response status code and response headers
    def create_analytics_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsApi.create_analytics_report ...'
      end
      # resource path
      local_var_path = '/analytics/reports'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'analytics_report_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'AnalyticsReportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"AnalyticsApi.create_analytics_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#create_analytics_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch an analytics export.
    # Fetch an analytics exports. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics.
    # @param export_id [String] The export ID.
    # @param [Hash] opts the optional parameters
    # @return [AnalyticsExportResponse]
    def get_analytics_export(export_id, opts = {})
      data, _status_code, _headers = get_analytics_export_with_http_info(export_id, opts)
      data
    end

    # Fetch an analytics export.
    # Fetch an analytics exports. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics.
    # @param export_id [String] The export ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AnalyticsExportResponse, Integer, Hash)>] AnalyticsExportResponse data, response status code and response headers
    def get_analytics_export_with_http_info(export_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsApi.get_analytics_export ...'
      end
      # verify the required parameter 'export_id' is set
      if @api_client.config.client_side_validation && export_id.nil?
        fail ArgumentError, "Missing the required parameter 'export_id' when calling AnalyticsApi.get_analytics_export"
      end
      # resource path
      local_var_path = '/analytics/exports/{export_id}'.sub('{' + 'export_id' + '}', CGI.escape(export_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AnalyticsExportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"AnalyticsApi.get_analytics_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#get_analytics_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch an analytics report.
    # Fetch an analytics report. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics.
    # @param report_uid [String] The report UID.
    # @param [Hash] opts the optional parameters
    # @return [AnalyticsReportResponse]
    def get_analytics_report(report_uid, opts = {})
      data, _status_code, _headers = get_analytics_report_with_http_info(report_uid, opts)
      data
    end

    # Fetch an analytics report.
    # Fetch an analytics report. Refer to the [Analytics](https://dev.frontapp.com/reference/analytics) topic for details about specific metrics.
    # @param report_uid [String] The report UID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AnalyticsReportResponse, Integer, Hash)>] AnalyticsReportResponse data, response status code and response headers
    def get_analytics_report_with_http_info(report_uid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsApi.get_analytics_report ...'
      end
      # verify the required parameter 'report_uid' is set
      if @api_client.config.client_side_validation && report_uid.nil?
        fail ArgumentError, "Missing the required parameter 'report_uid' when calling AnalyticsApi.get_analytics_report"
      end
      # resource path
      local_var_path = '/analytics/reports/{report_uid}'.sub('{' + 'report_uid' + '}', CGI.escape(report_uid.to_s))

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
      return_type = opts[:debug_return_type] || 'AnalyticsReportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['http']

      new_options = opts.merge(
        :operation => :"AnalyticsApi.get_analytics_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#get_analytics_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
