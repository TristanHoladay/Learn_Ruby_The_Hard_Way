lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ex46"
  spec.version       = '1.0'
  spec.authors       = ["Tristan Holaday"]
  spec.email         = ["tholaday777@gmail.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/ex46.rb']
  spec.executables   = ['ex46']
  spec.test_files    = ['tests/test_ex46.rb']
  spec.require_paths = ["lib"]
end
