##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Bulkexports < Domain
      class V1 < Version
        class ExportContext < InstanceContext
          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class ExportCustomJobList < ListResource
            ##
            # Initialize the ExportCustomJobList
            # @param [Version] version Version that contains the resource
            # @param [String] resource_type The type of communication – Messages, Calls
            # @return [ExportCustomJobList] ExportCustomJobList
            def initialize(version, resource_type: nil)
              super(version)

              # Path Solution
              @solution = {resource_type: resource_type}
              @uri = "/Exports/#{@solution[:resource_type]}/Jobs"
            end

            ##
            # Lists ExportCustomJobInstance records from the API as a list.
            # Unlike stream(), this operation is eager and will load `limit` records into
            # memory before returning.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit.  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records.  If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Array] Array of up to limit results
            def list(limit: nil, page_size: nil)
              self.stream(limit: limit, page_size: page_size).entries
            end

            ##
            # Streams ExportCustomJobInstance records from the API as an Enumerable.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit. Default is no limit.
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records. If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Enumerable] Enumerable that will yield up to limit results
            def stream(limit: nil, page_size: nil)
              limits = @version.read_limits(limit, page_size)

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
            end

            ##
            # When passed a block, yields ExportCustomJobInstance records from the API.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            def each
              limits = @version.read_limits

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page,
                              limit: limits[:limit],
                              page_limit: limits[:page_limit]).each {|x| yield x}
            end

            ##
            # Retrieve a single page of ExportCustomJobInstance records from the API.
            # Request is executed immediately.
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            # @return [Page] Page of ExportCustomJobInstance
            def page(page_token: :unset, page_number: :unset, page_size: :unset)
              params = Twilio::Values.of({
                  'PageToken' => page_token,
                  'Page' => page_number,
                  'PageSize' => page_size,
              })

              response = @version.page('GET', @uri, params: params)

              ExportCustomJobPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of ExportCustomJobInstance records from the API.
            # Request is executed immediately.
            # @param [String] target_url API-generated URL for the requested results page
            # @return [Page] Page of ExportCustomJobInstance
            def get_page(target_url)
              response = @version.domain.request(
                  'GET',
                  target_url
              )
              ExportCustomJobPage.new(@version, response, @solution)
            end

            ##
            # Create the ExportCustomJobInstance
            # @param [String] start_day The start day for the custom export specified as a
            #   string in the format of yyyy-mm-dd
            # @param [String] end_day The end day for the custom export specified as a string
            #   in the format of yyyy-mm-dd. End day is inclusive and must be 2 days earlier
            #   than the current UTC day.
            # @param [String] friendly_name The friendly name specified when creating the job
            # @param [String] webhook_url The optional webhook url called on completion of the
            #   job. If this is supplied, `WebhookMethod` must also be supplied. If you set
            #   neither webhook nor email, you will have to check your job's status manually.
            # @param [String] webhook_method This is the method used to call the webhook on
            #   completion of the job. If this is supplied, `WebhookUrl` must also be supplied.
            # @param [String] email The optional email to send the completion notification to.
            #   You can set both webhook, and email, or one or the other. If you set neither,
            #   the job will run but you will have to query to determine your job's status.
            # @return [ExportCustomJobInstance] Created ExportCustomJobInstance
            def create(start_day: nil, end_day: nil, friendly_name: nil, webhook_url: :unset, webhook_method: :unset, email: :unset)
              data = Twilio::Values.of({
                  'StartDay' => start_day,
                  'EndDay' => end_day,
                  'FriendlyName' => friendly_name,
                  'WebhookUrl' => webhook_url,
                  'WebhookMethod' => webhook_method,
                  'Email' => email,
              })

              payload = @version.create('POST', @uri, data: data)

              ExportCustomJobInstance.new(@version, payload, resource_type: @solution[:resource_type], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Bulkexports.V1.ExportCustomJobList>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class ExportCustomJobPage < Page
            ##
            # Initialize the ExportCustomJobPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [ExportCustomJobPage] ExportCustomJobPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of ExportCustomJobInstance
            # @param [Hash] payload Payload response from the API
            # @return [ExportCustomJobInstance] ExportCustomJobInstance
            def get_instance(payload)
              ExportCustomJobInstance.new(@version, payload, resource_type: @solution[:resource_type], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Bulkexports.V1.ExportCustomJobPage>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class ExportCustomJobInstance < InstanceResource
            ##
            # Initialize the ExportCustomJobInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] resource_type The type of communication – Messages, Calls
            # @return [ExportCustomJobInstance] ExportCustomJobInstance
            def initialize(version, payload, resource_type: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'friendly_name' => payload['friendly_name'],
                  'resource_type' => payload['resource_type'],
                  'start_day' => payload['start_day'],
                  'end_day' => payload['end_day'],
                  'webhook_url' => payload['webhook_url'],
                  'webhook_method' => payload['webhook_method'],
                  'email' => payload['email'],
                  'job_sid' => payload['job_sid'],
                  'details' => payload['details'],
              }
            end

            ##
            # @return [String] The friendly name specified when creating the job
            def friendly_name
              @properties['friendly_name']
            end

            ##
            # @return [String] The type of communication – Messages, Calls
            def resource_type
              @properties['resource_type']
            end

            ##
            # @return [String] The start day for the custom export specified as a string in the format of yyyy-MM-dd
            def start_day
              @properties['start_day']
            end

            ##
            # @return [String] The end day for the custom export specified as a string in the format of yyyy-MM-dd. This will be the last day exported. For instance, to export a single day, choose the same day for start and end day. To export the first 4 days of July, you would set the start date to 2020-07-01 and the end date to 2020-07-04. The end date must be the UTC day before yesterday.
            def end_day
              @properties['end_day']
            end

            ##
            # @return [String] The optional webhook url called on completion
            def webhook_url
              @properties['webhook_url']
            end

            ##
            # @return [String] This is the method used to call the webhook
            def webhook_method
              @properties['webhook_method']
            end

            ##
            # @return [String] The optional email to send the completion notification to
            def email
              @properties['email']
            end

            ##
            # @return [String] The unique job_sid returned when the custom export was created. This can be used to look up the status of the job.
            def job_sid
              @properties['job_sid']
            end

            ##
            # @return [Hash] The details of a job state which is an object that contains a status string, a day count integer, and list of days in the job
            def details
              @properties['details']
            end

            ##
            # Provide a user friendly representation
            def to_s
              "<Twilio.Bulkexports.V1.ExportCustomJobInstance>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              "<Twilio.Bulkexports.V1.ExportCustomJobInstance>"
            end
          end
        end
      end
    end
  end
end