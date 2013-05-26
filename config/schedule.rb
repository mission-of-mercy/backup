working_dir = File.join(Dir.pwd, 'log/backup.log')
set :output, working_dir

every 10.minutes do
  command File.join(working_dir, "bin/backup")
end
