Gem::Specification.new do |s| 
  s.name = 'with-or-without-www'
  s.version = "0.0.1"
  s.platform = Gem::Platform::RUBY
  s.summary = "A Rack middleware that systematically removes or add 'www' from your host name."
  s.description = "A Rack middleware that systematically removes or add 'www' from your host name. So that you have only one host which is better for SEO."
  s.files = `git ls-files`.split("\n").sort
  #s.test_files = ['spec.rb']
  s.require_path = '.'
  s.author = "Mickael Riga"
  s.email = "mig@mypeplum.com"
  s.homepage = "http://github.com/mig-hub/with-or-without-www"
end