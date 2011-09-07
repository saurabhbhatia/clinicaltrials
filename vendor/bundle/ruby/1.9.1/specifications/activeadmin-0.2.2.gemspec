# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activeadmin}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Greg Bell}]
  s.date = %q{2011-05-27}
  s.description = %q{The administration framework for Ruby on Rails.}
  s.email = %q{gregdbell@gmail.com}
  s.extra_rdoc_files = [%q{LICENSE}, %q{README.rdoc}]
  s.files = [%q{LICENSE}, %q{README.rdoc}]
  s.homepage = %q{http://github.com/gregbell/active_admin}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{The administration framework for Ruby on Rails.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<meta_search>, [">= 0.9.2"])
      s.add_runtime_dependency(%q<devise>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<formtastic>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<will_paginate>, [">= 3.0.pre2"])
      s.add_runtime_dependency(%q<inherited_views>, [">= 0"])
      s.add_runtime_dependency(%q<sass>, [">= 3.1.0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["= 1.5.2"])
      s.add_development_dependency(%q<rake>, ["= 0.8.7"])
      s.add_development_dependency(%q<haml>, ["~> 3.1.1"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<meta_search>, [">= 0.9.2"])
      s.add_dependency(%q<devise>, [">= 1.1.2"])
      s.add_dependency(%q<formtastic>, [">= 1.1.0"])
      s.add_dependency(%q<will_paginate>, [">= 3.0.pre2"])
      s.add_dependency(%q<inherited_views>, [">= 0"])
      s.add_dependency(%q<sass>, [">= 3.1.0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["= 1.5.2"])
      s.add_dependency(%q<rake>, ["= 0.8.7"])
      s.add_dependency(%q<haml>, ["~> 3.1.1"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<meta_search>, [">= 0.9.2"])
    s.add_dependency(%q<devise>, [">= 1.1.2"])
    s.add_dependency(%q<formtastic>, [">= 1.1.0"])
    s.add_dependency(%q<will_paginate>, [">= 3.0.pre2"])
    s.add_dependency(%q<inherited_views>, [">= 0"])
    s.add_dependency(%q<sass>, [">= 3.1.0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["= 1.5.2"])
    s.add_dependency(%q<rake>, ["= 0.8.7"])
    s.add_dependency(%q<haml>, ["~> 3.1.1"])
  end
end
