# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "cloudflare-purge-client"
  spec.version = '1.0.0'
  spec.authors = ["ryo.naruse"]
  spec.email = ["13917558+ryy@users.noreply.github.com"]

  spec.summary = "Cloudflare purge client"
  spec.description = "This gem that only provides cloudflare purge."
  spec.homepage = "https://github.com/ryy/cloudflare-purge-client"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ryy/cloudflare-purge-client"
  spec.metadata["changelog_uri"] = "https://github.com/ryy/cloudflare-purge-client/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rake', "~> 13.0"
  spec.add_development_dependency 'rspec', "~> 3.0"
  spec.add_development_dependency 'rubocop', "~> 1.21"
end
