# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{inherited_resources}
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{JosÃ© Valim}]
  s.date = %q{2011-04-17}
  s.description = %q{Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important.}
  s.email = %q{developers@plataformatec.com.br}
  s.homepage = %q{http://github.com/josevalim/inherited_resources}
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{inherited_resources}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Inherited Resources speeds up development by making your controllers inherit all restful actions so you just have to focus on what is important.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<responders>, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<has_scope>, ["~> 0.5.0"])
    else
      s.add_dependency(%q<responders>, ["~> 0.6.0"])
      s.add_dependency(%q<has_scope>, ["~> 0.5.0"])
    end
  else
    s.add_dependency(%q<responders>, ["~> 0.6.0"])
    s.add_dependency(%q<has_scope>, ["~> 0.5.0"])
  end
end
