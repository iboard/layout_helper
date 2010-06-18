require "bundler"
Bundler.setup

#require "rspec/core/rake_task"
#Rspec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("layout_helper.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["layout_helper.gemspec"] do
  system "gem build layout_helper.gemspec"
  system "gem install layout_helper-#{LayoutHelper::VERSION}.gem"
end
