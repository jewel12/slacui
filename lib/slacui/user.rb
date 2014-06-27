module Slacui
  class User
    def initialize(id, name)
      @id = id
      @name = name
    end

    attr_reader :id, :name
  end
end
