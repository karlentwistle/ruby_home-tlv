
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_home/tlv/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby_home-tlv'
  spec.version       = RubyHome::TLV::VERSION
  spec.authors       = ['Karl Entwistle']
  spec.email         = ['karl@entwistle.com']

  spec.summary       = 'encode / decode TRV HAP'
  spec.description   = 'encode / decode TRV HAP'
  spec.homepage      = 'https://github.com/karlentwistle/ruby_home-tlv'

  spec.files         = Dir.glob('lib/**/*')
  spec.test_files    = Dir.glob('spec/*')
  spec.require_paths = ['lib']

  spec.add_dependency 'bindata', '~> 2.4', '>= 2.4.3'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug', '~> 11.0'
end
