# -*- encoding: utf-8 -*-
# stub: dropbox-api 0.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "dropbox-api".freeze
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marcin Bunsch".freeze]
  s.date = "2014-02-10"
  s.description = "To deliver a more Rubyesque experience when using the DropBox API.".freeze
  s.email = ["marcin@futuresimple.com".freeze]
  s.homepage = "http://github.com/futuresimple/dropbox-api".freeze
  s.rubygems_version = "3.0.6".freeze
  s.summary = "A Ruby client for the DropBox REST API.".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<oauth>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
    else
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_dependency(%q<oauth>.freeze, [">= 0"])
      s.add_dependency(%q<hashie>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<oauth>.freeze, [">= 0"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
  end
end
