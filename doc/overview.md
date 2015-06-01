This cookbook install HazelCast in very basic manner.

# Download URL

Each time you're trying to download archive from site it has downloaded differently with checksum mismatch. That's why you have to mirror distributive somewhere, calculate checksum and provide this information to cookbook.

# Configuration

Modify `node['hazelcast']['java_opts']` to configure hazelcast. Provide your own template for this
