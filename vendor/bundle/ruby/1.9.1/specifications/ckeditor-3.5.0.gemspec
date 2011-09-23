# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ckeditor}
  s.version = "3.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Igor Galeta}]
  s.date = %q{2010-12-20}
  s.description = %q{CKEditor is a WYSIWYG editor to be used inside web pages}
  s.email = %q{galeta.igor@gmail.com}
  s.extra_rdoc_files = [%q{README.rdoc}]
  s.files = [%q{README.rdoc}]
  s.homepage = %q{http://github.com/galetahub/rails-ckeditor}
  s.rdoc_options = [%q{--charset=UTF-8}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{ckeditor}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Rails plugin for integration ckeditor 3.x}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.16"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.16"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.16"])
  end
end
