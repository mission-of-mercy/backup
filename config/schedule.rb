set :output, "/home/deploy/backup/log/backup.log"

every 10.minutes do
  command "/home/deploy/backup/backup.sh"
end
