# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{multipart-post}
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Nick Sieger}]
  s.date = %q{2011-07-25}
  s.description = %q{Use with Net::HTTP to do multipart form posts.  IO values that have #content_type, #original_filename, and #local_path will be posted as a binary file.}
  s.email = %q{nick@nicksieger.com}
  s.extra_rdoc_files = [%q{Manifest.txt}, %q{README.txt}]
  s.files = [%q{Manifest.txt}, %q{README.txt}]
  s.homepage = %q{http://github.com/nicksieger/multipart-post}
  s.rdoc_options = [%q{--main}, %q{README.txt}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{caldersphere}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Creates a multipart form post accessory for Net::HTTP.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
