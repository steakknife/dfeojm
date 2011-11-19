require 'dfeojm'
require 'dfeojm/version'
require 'trollop'

module DFEOJM
  module Util
    class CommandLine
      def exec
        opts = Trollop::options do
          version "DownForEveryoneOrJustMe (tm) unofficial ruby utility #{::DFEOJM::VERSION}  (c) 2011 Barry Allard"
          banner <<-EOS
    DownForEveryoneOrJustMe (tm) unofficial ruby utility #{::DFEOJM::VERSION}  (c) 2011 Barry Allard


      Usage:
             dfeojm hostname.com


          EOS
        end
        Trollop::die "hostname must be present" if ARGV.empty? # show help screen

        app = DFEOJM.new ARGV[0]
        puts app.to_s
        exit 1 if app.down?
      end # def exec
    end # class CommandLine
  end # module Util
end # module DFEOJM
