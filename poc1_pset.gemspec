# -*- encoding: utf-8 -*-
require File.expand_path('../lib/poc1_pset/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Greg Belote"]
  gem.email         = ["etoleb@gmail.com"]
  gem.description   = %q{Checker gem for pset1}
  gem.summary       = %q{Checker gem for pset1}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "poc1_pset"
  gem.require_paths = ["lib"]
  gem.version       = Poc1Pset::VERSION

  #gem.add_dependency "rspec"
end
