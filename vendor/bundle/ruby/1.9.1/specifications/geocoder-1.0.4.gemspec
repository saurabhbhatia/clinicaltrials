# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{geocoder}
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Alex Reisner}]
  s.date = %q{2011-09-18}
  s.description = %q{Provides object geocoding (by street or IP address), reverse geocoding (coordinates to street address), distance queries for ActiveRecord and Mongoid, result caching, and more. Designed for Rails but works with Sinatra and other Rack frameworks too.}
  s.email = [%q{alex@alexreisner.com}]
  s.executables = [%q{geocode}]
  s.files = [%q{bin/geocode}]
  s.homepage = %q{http://www.rubygeocoder.com}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Complete geocoding solution for Ruby.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
