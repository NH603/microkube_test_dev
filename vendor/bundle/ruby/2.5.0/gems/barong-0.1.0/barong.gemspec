
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "barong/version"

Gem::Specification.new do |spec|
  spec.name          = "barong"
  spec.version       = Barong::VERSION
  spec.authors       = ["OpenWare"]
  spec.email         = ["lbellet@openware.com"]

  spec.summary       = %q{Barong gem container core barong models}
  spec.description   = %q{Ability to embed barong into a Rails application to customize it}
  spec.homepage      = "https://www.rubykube.io"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
