set :stage, :production

server '95.213.195.183', user: 'deploy', roles: %w{web app}
