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

require 'rspec/core/rake_task'

desc "Run specs"
task :spec do
  RSpec::Core::RakeTask.new do |t|
    t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
    # Put spec opts in a file named .rspec in root
  end
end
