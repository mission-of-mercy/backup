set :output, File.join(Dir.pwd, 'log/backup.log')

every 10.minutes do
  command File.join(Dir.pwd, 'bin/backup')
end
