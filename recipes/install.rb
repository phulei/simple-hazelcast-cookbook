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

if node['hazelcast']['download_url'].nil?
  Chef::Log.warn('Hazelcast download url is not set. I am unable to ark it from nowhere :(')
elsif node['hazelcast']['checksum'].nil?
  Chef::Log.warn('Hazelcast checksum is not set. I will redownload it each run, thats is bad I think :(')
else
  ark 'hazelcast' do
    url node['hazelcast']['download_url']
    owner node['hazelcast']['user']
    group node['hazelcast']['group']
    version node['hazelcast']['version']
    checksum node['hazelcast']['checksum']

    prefix_root node['hazelcast']['prefix_home']
    prefix_home node['hazelcast']['prefix_home']
  end
end
