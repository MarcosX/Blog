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
