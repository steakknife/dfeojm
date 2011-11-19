# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dfeojm/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'dfeojm'
  s.version     = DFEOJM::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = 'Barry Allard (steakknife)'
  s.email       = 'barry@barryallard.name'
  s.homepage    = 'https://github.com/steakknife/dfeojm'
  s.summary     = 'Unofficial Ruby interface and command-line to DownForEveryoneOrJustMe.com'
  s.description = 'See http://downforeveryoneorjustme.com'
  s.license     = 'MIT'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'dfeojm'

  s.add_dependency 'nokogiri'
  s.add_dependency 'trollop'
  s.add_development_dependency 'bundler', '>= 1.0.0'

  # Man files are required because they are ignored by git
  s.files            = Dir['lib/**/*.rb', 'bin/*'] + %W{LICENSE README.md}
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split('\n').select { |d| d =~ %r{^(README|bin/|data/|ext/|lib/|spec/|test/)} }
  s.executables      = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_paths    = ['lib']


end
