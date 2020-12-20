##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Events < Domain
      class V1 < Version
        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class SchemaList < ListResource
          ##
          # Initialize the SchemaList
          # @param [Version] version Version that contains the resource
          # @return [SchemaList] SchemaList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Events.V1.SchemaList>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class SchemaPage < Page
          ##
          # Initialize the SchemaPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [SchemaPage] SchemaPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of SchemaInstance
          # @param [Hash] payload Payload response from the API
          # @return [SchemaInstance] SchemaInstance
          def get_instance(payload)
            SchemaInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Events.V1.SchemaPage>'
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class SchemaContext < InstanceContext
          ##
          # Initialize the SchemaContext
          # @param [Version] version Version that contains the resource
          # @param [String] id The unique identifier of the schema. Each schema can have
          #   multiple versions, that share the same id.
          # @return [SchemaContext] SchemaContext
          def initialize(version, id)
            super(version)

            # Path Solution
            @solution = {id: id, }
            @uri = "/Schemas/#{@solution[:id]}"

            # Dependents
            @versions = nil
          end

          ##
          # Fetch the SchemaInstance
          # @return [SchemaInstance] Fetched SchemaInstance
          def fetch
            payload = @version.fetch('GET', @uri)

            SchemaInstance.new(@version, payload, id: @solution[:id], )
          end

          ##
          # Access the versions
          # @return [VersionList]
          # @return [VersionContext] if schema_version was passed.
          def versions(schema_version=:unset)
            raise ArgumentError, 'schema_version cannot be nil' if schema_version.nil?

            if schema_version != :unset
              return VersionContext.new(@version, @solution[:id], schema_version, )
            end

            unless @versions
              @versions = VersionList.new(@version, id: @solution[:id], )
            end

            @versions
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Events.V1.SchemaContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Events.V1.SchemaContext #{context}>"
          end
        end

        ##
        # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
        class SchemaInstance < InstanceResource
          ##
          # Initialize the SchemaInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] id The unique identifier of the schema. Each schema can have
          #   multiple versions, that share the same id.
          # @return [SchemaInstance] SchemaInstance
          def initialize(version, payload, id: nil)
            super(version)

            # Marshaled Properties
            @properties = {
                'id' => payload['id'],
                'url' => payload['url'],
                'links' => payload['links'],
                'last_created' => Twilio.deserialize_iso8601_datetime(payload['last_created']),
                'last_version' => payload['last_version'].to_i,
            }

            # Context
            @instance_context = nil
            @params = {'id' => id || @properties['id'], }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [SchemaContext] SchemaContext for this SchemaInstance
          def context
            unless @instance_context
              @instance_context = SchemaContext.new(@version, @params['id'], )
            end
            @instance_context
          end

          ##
          # @return [String] Schema Identifier.
          def id
            @properties['id']
          end

          ##
          # @return [String] The URL of this resource.
          def url
            @properties['url']
          end

          ##
          # @return [String] Nested resource URLs.
          def links
            @properties['links']
          end

          ##
          # @return [Time] The date that the last schema version was created.
          def last_created
            @properties['last_created']
          end

          ##
          # @return [String] Last schema version.
          def last_version
            @properties['last_version']
          end

          ##
          # Fetch the SchemaInstance
          # @return [SchemaInstance] Fetched SchemaInstance
          def fetch
            context.fetch
          end

          ##
          # Access the versions
          # @return [versions] versions
          def versions
            context.versions
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Events.V1.SchemaInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Events.V1.SchemaInstance #{values}>"
          end
        end
      end
    end
  end
end