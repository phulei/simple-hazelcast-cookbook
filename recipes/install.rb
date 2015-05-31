user 'hazelcast user' do
  username node['hazelcast']['user']
  comment 'Hazelcast User'
  home "#{node['hazelcast']['prefix_home']}/hazelcast"
  shell '/bin/bash'
  supports manage_home: false
  action :create
  system true
end

group 'hazelcast group' do
  group_name node['hazelcast']['user']
  action :create
  system true
end

dist_path = ::File.join(Chef::Config[:file_cache_path], "hazelcast-#{node['hazelcast']['version']}.tar.gz")

remote_file dist_path do
  source node['hazelcast']['download_url']

  backup false
  checksum node['hazelcast']['checksum']
  owner node['hazelcast']['user']
  group node['hazelcast']['group']
end

ark 'hazelcast' do
  url dist_path
  owner node['hazelcast']['user']
  group node['hazelcast']['group']
  version node['hazelcast']['version']
  checksum node['hazelcast']['checksum']

  prefix_root node['hazelcast']['prefix_home']
  prefix_home node['hazelcast']['prefix_home']
end
