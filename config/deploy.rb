set :application, 'wisconsin'
set :repo_url, 'git@github.com:Freika/wisconsin.git'

set :deploy_to, '/home/deploy/wisconsin'

set :linked_files, %w{config/database.yml config/secrets.yml config/application.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

require 'whenever/capistrano'
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
# set :whenever_command, 'bundle exec whenever'
set :whenever_command, 'RAILS_ENV=prodiction rvm use 2.20 do bundle exec whenever'
set :whenever_environment, defer { rails_env }


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
