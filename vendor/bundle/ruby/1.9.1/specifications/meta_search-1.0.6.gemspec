# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{meta_search}
  s.version = "1.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Ernie Miller}]
  s.date = %q{2011-07-07}
  s.description = %q{
      Allows simple search forms to be created against an AR3 model
      and its associations, has useful view helpers for sort links
      and multiparameter fields as well.
    }
  s.email = %q{ernie@metautonomo.us}
  s.extra_rdoc_files = [%q{LICENSE}, %q{README.rdoc}]
  s.files = [%q{LICENSE}, %q{README.rdoc}]
  s.homepage = %q{http://metautonomo.us/projects/metasearch/}
  s.post_install_message = %q{
*** Thanks for installing MetaSearch! ***
Be sure to check out http://metautonomo.us/projects/metasearch/ for a
walkthrough of MetaSearch's features, and click the donate button if
you're feeling especially appreciative. It'd help me justify this
"open source" stuff to my lovely wife. :)

}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Object-based searching (and more) for simply creating search forms.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0.2"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0.2"])
      s.add_runtime_dependency(%q<actionpack>, ["~> 3.0.2"])
      s.add_runtime_dependency(%q<arel>, ["~> 2.0.2"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<activerecord>, ["~> 3.0.2"])
      s.add_dependency(%q<activesupport>, ["~> 3.0.2"])
      s.add_dependency(%q<actionpack>, ["~> 3.0.2"])
      s.add_dependency(%q<arel>, ["~> 2.0.2"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<activerecord>, ["~> 3.0.2"])
    s.add_dependency(%q<activesupport>, ["~> 3.0.2"])
    s.add_dependency(%q<actionpack>, ["~> 3.0.2"])
    s.add_dependency(%q<arel>, ["~> 2.0.2"])
  end
end
