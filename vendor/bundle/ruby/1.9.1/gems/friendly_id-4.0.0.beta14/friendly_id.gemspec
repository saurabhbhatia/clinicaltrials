# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require "friendly_id"

Gem::Specification.new do |s|
  s.name              = "friendly_id"
  s.version           = FriendlyId::VERSION
  s.authors           = ["Norman Clarke"]
  s.email             = ["norman@njclarke.com"]
  s.homepage          = "http://norman.github.com/friendly_id"
  s.summary           = "A comprehensive slugging and pretty-URL plugin."
  s.rubyforge_project = "friendly_id"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test}/*`.split("\n")
  s.require_paths     = ["lib"]

  s.add_development_dependency "railties", "~> 3.1.0"
  s.add_development_dependency "activerecord", "~> 3.1.0"
  s.add_development_dependency "sqlite3", "~> 1.3.4"
  s.add_development_dependency "minitest", "~> 2.4.0"
  s.add_development_dependency "mocha", "~> 0.9.12"
  s.add_development_dependency "ffaker", "~> 1.8.0"
  s.add_development_dependency "maruku", "~> 0.6.0"
  s.add_development_dependency "yard", "~> 0.7.2"
  s.add_development_dependency "i18n", "~> 0.6.0"
  s.add_development_dependency "simplecov"

  s.description = <<-EOM
FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for
Ruby on Rails. It allows you to create pretty URL's and work with
human-friendly strings as if they were numeric ids for ActiveRecord models.
EOM

  s.post_install_message = <<-EOM
NOTE: FriendlyId 4.x breaks compatibility with 3.x. If you're upgrading
from 3.x, please see this document:

https://github.com/norman/friendly_id/blob/4.0.0/WhatsNew.md

EOM

end
