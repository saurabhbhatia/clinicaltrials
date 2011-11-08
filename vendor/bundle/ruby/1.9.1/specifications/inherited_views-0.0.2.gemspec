# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{inherited_views}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Greg Bell}]
  s.date = %q{2010-06-02}
  s.description = %q{InheritedViews brings the DRY principle to the controller and view layers within Rails applications}
  s.email = [%q{gregdbell@gmail.com}]
  s.homepage = %q{http://github.com/gregbell/inherited_views}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{The simplest way to implement REST controllers and views in rails applications}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<inherited_resources>, [">= 1.0.6"])
      s.add_runtime_dependency(%q<formtastic>, [">= 0.9.8"])
      s.add_runtime_dependency(%q<will_paginate>, [">= 2.3.12"])
      s.add_development_dependency(%q<activesupport>, ["= 2.3.5"])
      s.add_development_dependency(%q<actionpack>, ["= 2.3.5"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<inherited_resources>, [">= 1.0.6"])
      s.add_dependency(%q<formtastic>, [">= 0.9.8"])
      s.add_dependency(%q<will_paginate>, [">= 2.3.12"])
      s.add_dependency(%q<activesupport>, ["= 2.3.5"])
      s.add_dependency(%q<actionpack>, ["= 2.3.5"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<inherited_resources>, [">= 1.0.6"])
    s.add_dependency(%q<formtastic>, [">= 0.9.8"])
    s.add_dependency(%q<will_paginate>, [">= 2.3.12"])
    s.add_dependency(%q<activesupport>, ["= 2.3.5"])
    s.add_dependency(%q<actionpack>, ["= 2.3.5"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
