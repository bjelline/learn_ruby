# frozen_string_literal: true

# This Rakefile has all the right settings to run the tests inside each lab
gem 'rspec'
require 'rspec/core/rake_task'
require 'shellwords'

task default: :spec

desc 'run tests for this lab'
RSpec::Core::RakeTask.new do |task|
  lab = Rake.application.original_dir.shellescape
  task.pattern = "#{lab}/*_spec.rb"
  task.rspec_opts = ["-I#{lab}", "-I#{lab}/solution", '-f documentation', '-r ./rspec_config']
  task.verbose = false
end
