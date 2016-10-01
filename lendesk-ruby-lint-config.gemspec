# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lendesk_ruby_lint_config/version'

Gem::Specification.new do |spec|
  spec.name          = 'lendesk-ruby-lint-config'
  spec.version       = LendeskRubyLintConfig::VERSION
  spec.authors       = ['matrinox']
  spec.email         = ['geoff.lee@lendesk.com']

  spec.summary       = 'Shared ruby lint config for lendesk'
  spec.description   = 'Shared ruby lint config for lendesk'
  spec.homepage      = 'https://github.com/matrinox/lendesk-ruby-lint-config'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
end
