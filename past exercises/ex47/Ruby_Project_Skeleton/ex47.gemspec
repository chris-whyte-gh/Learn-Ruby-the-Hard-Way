# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name = "NAME"
    spec.version = "1.0"
    spec.authors = "Chris Whyte"
    spec.email = "christopher.r.whyte@gmail.com"
    spec.summary = %q{Exercise 46 from LRTHW}
    spec.description = %q{All the files and steps from https://learnrubythehardway.org/book/ex46.html}
    spec.homepage = "chriswhyte.club"
    spec.license = "MIT"

    spec.files = ['lib/NAME.rb']
    spec.executables = ['bin/NAME']
    spec.test_files = ['tests/test_NAME.rb']
    spec.require_paths = ["lib"]
end