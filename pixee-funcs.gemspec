
require "./lib/pixee/funcs/version"

Gem::Specification.new do |spec|
  spec.name          = "pixee-funcs"
  spec.version       = Pixee::Funcs::VERSION
  spec.authors       = ["Justin Spencer"]
  spec.email         = ["jspencer.jms@gmail.com"]

  spec.summary       = 'Some useful global functions'
  spec.description   = "A few useful global functions that don't come with Ruby itself."
  spec.homepage      = 'https://github.com/jamsupreme-libs/pixee-funcs'
  spec.license       = "MIT"

  spec.files = Dir['{lib}/**/*', 'Rakefile', 'README.md']
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'rubocop'
end
