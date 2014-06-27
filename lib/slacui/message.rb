module Slacui
  class Message
    def initialize(user, text, type = :normal)
      @user = user
      @text = text
      @type = type
    end

    def refs?
      @type == :refs
    end

    attr_reader :user, :text
  end
end
