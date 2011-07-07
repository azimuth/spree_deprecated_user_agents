Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'spree_deprecated_user_agents'
  s.version      = '0.2.0'
  s.summary      = ''
  s.description  = 'Deprecate IE6 (and eventually other ancient browsers)'

  s.authors      = ['Christopher Maujean','Day Waterbury']
  s.email        = ['cmaujean@gmail.com','day@azimuthonline.com']

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.60.1')
end
