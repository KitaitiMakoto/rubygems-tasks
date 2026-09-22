# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'subdir/project/version'

Gem::Specification.new do |gem|
  gem.name          = "subdir-project"
  gem.version       = Subdir::Project::VERSION
  gem.authors       = ["Postmodern"]
  gem.email         = ["postmodern.mod3@gmail.com"]
  gem.description   = %q{An example of a Subdirectory project}
  gem.summary       = %q{Example Subdir project}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
