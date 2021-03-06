# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{google-mini}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jimmy Baker"]
  s.date = %q{2009-05-18}
  s.email = %q{jimmybaker@me.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "google-mini.gemspec",
     "lib/google-mini.rb",
     "lib/google-mini/google-mini.rb",
     "lib/google-mini/keymatch.rb",
     "lib/google-mini/result.rb",
     "lib/google-mini/search.rb",
     "test/google-mini_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/jumzies/google-mini}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{The Google Mini gem simply lets you query your Google Mini appliance with the ease you'd expect from a Ruby library.}
  s.test_files = [
    "test/google-mini_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end
