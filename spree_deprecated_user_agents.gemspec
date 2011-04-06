Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_deprecated_user_agents'
  s.version     = '0.1.0'
  s.summary     = ''
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Christopher Maujean'
  s.email             = 'cmaujean@gmail.com'
  s.rubyforge_project = 'spree_deprecated_user_agents'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.50.0')
end
