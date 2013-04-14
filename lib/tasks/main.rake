
desc 'Sync databases'
task :sync do
  `~/.rbenv/versions/1.9.2-p320/bin/ruby /usr/bin/heroku db:push --confirm flashcards-uri`
end