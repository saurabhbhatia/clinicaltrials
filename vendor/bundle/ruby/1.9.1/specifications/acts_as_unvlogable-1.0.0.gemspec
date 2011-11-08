# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_unvlogable}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Manuel MuÃ±oz}, %q{Fernando Blat}, %q{Alberto Romero}]
  s.date = %q{2011-05-08}
  s.description = %q{An easy way to include external video services in a rails app. This gem provides you wrappers for the most common video services, such as Youtube, Vimeo, Flickr, and so on...}
  s.email = [%q{mamusino@gmail.com}, %q{ferblape@gmail.com}, %q{denegro@gmail.com}]
  s.homepage = %q{}
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{acts_as_unvlogable}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{An easy way to include external video services in a rails app}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
      s.add_runtime_dependency(%q<xml-simple>, [">= 0"])
      s.add_runtime_dependency(%q<youtube_it>, [">= 0"])
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
      s.add_dependency(%q<xml-simple>, [">= 0"])
      s.add_dependency(%q<youtube_it>, [">= 0"])
      s.add_dependency(%q<hpricot>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
    s.add_dependency(%q<xml-simple>, [">= 0"])
    s.add_dependency(%q<youtube_it>, [">= 0"])
    s.add_dependency(%q<hpricot>, [">= 0"])
  end
end
