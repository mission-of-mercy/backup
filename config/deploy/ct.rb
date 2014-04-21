require './lib/capistrano_local_overrides'

locally_overridable "momma:ct" do
  server "momma.ct", :app, :web, :db, :primary => true
end
