# Description

This cookbook install HazelCast in very basic manner.
Modify java\_opts to configure hazelcast


# WARNING #

This cookbook is not ready for use. Under development

# Requirements

## Platform:

* Debian

## Cookbooks:

* ark
* runit

# Attributes

* `node['hazelcast']['user']` -  Defaults to `hazelcast`.
* `node['hazelcast']['group']` -  Defaults to `hazelcast`.
* `node['hazelcast']['download_url']` -  Defaults to `http://download.hazelcast.com/download.jsp?version=hazelcast-3.4.2&p=109157188`.
* `node['hazelcast']['checksum']` -  Defaults to `6138eeeeb61bdcf1d6c174fe6c2e6689956eaf0b84401c8c28bc53e9848ef068`.
* `node['hazelcast']['version']` -  Defaults to `3.4.2`.
* `node['hazelcast']['prefix_home']` -  Defaults to `/opt`.
* `node['hazelcast']['java_opts']` -  Defaults to `[ ... ]`.

# Recipes

* simple-hazelcast::configure
* simple-hazelcast::default
* simple-hazelcast::install
* simple-hazelcast::service\_runit

# License and Maintainer

Maintainer:: Yauhen Artsiukhou (<yauhen_artsiukhou@epam.com>)

License:: apache 2
