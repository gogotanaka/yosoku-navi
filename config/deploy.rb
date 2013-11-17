require "bundler/capistrano"

load "config/recipes/base"
load "config/recipes/nginx"
load "config/recipes/unicorn"
load "config/recipes/postgresql"
load "config/recipes/nodejs"
load "config/recipes/rbenv"
load "config/recipes/check"

role :whenever, "106.187.46.171"
server "106.187.46.171", :web, :app, :db, primary: true


set :whenever_roles, "whenever"
set :whenever_command, "bundle exec whenever"
require 'whenever/capistrano'


set :application, "yosoku_navi"
set :user, "deployer"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:gogotanaka/yosoku-navi.git"
set :branch, "master"
set :shared_children, shared_children + %w{public/uploads}

default_run_options[:pty] = true
ssh_options[:forward_agent] = true