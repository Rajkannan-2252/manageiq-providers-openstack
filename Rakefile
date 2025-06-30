<<<<<<< HEAD
#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('config/application', __dir__)
require File.expand_path('lib/tasks/evm_rake_helper', __dir__)

include Rake::DSL
Vmdb::Application.load_tasks

# Clear noisy and unusable tasks added by rspec-rails
if defined?(RSpec)
  Rake::Task.tasks.select { |t| t.name =~ /^spec(:)?/ }.each(&:clear)
end
=======
require 'bundler/setup'

begin
  require 'rspec/core/rake_task'

  APP_RAKEFILE = File.expand_path("spec/manageiq/Rakefile", __dir__)
  load 'rails/tasks/engine.rake'
  load 'rails/tasks/statistics.rake'
rescue LoadError
end

require 'bundler/gem_tasks'

FileList['lib/tasks_private/**/*.rake'].each { |r| load r }

task :default => :spec
>>>>>>> 2e1af6a196322ff27de854b562e170662232f025
