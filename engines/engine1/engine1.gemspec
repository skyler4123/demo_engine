require_relative "lib/engine1/version"

Gem::Specification.new do |spec|
  spec.name        = "engine1"
  spec.version     = Engine1::VERSION
  spec.authors     = [""]
  spec.email       = ["pkphung2001@gmail.com"]
  spec.homepage    = "http://mygemserver.com"
  spec.summary     = "Summary of Engine1."
  spec.description = "Description of Engine1."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://mygemserver.com"
  spec.metadata["changelog_uri"] = "http://mygemserver.com"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.1"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
end
