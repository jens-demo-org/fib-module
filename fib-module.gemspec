lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fib-module"
  spec.version       = 1.0.0
  spec.authors       = ["Bryan Clark", "Jeremy Epling"]
  spec.email         = ["clarkbw@github.com", "jeremyepling@github.com"]

  spec.summary       = %q{This is a fibonacci sequence function}
  spec.description   = %q{This is a fibonacci sequence function}
  spec.homepage      = "https://rubygems.pkg.github.com/pied-piper-inc/fib-module"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/pied-piper-inc/fib-module"
  spec.metadata["changelog_uri"] = "https://github.com/pied-piper-inc/fib-module#readme"
  spec.metadata["private_gem_server"] = "https://rubygems.pkg.github.com/pied-piper-inc"
  spec.metadata["github_repo"] = "ssh://github.com/pied-piper-inc/fib-module"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
