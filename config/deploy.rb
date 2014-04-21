set :stages, %w[local ri ga ct]
set :default_stage, "local"

require 'capistrano/ext/multistage'
require 'bundler/capistrano'
require 'whenever/capistrano'

set :application, "backup"
set :whenever_identifier, "backup"

set :repository, "git://github.com/mission-of-mercy/backup.git"
set :deploy_via, :remote_cache

set :scm, :git
set :user, "deploy"

set :deploy_to, "/home/deploy/#{application}"
set :use_sudo, false

after 'deploy:update_code' do
  { "settings" => "config/settings",
    "log"      => "log" }.
   each do |from, to|
     run "ln -nfs #{shared_path}/#{from} #{release_path}/#{to}"
   end
end

after "deploy", "deploy:cleanup"
