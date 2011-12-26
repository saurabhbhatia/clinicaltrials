# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ckeditor"
  s.version = "3.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Igor Galeta"]
  s.date = "2011-10-16"
  s.description = "CKEditor is a WYSIWYG editor to be used inside web pages"
  s.email = "galeta.igor@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "https://github.com/galetahub/ckeditor"
  s.require_paths = ["lib"]
  s.rubyforge_project = "ckeditor"
  s.rubygems_version = "1.8.10"
  s.summary = "Rails gem for easy integration ckeditor in your application"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_runtime_dependency(%q<orm_adapter>, ["~> 0.0.5"])
    else
      s.add_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_dependency(%q<orm_adapter>, ["~> 0.0.5"])
    end
  else
    s.add_dependency(%q<mime-types>, ["~> 1.16"])
    s.add_dependency(%q<orm_adapter>, ["~> 0.0.5"])
  end
end
