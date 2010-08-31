require 'bundler'
Bundler::GemHelper.install_tasks

task :convert do
  
  Dir["lib/data/*.jpg"].each do |file|
    `jp2a --color #{file} --output=#{file}.txt`
  end
  
end