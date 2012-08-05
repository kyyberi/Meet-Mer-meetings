# -*- encoding: utf-8 -*-
require File.expand_path('../lib/meeting/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jarkko (kyyberi) Moilanen"]
  gem.email         = ["jarkko.moilanen@want3d.fi"]
  gem.description   = %q{Meetings gem for MeetMer dashboard}
  gem.summary       = %q{Meetings gem for MeetMer dashboard}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "meeting"
  gem.require_paths = ["lib"]
  gem.version       = Meeting::VERSION
end

