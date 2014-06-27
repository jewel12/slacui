module Slacui
  module Cmd
    def channels
      Slacui::Client.channels.each do |c|
        puts (c.purpose.empty? ? c.name : "#{c.name}\t[#{c.purpose}]")
      end
    end

    def read(channel_name)
      target = Slacui::Client.channels.find { |c| c.name == channel_name }
      posts = Slacui::Client.read(target)
      posts.reverse.each do |m|
        if !m.refs?
          puts "[#{m.user}]\t#{m.text}"
        else
          puts "--> [#{m.user}]\t#{m.text}"
        end
      end
    end

    module_function :channels, :read
  end
end
