#
# Cookbook:: multi_python
# Recipe:: python_install
#
# Copyright:: 2018, The Authors, All Rights Reserved.
install_location = node['multi_python']['install_location']
source_dir = "#{install_location}/src"
prefix = {}

node['multi_python']['version'].each do |version, release|
  prefix[version] = "#{install_location}/python-#{release}"
end

([install_location, source_dir] + prefix.values).each do |dir|
  directory dir do
    owner 'root'
    group 'root'
    mode '0755'
    recursive true
    action :create
  end
end

node['multi_python']['download_url'].each do |version, release|
  tar_package release do
    source_directory source_dir
    prefix prefix[version]
    configure_flags ['--enable-shared',
                     '--enable-optimizations',
                     '--enable-unicode=ucs4',
                     "LDFLAG=\"-Wl,-rpath=#{prefix[version]}/lib\""]
    creates "#{prefix[version]}/bin/python#{version}"
  end
end
