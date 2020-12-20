# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module AdminConversations
          #
          # Set the workspaces in an Enterprise grid org that connect to a channel.
          #
          # @option options [Object] :channel_id
          #   The encoded channel_id to add or remove to workspaces.
          # @option options [Object] :org_channel
          #   True if channel has to be converted to an org channel.
          # @option options [Object] :target_team_ids
          #   A comma-separated list of workspaces to which the channel should be shared. Not required if the channel is being shared org-wide.
          # @option options [Object] :team_id
          #   The workspace to which the channel belongs. Omit this argument if the channel is a cross-workspace shared channel.
          # @see https://api.slack.com/methods/admin.conversations.setTeams
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.setTeams.json
          def admin_conversations_setTeams(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.setTeams', options)
          end
        end
      end
    end
  end
end
