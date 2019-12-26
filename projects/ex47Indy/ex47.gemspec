lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["Tristan Holaday"]
  spec.email         = ["tholaday777@gmail.com"]
  spec.summary       = %q{A Indiana Jones Adventure Game}
  spec.description   = %q{Move from room to room, puzzle to puzzle, fight to fight, to find the secret tomb of Pharoah Ramen.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/ex47Engine.rb', 'lib/ex47/*.rb']
  spec.executables   = ['ex47']
  spec.test_files    = ['tests/test_ex47.rb']
  spec.require_paths = ["lib"]
end
