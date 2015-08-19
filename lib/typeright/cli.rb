# require 'thor'

module Typeright
  # Nice cli
  class CLI # < Thor
    def self.work(args)
      txt = args.empty? ? STDIN.gets : File.read(args.join)
      STDOUT.puts
      STDOUT.puts Typeright.s txt
      STDOUT.puts
    end
  end
end
