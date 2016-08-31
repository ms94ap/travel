# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'travel/version'

Gem::Specification.new do |spec|
  spec.name          = "travel"
  spec.version       = Travel::VERSION
  spec.authors       = ["ms94ap"]
  spec.email         = ["a_papacostas@yahoo.com"]

  spec.summary       = "This is a gem for www.tripadvisor.com World Travelers' Choice Awards"
  spec.description   = "It includes information for: Attractions, Beaches, All Inclusive Resorts, Destinations, 
                        Destinations on the Rise, Hotels, Islands, Landmarks, Museums and Restaurants."
  spec.homepage      = "https://github.com/ms94ap/travel-cli-gem"
  spec.license       = "MIT"

  spec.files         = ["lib/travel.rb", "lib/travel/all_inclusive_resorts.rb", "lib/travel/attractions.rb", "lib/travel/beaches.rb", "lib/travel/cli.rb", "lib/travel/destinations.rb", "lib/travel/destinations_on_the_rise.rb", "lib/travel/hotels.rb", "lib/travel/islands.rb","lib/travel/landmarks.rb", "lib/travel/list.rb" "lib/travel/museums.rb", "lib/travel/restaurants.rb", "lib/travel/scraper.rb", "lib/travel/version.rb", "bin/console", "bin/setup", "bin/travel"]

  spec.bindir        = "bin"
  spec.executables   = "travel"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_dependency "nokogiri"

end
