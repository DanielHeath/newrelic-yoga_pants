# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "newrelic-yoga_pants"
  s.version = "0.0.1"
  s.authors = ["Daniel Heath"]
  s.email = "daniel.r.heath@gmail.com"
  s.summary = "NewRelic instrumentation for the yoga_pants ElasticSearch client"
  s.description = "Tracks time spent fetching search results"
  s.date = '2012-09-10'
  s.files = ['lib/newrelic/yoga_pants.rb', 'README.md', 'LICENSE', 'Gemfile']
  s.homepage = 'http://github.com/DanielHeath/newrelic-yoga_pants'
  s.require_paths = ["lib"]
  
  s.add_dependency 'newrelic_rpm'
#  s.add_dependency 'yoga_pants' # Until chendo releases this, not much point.
  # gem 'yoga_pants', :git => 'git://github.com/chendo/yoga_pants.git'
end

