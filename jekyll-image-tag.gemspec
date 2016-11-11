# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'jekyll-image-tag/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-image-tag'
  spec.version       = Jekyll::ImageTag::VERSION
  spec.authors       = ['Rob Wierzbowski', 'Sawyer Hollenshead']
  spec.summary       = 'Quick and easy image resizing'
  spec.homepage      = 'https://github.com/sawyerh/jekyll-image-tag'
  spec.licenses      = ['BSD-NEW']
  spec.description   = %q{
    Jekyll Image Tag is a full featured liquid tag for images in the Jekyll static site generator.
    Store image presets, add classes, alt text, and any other attribute to an image's HTML, and
    automatically create resized images from a tag argument or a little YAML configuration.
  }

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|examples)/}) }
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'jekyll', ['>= 1.0', '<= 4.0']
  spec.add_runtime_dependency 'mini_magick', ['>= 3.6', '<= 5.0']
end