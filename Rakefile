$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'rubygems'
require 'dfeojm/version'

PROJECT      = 'dfeojm'
VERSION      = DFEOJM::VERSION
FULL_PROJECT = "#{PROJECT}-#{VERSION}"
 
desc 'Default: run specs.'
task :default => :spec

desc "build gem"
task :build do
  system "gem build #{PROJECT}.gemspec"
end
 
desc "push gem to ruby gems"
task :release => :build do
  system "gem push #{FULL_PROJECT}.gem"
end

desc "install the gem locally"
task :local_install => :build do
  system "gem install #{FULL_PROJECT}"
end

desc "uninstall all of this gem locally"
task :local_uninstall do
  system "gem uninstall -ax #{PROJECT}"
end

desc "cleanup"
task :clean => :local_uninstall do
  system "rm *.gem"
end

# Rspec
#
require 'rspec/core/rake_task'

desc "Run specs"
task :spec => :local_install do
  RSpec::Core::RakeTask.new do |t|
    t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
    # Put spec opts in a file named .rspec in root
  end
end
