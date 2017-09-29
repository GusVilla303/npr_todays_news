require "bundler/gem_tasks"
require "rspec/core/rake_task"

require_relative "./config/environment"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end
