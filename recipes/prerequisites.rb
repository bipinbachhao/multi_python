#
# Cookbook:: multi_python
# Recipe:: prerequisites
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'build-essential'

case node['platform_family']
  when 'debian'
    package %w[build-essential libsasl2-dev libssl-dev libnss3-dev xz-utils libreadline6-dev libsqlite3-dev libbz2-dev libgdbm-dev tcl-dev tk-dev tcl tk libncursesw5-dev libreadline-gplv2-dev]
  when 'amazon', 'fedora', 'rhel'
    package %w[openssl openssl-devel zlib-devel bzip2 bzip2-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel]
end
