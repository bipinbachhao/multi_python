name 'multi_python'
maintainer 'Bipin Bachhao'
maintainer_email 'bipinbachhao@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures Multiple versions of Python'
long_description 'Installs/Configures performs installations of Multiple versions of Python using tar_package'
version '0.1.3'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'build-essential'
depends 'tar'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/multi_python/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/multi_python'
