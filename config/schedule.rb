set :output, "/home/deploy/backup/current/log/backup.log"

every 10.minutes do
  command "/home/deploy/backup/current/backup.sh"
end
