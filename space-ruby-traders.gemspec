# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "space-ruby-traders/version"

Gem::Specification.new do |s|
  s.name        = "space-ruby-traders"
  s.version     = SpaceRubyTraderClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luca Bulletti"]
  s.email       = ["bosons_auroral0a@icloud.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "SpaceTraders API Ruby Gem"
  s.description = "Ruby SDK for the SpaceTradersAPI."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
