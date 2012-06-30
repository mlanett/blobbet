# -*- encoding: utf-8 -*-
require File.expand_path("../lib/blobbet/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mark Lanett"]
  gem.email         = ["mark.lanett@gmail.com"]
  gem.description   = %q{Store attributes in a blob in ActiveRecord models}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "blobbet"
  gem.require_paths = ["lib"]
  gem.version       = Blobbet::VERSION

  gem.add_dependency "activerecord"
end
