default['hazelcast']['user'] = 'hazelcast'
default['hazelcast']['group'] = 'hazelcast'

# There are issues with downloading hazelcast directly from site
# You have to download distro and point this attribute with actual link
#default['hazelcast']['download_url'] = 'http://mymirror/hazelcast-3.4.2.tar.gz'
#default['hazelcast']['checksum'] = 'unkown'

default['hazelcast']['download_url'] = nil
default['hazelcast']['checksum'] = nil
default['hazelcast']['version'] = '3.4.2'

default['hazelcast']['prefix_home'] = '/opt'
default['hazelcast']['java_opts'] = []
