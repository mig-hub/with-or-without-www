Gem::Specification.new do |s| 
  s.name = 'with-or-without-www'
  s.version = "0.0.2"
  s.platform = Gem::Platform::RUBY
  s.summary = "For Heroku users who want to systematically remove or add `www` from their host names. This rack middleware is for them. Go in peace."
  s.description = "For Heroku users who want to systematically remove or add `www` from their host names. So that you have only one host which is better for SEO."
  s.files = `git ls-files`.split("\n").sort
  #s.test_files = ['spec.rb']
  s.require_path = '.'
  s.author = "Mickael Riga"
  s.email = "mig@mypeplum.com"
  s.homepage = "http://github.com/mig-hub/with-or-without-www"
end