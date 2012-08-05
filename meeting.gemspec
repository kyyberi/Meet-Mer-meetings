# -*- encoding: utf-8 -*-
require File.expand_path('../lib/meeting/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jarkko (kyyberi) Moilanen"]
  gem.email         = ["jarkko.moilanen@want3d.fi"]
  gem.description   = %q{Meetings gem for MeetMer dashboard}
  gem.summary       = %q{Meetings gem for MeetMer dashboard, should be used only as part of MeetMer Core}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
#  gem.files = Dir.glob("{app,config,lib}/**/**/**/*")
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "meetmer-meeting"
#  gem.require_paths = ["lib, app"]
  gem.version       = Meeting::VERSION
 gem.require_path = 'lib'
# gem.require_paths << 'app'
end

