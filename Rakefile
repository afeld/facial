# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "facial"
  gem.homepage = "http://github.com/afeld/facial"
  gem.license = "MIT"
  gem.summary = %Q{Simple library for face detection using OpenCV}
  # gem.description = %Q{TODO: longer description of your gem}
  gem.email = "aidan.feldman@gmail.com"
  gem.authors = ["Aidan Feldman"]
  gem.requirements << "opencv 2.4+"
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec
