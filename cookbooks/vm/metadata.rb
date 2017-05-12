name 'vm'
maintainer 'Torben Knerr'
maintainer_email 'mail@tknerr.de'
license 'MIT'
description 'Installs/Configures the Etka Developer VM example'
long_description IO.read(File.join(File.dirname(__FILE__), '../../README.md'))
version '0.1.0'
issues_url 'https://github.com/tknerr/etka2017-developer-vm/issues'
source_url 'https://github.com/tknerr/etka2017-developer-vm'

chef_version '~> 12'

supports 'ubuntu'

depends 'apt', '6.0.1'
