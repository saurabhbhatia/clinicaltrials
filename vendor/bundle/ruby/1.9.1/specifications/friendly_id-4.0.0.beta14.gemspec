# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "friendly_id"
  s.version = "4.0.0.beta14"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke"]
  s.date = "2011-10-11"
  s.description = "FriendlyId is the \"Swiss Army bulldozer\" of slugging and permalink plugins for\nRuby on Rails. It allows you to create pretty URL's and work with\nhuman-friendly strings as if they were numeric ids for ActiveRecord models.\n"
  s.email = ["norman@njclarke.com"]
  s.homepage = "http://norman.github.com/friendly_id"
  s.post_install_message = "NOTE: FriendlyId 4.x breaks compatibility with 3.x. If you're upgrading\nfrom 3.x, please see this document:\n\nhttps://github.com/norman/friendly_id/blob/4.0.0/WhatsNew.md\n\n"
  s.require_paths = ["lib"]
  s.rubyforge_project = "friendly_id"
  s.rubygems_version = "1.8.10"
  s.summary = "A comprehensive slugging and pretty-URL plugin."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<railties>, ["~> 3.1.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.1.0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.4"])
      s.add_development_dependency(%q<minitest>, ["~> 2.4.0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9.12"])
      s.add_development_dependency(%q<ffaker>, ["~> 1.8.0"])
      s.add_development_dependency(%q<maruku>, ["~> 0.6.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7.2"])
      s.add_development_dependency(%q<i18n>, ["~> 0.6.0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<railties>, ["~> 3.1.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.1.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.4"])
      s.add_dependency(%q<minitest>, ["~> 2.4.0"])
      s.add_dependency(%q<mocha>, ["~> 0.9.12"])
      s.add_dependency(%q<ffaker>, ["~> 1.8.0"])
      s.add_dependency(%q<maruku>, ["~> 0.6.0"])
      s.add_dependency(%q<yard>, ["~> 0.7.2"])
      s.add_dependency(%q<i18n>, ["~> 0.6.0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 3.1.0"])
    s.add_dependency(%q<activerecord>, ["~> 3.1.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.4"])
    s.add_dependency(%q<minitest>, ["~> 2.4.0"])
    s.add_dependency(%q<mocha>, ["~> 0.9.12"])
    s.add_dependency(%q<ffaker>, ["~> 1.8.0"])
    s.add_dependency(%q<maruku>, ["~> 0.6.0"])
    s.add_dependency(%q<yard>, ["~> 0.7.2"])
    s.add_dependency(%q<i18n>, ["~> 0.6.0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
