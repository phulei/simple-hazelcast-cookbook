# Description

This cookbook install Hazelcast in very basic manner.

# Download URL

Each time you're trying to download archive from site it has downloaded differently with checksum mismatch. That's why you have to mirror distributive somewhere, calculate checksum and provide this information to cookbook.

# Configuration

Modify `node['hazelcast']['java_opts']` to configure hazelcast. Provide your own template for this

# Requirements

## Platform:

* Debian

## Cookbooks:

* ark
* runit

# Attributes

* `node['hazelcast']['user']` -  Defaults to `hazelcast`.
* `node['hazelcast']['group']` -  Defaults to `hazelcast`.
* `node['hazelcast']['download_url']` -  Defaults to `nil`.
* `node['hazelcast']['checksum']` -  Defaults to `nil`.
* `node['hazelcast']['version']` -  Defaults to `3.4.2`.
* `node['hazelcast']['prefix_home']` -  Defaults to `/opt`.
* `node['hazelcast']['java_opts']` -  Defaults to `[ ... ]`.

# Recipes

* simple-hazelcast::configure
* simple-hazelcast::default
* simple-hazelcast::install
* simple-hazelcast::service_runit

# License and Maintainer

Maintainer:: Yauhen Artsiukhou (<yauhen_artsiukhou@epam.com>)

License:: apache 2
