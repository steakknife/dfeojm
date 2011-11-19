require 'dfeojm'
require 'dfeojm/version'
require 'trollop'

module DFEOJM
  module Util
    class CommandLine
      def exec
	begin
	  opts = Trollop::options do
	    version "DownForEveryoneOrJustMe (tm) unofficial ruby utility #{::DFEOJM::VERSION}  (c) 2011 Barry Allard"
	    banner <<-EOS
	DownForEveryoneOrJustMe (tm) unofficial ruby utility #{::DFEOJM::VERSION}  (c) 2011 Barry Allard

  Usage:
         dfeojm hostname.com

	    EOS
	  end
    raise Trollop::HelpNeeded if ARGV.empty? # show help screen

	  app = DFEOJM.new ARGV[0]
	rescue => e
#	  puts e
#	  exit 1
          raise e
	end
      end # def exec
    end # class CommandLine
  end # module Util
end # module DFEOJM
