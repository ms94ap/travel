# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'travel/version'

Gem::Specification.new do |spec|
  spec.name          = "travel"
  spec.version       = Travel::VERSION
  spec.authors       = ["Andrew Papacostas"]
  spec.email         = ["a_papacostas@yahoo.com"]

  spec.summary       = "This is a gem for www.tripadvisor.com World Travelers' Choice Awards"
  spec.description   = "It includes information for: Attractions, Beaches, All Inclusive Resorts, Destinations, 
                        Destinations on the Rise, Hotels, Islands, Landmarks, Museums and Restaurants."
  spec.homepage      = "https://github.com/ms94ap/travel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["travel"]
  spec.require_paths = "lib"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_dependency "nokogiri"

end
