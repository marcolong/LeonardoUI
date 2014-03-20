# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "active_leonardo"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marco Mastrodonato, Marco Longhitano"]
  s.date = "2014-03-11"
  s.description = "This generator help you to create new Rails applications to combine with active admin gem. It generates application structure to easily get the internationalization and authorization."
  s.email = ["m.mastrodonato@gmail.com, marcovlonghitano@gmail.com"]
  s.homepage = "https://github.com/marcomd/Active_Leonardo"
  s.require_paths = ["lib"]
  s.requirements = ["Start a new app with the active_template.rb inside root folder"]
  s.rubygems_version = "2.0.14"
  s.summary = "This gem provides a new customized scaffold generator to combine with active admin"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.2.0"])
      s.add_runtime_dependency(%q<activeadmin>, [">= 0.6.3"])
    else
      s.add_dependency(%q<rails>, [">= 3.2.0"])
      s.add_dependency(%q<activeadmin>, [">= 0.6.3"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.2.0"])
    s.add_dependency(%q<activeadmin>, [">= 0.6.3"])
  end
end
