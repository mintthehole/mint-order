$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mint-order/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mint-order"
  s.version     = MintOrder::VERSION
  s.authors     = ["Mintthehole"]
  s.email       = ["john.pollo@strata.co.in"]
  s.homepage    = "https://github.com/mintthehole/mint-order"
  s.summary     = "MintOrder - a plug and play order system"
  s.description = "A few lines of code ia all you need to setup a minimal order system"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
