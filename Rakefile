# frozen_string_literal: true

require 'rake'

require 'rubocop/rake_task'
require 'bundler'

task :deps_install do
    sh 'bundle install
    mkdir .vagrant_install
    cd .vagrant_install
    wget https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_linux_amd64.zip
    unzip *.zip
    cd ..
    .vagrant_install/vagrant plugin install vagrant-vbguest'
end

task :vagrant_destroy do
    sh '.vagrant_install/vagrant destroy -f'
end

task :vagrant_up do
    sh '.vagrant_install/vagrant up'
end

task :vagrant_up_provision do
    sh '.vagrant_install/vagrant up --provision'
end

task :serve do
    sh 'bundle exec rackup --host 0.0.0.0 --port 9292'
end

RuboCop::RakeTask.new
