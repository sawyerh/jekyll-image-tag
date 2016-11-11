# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'jekyll/image-tag/version'

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

  spec.files         = `git ls-files -z lib/`.split("\u0000")
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'jekyll'
  spec.add_runtime_dependency 'mini_magick'
end