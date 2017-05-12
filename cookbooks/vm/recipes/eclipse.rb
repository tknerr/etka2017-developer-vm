
#
# install eclipse
#

ark 'install eclipse' do
  name 'eclipse'
  version 'jee-neon-3'
  url 'http://ftp.heanet.ie/pub/eclipse/technology/epp/downloads/release/neon/3/eclipse-jee-neon-3-linux-gtk-x86_64.tar.gz'
  checksum '1c178265ae2a452698e358a4c0ebb4ae86f79edf49d0303d40bef6f539281c19'
  has_binaries ['eclipse']
end
