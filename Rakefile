require 'rake'

task :default => [:build, :deploy]

task :build do
  sh "jekyll"
end

desc 'Build and preview site locally'
task :preview do
  sh "jekyll --auto --server"
end

desc 'deploy site'
task :deploy do
  sh "git push origin master && git push heroku master"
end

desc 'create new post'
task :post, :title do |t, args|
  file_name = "_posts/#{Time.now.strftime("%Y-%m-%d")}-#{args[:title].gsub(/\s/,'-').downcase}.md"
  sh "touch '#{file_name}'"
  File.open(file_name, 'w') do |f|
    f.puts "---"
    f.puts "layout: post"
    f.puts "title: #{args[:title]}"
    f.puts "---"
  end
end
