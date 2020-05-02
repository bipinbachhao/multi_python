default['multi_python']['version']['2'] = '2.7.18'
default['multi_python']['version']['3'] = '3.8.2'

node['multi_python']['version'].each do |version, release|
  default['multi_python']['download_url'][version] = "https://www.python.org/ftp/python/#{release}/Python-#{release}.tar.xz"
end

default['multi_python']['install_location'] = '/opt/local/python'
