#!/usr/bin/env ruby

require 'slacui'
require 'slack'
require 'thor'

class SlacuiCommand < Thor
  desc 'channels', 'Show a list of channels'
  def channels
    Slacui::Cmd.channels
  end
end

SlacuiCommand.start
