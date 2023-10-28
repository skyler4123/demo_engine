require_relative "lib/blorgh/version"

Gem::Specification.new do |spec|
  spec.name        = "blorgh"
  spec.version     = Blorgh::VERSION
  spec.authors     = [""]
  spec.email       = ["pkphung2001@gmail.com"]
  spec.homepage    = "https://rubygems.org/gems/codeclimate-engine-rb"
  spec.summary     = "JSON issue formatter for the Code Climate engine"
  spec.description = "JSON issue formatter for the Code Climate engine"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andyw8/codeclimate-engine-rb"
  spec.metadata["changelog_uri"] = "https://www.rubydoc.info/gems/codeclimate-engine-rb/0.4.2"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.1"
end
