# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{petite-lettre}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaut Barr\303\250re"]
  s.date = %q{2009-03-29}
  s.description = %q{TODO}
  s.email = %q{thibaut.barrere@gmail.com}
  s.extra_rdoc_files = ["README.textile", "LICENSE"]
  s.files = ["README.textile", "VERSION.yml", "lib/petite_lettre.rb", "spec/petite_lettre_spec.rb", "spec/sample_client.rb", "spec/spec_helper.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/thbar/petite-lettre}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{petite-lettre}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{YAML-based inter-process communication}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
