# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paginate_alphabetically"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eden Development"]
  s.date = "2010-09-10"
  s.description = "Provides a list of available letters, and a way of fetching the records for each letter."
  s.email = "dev+gems@edendevelopment.co.uk"
  s.extra_rdoc_files = ["LICENSE", "README.textile"]
  s.files = ["LICENSE", "README.textile"]
  s.homepage = "http://github.com/edendevelopment/paginate_alphabetically"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "An easy way to paginate a list of ActiveRecord objects alphabetically by any given attribute."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, ["= 1.2.5"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, ["= 1.2.5"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.3.5"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, ["= 1.2.5"])
  end
end
