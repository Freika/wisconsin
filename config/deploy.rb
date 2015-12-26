set :application, 'wisconsin'
set :repo_url, 'git@github.com:Freika/wisconsin.git'

set :deploy_to, '/home/deploy/wisconsin'

set :linked_files, %w{config/database.yml config/secrets.yml config/application.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :whenever_environment, defer { stage }
# set :whenever_identifier, defer { "#{application}_#{stage}" }
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
set :whenever_command, "bundle exec whenever"
set :whenever_variables, defer { "'environment=#{rails_env}&current_path=#{current_path}'" }
require 'whenever/capistrano'


# set :crono_pid, -> { File.join(shared_path, 'tmp', 'pids', 'crono.pid') }
# set :crono_env, -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }
# set :crono_log, -> { File.join(shared_path, 'log', 'crono.log') }
# set :crono_role, -> { :app }

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end
