# CURRENT FILE :: meeting.gemspec
require File.expand_path("../lib/meeting/version", __FILE__)

# Provide a simple gemspec so that you can easily use your
# Enginex project in your Rails apps through Git.
Gem::Specification.new do |s|
  s.name                      = "meetmer_meeting"
  s.version                   = Meeting::VERSION
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = [ "Jarkko Moilanen" ]
  s.email                     = [ "jarkko.moilanen@ossoil.com" ]
  s.homepage                  = "http://ossoil.com"
  s.description               = "A simple Rails 3 engine gem that adds meetings pages to MeetMer dashboard."
  s.summary                   = "meeting-#{s.version}"

  s.rubyforge_project         = "meetmer_meeting"
  s.required_rubygems_version = "> 1.3.6"

  s.add_dependency "activesupport" , ">= 3.0.7"
  s.add_dependency "rails"         , ">= 3.0.7"
  s.add_dependency "haml"
  

#  s.files = `git ls-files`.split("\n")
  s.files = Dir["{app,config,lib}/**/**/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
#  s.require_path = 'lib'
#  s.require_paths << 'app'
end
