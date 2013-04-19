
desc 'Sync databases'
task :sync do
  system "~/.rbenv/versions/1.9.2-p320/bin/ruby /usr/bin/heroku db:push --confirm flashcards-uri"
end

task :test do
  puts `~/.rbenv/versions/1.9.2-p320/bin/ruby -v`
  puts system('~/.rbenv/versions/1.9.2-p320/bin/ruby -v')  
  puts exec('~/.rbenv/versions/1.9.2-p320/bin/ruby -v')  
end