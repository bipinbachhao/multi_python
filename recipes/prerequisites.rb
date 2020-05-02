#
# Cookbook:: multi_python
# Recipe:: prerequisites
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'build-essential'

case node['platform_family']
when 'debian'
  package %w(build-essential libsasl2-dev openssl libssl-dev libnss3-dev xz-utils libsqlite3-dev libbz2-dev libgdbm-dev tcl-dev tk-dev tcl tk libncursesw5-dev libreadline-gplv2-dev libc6-dev libffi-dev)
when 'amazon', 'fedora', 'rhel'
  package %w(libpcap-devel) unless node['platform_version'] > '8'
  package %w(openssl openssl-devel zlib-devel bzip2 bzip2-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel xz xz-libs xz-devel libffi-devel sqlite-devel expat-devel)
end
