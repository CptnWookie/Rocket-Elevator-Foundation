# -*- encoding: utf-8 -*-
# stub: client_side_validations-simple_form 11.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "client_side_validations-simple_form".freeze
  s.version = "11.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/DavyJonesLocker/client_side_validations-simple_form/issues", "changelog_uri" => "https://github.com/DavyJonesLocker/client_side_validations-simple_form/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/DavyJonesLocker/client_side_validations-simple_form" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Geremia Taglialatela".freeze, "Brian Cardarella".freeze]
  s.date = "2020-10-10"
  s.description = "SimpleForm Plugin for ClientSideValidations".freeze
  s.email = ["tagliala.dev@gmail.com".freeze, "bcardarella@gmail.com".freeze]
  s.homepage = "https://github.com/DavyJonesLocker/client_side_validations-simple_form".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.4".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "ClientSideValidations SimpleForm".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<client_side_validations>.freeze, [">= 15.0", "< 18.0"])
      s.add_runtime_dependency(%q<simple_form>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.3"])
      s.add_development_dependency(%q<byebug>.freeze, ["~> 11.1"])
      s.add_development_dependency(%q<coveralls_reborn>.freeze, ["~> 0.18.0"])
      s.add_development_dependency(%q<m>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.14"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1.11"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.93.0"])
      s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.8"])
      s.add_development_dependency(%q<rubocop-rails>.freeze, ["~> 2.8"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0.18.5", "< 0.20.0"])
      s.add_development_dependency(%q<shotgun>.freeze, ["~> 0.9.2"])
      s.add_development_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<thin>.freeze, ["~> 1.7"])
    else
      s.add_dependency(%q<client_side_validations>.freeze, [">= 15.0", "< 18.0"])
      s.add_dependency(%q<simple_form>.freeze, ["~> 5.0"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 2.3"])
      s.add_dependency(%q<byebug>.freeze, ["~> 11.1"])
      s.add_dependency(%q<coveralls_reborn>.freeze, ["~> 0.18.0"])
      s.add_dependency(%q<m>.freeze, ["~> 1.5"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.14"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1.11"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.93.0"])
      s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.8"])
      s.add_dependency(%q<rubocop-rails>.freeze, ["~> 2.8"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0.18.5", "< 0.20.0"])
      s.add_dependency(%q<shotgun>.freeze, ["~> 0.9.2"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
      s.add_dependency(%q<thin>.freeze, ["~> 1.7"])
    end
  else
    s.add_dependency(%q<client_side_validations>.freeze, [">= 15.0", "< 18.0"])
    s.add_dependency(%q<simple_form>.freeze, ["~> 5.0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.3"])
    s.add_dependency(%q<byebug>.freeze, ["~> 11.1"])
    s.add_dependency(%q<coveralls_reborn>.freeze, ["~> 0.18.0"])
    s.add_dependency(%q<m>.freeze, ["~> 1.5"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.14"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.93.0"])
    s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.8"])
    s.add_dependency(%q<rubocop-rails>.freeze, ["~> 2.8"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.18.5", "< 0.20.0"])
    s.add_dependency(%q<shotgun>.freeze, ["~> 0.9.2"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 2.0"])
    s.add_dependency(%q<thin>.freeze, ["~> 1.7"])
  end
end
