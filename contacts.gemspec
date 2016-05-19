$:.push File.expand_path("../lib", __FILE__)

require "spina/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-contacts"
  s.version     = Spina::Contacts::VERSION
  s.authors     = ["Chris Kruger"]
  s.email       = ["chris@krugerheavyindustries.com"]
  s.homepage    = "http://www.krugerheavyindustries.com"
  s.summary     = "Contact form plugin for Spina"
  s.description = "Contact form plugin for Spina CMS"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "spina", "~> 0.9.0"	
  s.add_dependency "mail_form", "~> 1.5.1"
end
