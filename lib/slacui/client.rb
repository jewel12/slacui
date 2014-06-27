require 'slack'

Slack.configure do |config|
  config.token = ENV['SLACK_AUTH_TOKEN']
end

module Slacui
  module Client
    def channels
      Slack.client.channels_list['channels'].map do|c|
        Channel.new(c['id'], c['name'], c['purpose']['value'])
      end
    end

    def read(channel)
      us_map = Hash[users.map { |u|[u.id, u.name] }]
      Slack.client.channels_history(channel: channel.id)['messages'].map {|m|
        if !m['message']
          Message.new(
            m['username'] || us_map[m['user']],
            m['text'])
        else
          # For user-entered text, see https://api.slack.com/methods/channels.history
          Message.new(
            m['message']['username'] || us_map[m['message']['user']],
            m['message']['text'],
            :refs)
        end
      }
    end

    def users
      Slack.client.users_list['members'].map do|u|
        User.new(u['id'], u['name'])
      end
    end

    module_function :channels, :read, :users
  end
end
