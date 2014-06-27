module Slacui
  class Channel
    def initialize(id, channel, purpose)
      @id = id
      @name = channel
      @purpose = purpose
    end

    attr_reader :id, :name, :purpose
  end
end
