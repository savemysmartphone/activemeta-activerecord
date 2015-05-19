Gem::Specification.new do |s|
  s.name         = 'activemeta-activerecord'
  s.version      = '0.0.1'
  s.platform     = Gem::Platform::RUBY
  s.licenses     = ['MIT']
  s.summary      = 'ActiveMeta rules for ActiveRecord'
  s.homepage     = 'https://github.com/savemysmartphone/activemeta-activerecord'
  s.description  = 'ActiveMeta rules for ActiveRecord validations'
  s.authors      = ["Arnaud 'red' Rouyer"]

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
  s.required_ruby_version = '>= 2.0.0'

  s.add_runtime_dependency 'activemeta'
end
