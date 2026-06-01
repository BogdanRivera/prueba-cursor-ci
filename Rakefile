# Dummy Rakefile to satisfy rake tasks
require 'rake'

# Load dummy tasks from lib/tasks
Dir.glob('lib/tasks/*.rake').each { |r| load r }

task default: :test
task :test do
  puts "Rake test task executed (dummy)"
end