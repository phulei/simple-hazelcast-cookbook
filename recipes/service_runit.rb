include_recipe 'runit'

runit_service 'hazelcast' do
  default_logger true
  options(
    'user' => node['hazelcast']['user'],
    'home' => ::File.join(node['hazelcast']['prefix_home'], 'hazelcast'),
    'java_opts' => node['hazelcast']['java_opts']
  )
  subscribes :restart, 'ark[hazelcast]'

  action [:enable, :start]
end
