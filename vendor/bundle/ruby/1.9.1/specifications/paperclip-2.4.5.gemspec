# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paperclip"
  s.version = "2.4.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Yurek"]
  s.date = "2011-10-21"
  s.description = "Easy upload management for ActiveRecord"
  s.email = "jyurek@thoughtbot.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "https://github.com/thoughtbot/paperclip"
  s.rdoc_options = ["--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.requirements = ["ImageMagick"]
  s.rubyforge_project = "paperclip"
  s.rubygems_version = "1.8.10"
  s.summary = "File attachments as attributes for ActiveRecord"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.2"])
      s.add_runtime_dependency(%q<cocaine>, [">= 0.0.2"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<aws-s3>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.3.0"])
      s.add_dependency(%q<activesupport>, [">= 2.3.2"])
      s.add_dependency(%q<cocaine>, [">= 0.0.2"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<aws-s3>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.3.0"])
    s.add_dependency(%q<activesupport>, [">= 2.3.2"])
    s.add_dependency(%q<cocaine>, [">= 0.0.2"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<aws-s3>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
  end
end
